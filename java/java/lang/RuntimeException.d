module java.lang.RuntimeException;

import java.lang.String;

public class RuntimeException : Exception {
    this( String file, long line, String msg = null){
        super( msg, file, cast(size_t) line );
    }
    this( String e = null){
        super(e);
    }
    this( Exception e ){
        super(e.toString);
        next = e;
    }
    public String getMessage(){
        return msg;
    }
    public Throwable getCause() {
        return next; // D2 has next of type Throwable
    }
}