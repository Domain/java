module java.util.AbstractList;

import java.lang.all;
import java.util.Collection;
import java.util.AbstractCollection;
import java.util.List;
import java.util.ListIterator;
import java.util.Iterator;

abstract class AbstractList(T) : AbstractCollection!T, List!T {
    this(){
    }

    public void add(int index, T element){
        throw new UnsupportedOperationException();
    }
    public bool add(String o){
        return add(stringcast(o));
    }
    override public bool add(T o){
        add(size(), o);
        return true;
    }
    override public bool addAll(Collection!T c){
        throw new UnsupportedOperationException();
    }
    override public bool addAll(int index, Collection!T c){
        throw new UnsupportedOperationException();
    }
    override public void clear(){
        throw new UnsupportedOperationException();
    }
    override public bool contains(T o){ return super.contains(o); }
    //override public bool contains(String str){ return contains(stringcast(str)); }
    override public bool     containsAll(Collection!T c){ return super.containsAll(c); }
    override public abstract equals_t opEquals(T o);

    override public abstract T get(int index);

    override public abstract hash_t  toHash();

    override public int    indexOf(T o){
        auto it = listIterator();
        int idx = 0;
        while(it.hasNext()){
            auto t = it.next();
            if( t is null ? o is null : t == o){
                return idx;
            }
            idx++;
        }
        return -1;
    }
    override public bool     isEmpty(){
        return super.isEmpty();
    }
    override public Iterator!T iterator(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override public int    lastIndexOf(T o){
        implMissing( __FILE__, __LINE__ );
        return 0;
    }
    override public ListIterator!T   listIterator(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override public ListIterator!T   listIterator(int index){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override public T         remove(int index){
        throw new UnsupportedOperationException();
    }
    protected void         removeRange(int fromIndex, int toIndex){
    }
    override public bool     remove(T o){ return super.remove(o); }
    //override public bool     remove(String o){ return super.remove(o); }
    override public bool     removeAll(Collection!T c){ return super.removeAll(c); }
    override public bool     retainAll(Collection!T c){ return super.retainAll(c); }
    override public T set(int index, T element){
        throw new UnsupportedOperationException();
    }
    override public List!T   subList(int fromIndex, int toIndex){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override public T[] toArray(){ return super.toArray(); }
    override public T[] toArray(T[] a){ return super.toArray(a); }
    //override public String[] toArray(String[] a){ return super.toArray(a); }
    public int opApply (int delegate(ref T value) dg){
        implMissing( __FILE__, __LINE__ );
        return 0;
    }

    override public String toString(){
        return super.toString();
    }
}

