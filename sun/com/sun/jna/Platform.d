module com.sun.jna.Platform;

public class Platform {
	public static bool isWindows()
	{
		version(Windows)
			return true;
		else
			return false;
	}

	public static bool isMac()
	{
		version(OSX)
			return true;
		else
			return false;
	}

	public static bool isLinux()
	{
		version(linux)
			return true;
		else
			return false;
	}

	public static bool isSolaris()
	{
		version(Solaris)
			return true;
		else
			return false;
	}

	public static bool is64Bit()
	{
		version(X86_64)
			return true;
		else
			return false;
	}
}