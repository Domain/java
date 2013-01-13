module org.slf4j.Logger;

import std.array;

import java.lang.String;

import org.slf4j.log;

/**
* The org.slf4j.Logger interface is the main user entry point of SLF4J API.
* It is expected that logging takes place through concrete implementations
* of this interface.
* <p/>
* <h3>Typical usage pattern:</h3>
* <pre>
* import org.slf4j.Logger;
* import org.slf4j.LoggerFactory;
*
* public class Wombat {
*
*   <span style="color:green">final static Logger logger = LoggerFactory.getLogger(Wombat._class);</span>
*   Integer t;
*   Integer oldT;
*
*   public void setTemperature(Integer temperature) {
*     oldT = t;
*     t = temperature;
*     <span style="color:green">logger.debug("Temperature set to {}. Old temperature was {}.", t, oldT);</span>
*     if(temperature.intValue() > 50) {
*       <span style="color:green">logger.info("Temperature has risen above 50 degrees.");</span>
*     }
*   }
* }
* </pre>
*
* @author Ceki G&uuml;lc&uuml;
*/
public class Logger {


	/**
	* Case insensitive String constant used to retrieve the name of the root logger.
	*
	* @since 1.3
	*/
	const public String ROOT_LOGGER_NAME = "ROOT";

	private Appender!(string) writer;
	private String _name;

	public this(String name)
	{
		_name = name;
	}

	/**
	* Return the name of this <code>Logger</code> instance.
	*/
	public String getName()
	{
		return _name;
	}

	/**
	* Is the logger instance enabled for the TRACE level?
	*
	* @return True if this Logger is enabled for the TRACE level,
	*         false otherwise.
	* @since 1.4
	*/
	public bool isTraceEnabled()
	{
		return info.willLog;
	}

	/**
	* Log a message at the TRACE level.
	*
	* @param msg the message string to be logged
	* @since 1.4
	*/
	public void trace(string file = __FILE__, int line = __LINE__, T...)(lazy T args)
	{
		info.write!(file, line)(args);
	}

	/**
	* Log a message at the TRACE level.
	*
	* @param msg the message string to be logged
	* @since 1.4
	*/
	public void trace(string file = __FILE__, int line = __LINE__, T...)(lazy string fmt, lazy T args)
	{
		info.writef!(file, line)(fmt, args);
	}

	/**
	* Is the logger instance enabled for the DEBUG level?
	*
	* @return True if this Logger is enabled for the DEBUG level,
	*         false otherwise.
	*/
	public bool isDebugEnabled()
	{
		return info.willLog;
	}


	/**
	* Log a message at the DEBUG level.
	*
	* @param msg the message string to be logged
	*/
	public void _debug(string file = __FILE__, int line = __LINE__, T...)(lazy T args)
	{
		info.write!(file, line)(args);
	}


	/**
	* Log a message at the DEBUG level according to the specified format
	* and argument.
	* <p/>
	* <p>This form avoids superfluous object creation when the logger
	* is disabled for the DEBUG level. </p>
	*
	* @param format the format string
	* @param arg    the argument
	*/
	public void _debug(string file = __FILE__, int line = __LINE__, T...)(lazy string fmt, lazy T args)
	{
		info.writef!(file, line)(fmt, args);
	}


	/**
	* Is the logger instance enabled for the INFO level?
	*
	* @return True if this Logger is enabled for the INFO level,
	*         false otherwise.
	*/
	public bool isInfoEnabled()
	{
		return info.willLog;
	}


	/**
	* Log a message at the INFO level.
	*
	* @param msg the message string to be logged
	*/
	public void info(string file = __FILE__, int line = __LINE__, T...)(lazy T args)
	{
		info.write!(file, line)(args);
	}



	/**
	* Log a message at the INFO level according to the specified format
	* and argument.
	* <p/>
	* <p>This form avoids superfluous object creation when the logger
	* is disabled for the INFO level. </p>
	*
	* @param format the format string
	* @param arg    the argument
	*/
	public void info(string file = __FILE__, int line = __LINE__, T...)(lazy string fmt, lazy T args)
	{
		info.writef!(file, line)(fmt, args);
	}


	/**
	* Is the logger instance enabled for the WARN level?
	*
	* @return True if this Logger is enabled for the WARN level,
	*         false otherwise.
	*/
	public bool isWarnEnabled()
	{
		return warning.willLog;
	}

	/**
	* Log a message at the WARN level.
	*
	* @param msg the message string to be logged
	*/
	public void warn(string file = __FILE__, int line = __LINE__, T...)(lazy T args)
	{
		warning.write!(file, line)(args);
	}

	/**
	* Log a message at the WARN level according to the specified format
	* and argument.
	* <p/>
	* <p>This form avoids superfluous object creation when the logger
	* is disabled for the WARN level. </p>
	*
	* @param format the format string
	* @param arg    the argument
	*/
	public void warn(string file = __FILE__, int line = __LINE__, T...)(lazy string fmt, lazy T args)
	{
		warning.writef!(file, line)(fmt, args);
	}


	/**
	* Is the logger instance enabled for the ERROR level?
	*
	* @return True if this Logger is enabled for the ERROR level,
	*         false otherwise.
	*/
	public bool isErrorEnabled()
	{
		return error.willLog;
	}

	/**
	* Log a message at the ERROR level.
	*
	* @param msg the message string to be logged
	*/
	public void error(string file = __FILE__, int line = __LINE__, T...)(lazy T args)
	{
		error.write!(file, line)(args);
	}

	/**
	* Log a message at the ERROR level according to the specified format
	* and argument.
	* <p/>
	* <p>This form avoids superfluous object creation when the logger
	* is disabled for the ERROR level. </p>
	*
	* @param format the format string
	* @param arg    the argument
	*/
	public void error(string file = __FILE__, int line = __LINE__, T...)(lazy string fmt, lazy T args)
	{
		error.writef!(file, line)(fmt, args);
	}
}
