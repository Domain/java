module java.util.Set;

import java.lang.all;
import java.util.Collection;
import java.util.Iterator;

interface Set(T) : Collection!T {
    override public bool     add(T o);
    //override public bool     add(String o);
    override public bool     addAll(Collection!T c);
    override public void     clear();
    override public bool     contains(T o);
    //override public bool     contains(String o);
    override public bool     containsAll(Collection!T c);
    override public equals_t opEquals(T o);
    override public hash_t   toHash();
    override public bool     isEmpty();
    override public Iterator!T iterator();
    override public bool     remove(T o);
    //override public bool     remove(String o);
    override public bool     removeAll(Collection!T c);
    override public bool     retainAll(Collection!T c);
    override public int      size();
    override public T[] toArray();
    override public T[] toArray(T[] a);
    override public String   toString();

    // only for D
    override public int opApply (int delegate(ref T value) dg);
}

