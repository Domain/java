module org.slf4j.LoggerFactory;

import std.traits;

import org.slf4j.Logger;

public final class LoggerFactory {
    private Logger[string] loggers;

    private this() {
        
    }

    private static LoggerFactory _instance;

    public static Logger getLogger(alias Class)() {
        if (_instance is null)
            _instance = new LoggerFactory();
        auto name = fullyQualifiedName!Class;
        if (name !in _instance.loggers)
            _instance.loggers[name] = new Logger(name);
        return _instance.loggers[name];
    }
}