module java.util.List;

import java.lang.all;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

interface List(T) : Collection!T {
    public void     add(int index, T element);
    public bool     add(T o);
    public bool     add(String o);
    public bool     addAll(Collection!T c);
    public bool     addAll(int index, Collection!T c);
    public void     clear();
    public bool     contains(T o);
    public bool     contains(String o);
    public bool     containsAll(Collection!T c);
    override public equals_t opEquals(T o);
    public T   get(int index);
    version(Tango){
        public hash_t   toHash();
    } else { // Phobos
        mixin(`@safe nothrow public hash_t   toHash();`);
    }
    public int      indexOf(T o);
    public bool     isEmpty();
    public Iterator!T iterator();
    public int      lastIndexOf(T o);
    public ListIterator!T   listIterator();
    public ListIterator!T   listIterator(int index);
    public T   remove(int index);
    public bool     remove(T o);
    public bool     remove(String o);
    public bool     removeAll(Collection!T c);
    public bool     retainAll(Collection!T c);
    public T   set(int index, T element);
    public int      size();
    public List!T     subList(int fromIndex, int toIndex);
    public T[] toArray();
    public T[] toArray(T[] a);
    //public String[] toArray(String[] a);
    public String   toString();
}

