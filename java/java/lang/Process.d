module java.lang.Process;

import java.io.InputStream;
import java.io.OutputStream;

public interface Process
{
	OutputStream getOutputStream();
	InputStream getInputStream();
	InputStream getErrorStream();
	int waitFor();
	int exitValue();
	void destroy();
}