/// Generate by tools
module java.io.IOException;

import java.lang.util;
import java.lang.String;

version(Tango){
    static import tango.core.Exception;
    public alias tango.core.Exception.IOException IOException;
}
else {
    static import core.exception;

    class IOException : Exception {
        this( String e = null ){
            super(e);
        }
    }
}
