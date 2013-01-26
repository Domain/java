module java.lang.UnsupportedOperationException;

import java.lang.String;
import java.lang.RuntimeException;

class UnsupportedOperationException : RuntimeException {
    this( String e = null){
        super(e);
    }
    this( Exception e ){
        super(e.toString);
    }
}