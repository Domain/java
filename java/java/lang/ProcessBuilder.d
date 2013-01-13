module java.lang.ProcessBuilder;

import java.io.File;
import java.lang.String;
import java.lang.exceptions;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.lang.Process;

public final class ProcessBuilder
{
	private List/*<String>*/ command;
	private File directory;
	private Map/*<String, String>*/ environment;
	private bool redirectErrorStream;

	public this(List/*<String>*/ paramList)
	{
		if (paramList is null)
			throw new NullPointerException();
		this.command = paramList;
	}

	public this(String[] paramArrayOfString)
	{
		this.command = new ArrayList(paramArrayOfString.length);
		foreach (String str ; paramArrayOfString)
			this.command.add(str);
	}

	public ProcessBuilder command(List/*<String>*/ paramList)
	{
		if (paramList is null)
			throw new NullPointerException();
		this.command = paramList;
		return this;
	}

	public ProcessBuilder command(String[] paramArrayOfString)
	{
		this.command = new ArrayList(paramArrayOfString.length);
		foreach (String str ; paramArrayOfString)
			this.command.add(str);
		return this;
	}

	public List/*<String>*/ command()
	{
		return this.command;
	}

	public Map/*<String, String>*/ environment()
	{
		SecurityManager localSecurityManager = System.getSecurityManager();
		if (localSecurityManager !is null) {
			localSecurityManager.checkPermission(new RuntimePermission("getenv.*"));
		}
		if (this.environment is null) {
			this.environment = ProcessEnvironment.environment();
		}
		assert (this.environment !is null);

		return this.environment;
	}

	ProcessBuilder environment(String[] paramArrayOfString)
	{
		assert (this.environment is null);
		if (paramArrayOfString !is null) {
			this.environment = ProcessEnvironment.emptyEnvironment(paramArrayOfString.length);
			assert (this.environment !is null);

			foreach (String str ; paramArrayOfString)
			{
				if (str.indexOf(0) != -1) {
					str = str.replaceFirst("", "");
				}
				int k = str.indexOf('=', 1);

				if (k != -1) {
					this.environment.put(str.substring(0, k), str.substring(k + 1));
				}
			}
		}
		return this;
	}

	public File directory()
	{
		return this.directory;
	}

	public ProcessBuilder directory(File paramFile)
	{
		this.directory = paramFile;
		return this;
	}

	public bool redirectErrorStream()
	{
		return this.redirectErrorStream;
	}

	public ProcessBuilder redirectErrorStream(bool paramBoolean)
	{
		this.redirectErrorStream = paramBoolean;
		return this;
	}

	public Process start()
	{
		String[] arrayOfString = cast(String[])this.command.toArray(new String[this.command.size()]);
		arrayOfString = cast(String[])arrayOfString.clone();
		foreach (Object localObject2 ; arrayOfString) {
			if (localObject2 is null)
				throw new NullPointerException();
		}
		String name = arrayOfString[0];

		SecurityManager localSecurityManager = System.getSecurityManager();
		if (localSecurityManager !is null) {
			localSecurityManager.checkExec(name);
		}
		String str = this.directory is null ? null : this.directory.toString();
		try
		{
			return ProcessImpl.start(arrayOfString, this.environment, str, this.redirectErrorStream);
		}
		catch (IOException localIOException)
		{
			if (str is null) 
				tmpTernaryOp = ""; 
			throw new IOException("Cannot run program \"" ~ name ~ "\"" ~ (new StringBuilder()).append(" (in directory \"").append(str).append("\")").toString() ~ ": " ~ localIOException.getMessage(), localIOException);
		}
	}
}