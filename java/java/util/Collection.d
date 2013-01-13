module java.util.Collection;

import java.lang.all;
import java.util.Iterator;

interface Collection(T) {
    public bool     add(T o);
    //public bool     add(String o);
    public bool    addAll(Collection!T c);
    public void   clear();
    public bool    contains(T o);
    public bool    containsAll(Collection!T c);
    public equals_t	opEquals(T o);
    public hash_t   toHash();
    public bool    isEmpty();
    public Iterator!T   iterator();
    public bool    remove(T o);
    //public bool    remove(String o);
    public bool    removeAll(Collection!T c);
    public bool    retainAll(Collection!T c);
    public int    size();
    public T[]   toArray();
    public T[]   toArray(T[] a);
	public String   toString();

    // only for D
    public int opApply (int delegate(ref T value) dg);
}

