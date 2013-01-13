module java.util.ListIterator;

import java.lang.all;
import java.util.Iterator;

interface ListIterator(T) : Iterator!T {
    public void   add(T o);
    //public void   add(String o);
    public bool   hasNext();
    public bool   hasPrevious();
    public T      next();
    public int    nextIndex();
    public T      previous();
    public int    previousIndex();
    public void   remove();
    public void   set(T o);
}

