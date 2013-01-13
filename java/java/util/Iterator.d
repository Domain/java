module java.util.Iterator;

import java.lang.all;

interface Iterator(T) {
    public bool hasNext();
    public T next();
    public void  remove();
}


