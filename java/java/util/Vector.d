module java.util.Vector;

import java.lang.all;
import java.util.AbstractList;
import java.util.List;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.ListIterator;

class Vector(T) : AbstractList!T, List!T {
    T[] vect;
    int used;
    int capacityIncrement = 32;
    public this(){
    }
    public this(Collection!T c){
        implMissing( __FILE__, __LINE__ );
    }
    public this(int initialCapacity){
        vect.length = initialCapacity;
    }
    public this(int initialCapacity, int capacityIncrement){
        implMissing( __FILE__, __LINE__ );
    }
    override public void   add(int index, T element){
        implMissing( __FILE__, __LINE__ );
    }
    override public bool    add(T o){
        if( used + 1 >= vect.length ){
            vect.length = vect.length + capacityIncrement;
        }
        vect[used] = o;
        used++;
        return true;
    }
    override public bool    add(String o){
        return add(stringcast(o));
    }
    override public bool    addAll(Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    override public bool    addAll(int index, Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    public void   addElement(T obj){
        add(obj);
    }
    public int    capacity(){
        return vect.length;
    }
    override public void   clear(){
        used = 0;
    }
    public T     clone(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override public bool    contains(T elem){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    override public bool    contains(String str){
        return contains(stringcast(str));
    }
    override public bool    containsAll(Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    public void   copyInto(void*[] anArray){
        implMissing( __FILE__, __LINE__ );
    }
    //public void   copyInto(T[] anArray){
    //    implMissing( __FILE__, __LINE__ );
    //}
    public T     elementAt(int index){
        return get(index);
    }
    public Enumeration!T    elements(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
   public  void   ensureCapacity(int minCapacity){
        implMissing( __FILE__, __LINE__ );
    }
    override public equals_t opEquals(T o){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    public T     firstElement(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override public T     get(int index){
        if( index >= used || index < 0 ){
            throw new ArrayIndexOutOfBoundsException( __FILE__, __LINE__ );
        }
        return vect[index];
    }
    override public hash_t    toHash(){
        implMissingSafe( __FILE__, __LINE__ );
        return 0;
    }
    override public int    indexOf(T elem){
        implMissing( __FILE__, __LINE__ );
        return 0;
    }
    public int    indexOf(T elem, int index){
        implMissing( __FILE__, __LINE__ );
        return 0;
    }
    public void   insertElementAt(T obj, int index){
        implMissing( __FILE__, __LINE__ );
    }
    override public bool    isEmpty(){
        return used is 0;
    }
    override public Iterator!T   iterator(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    public T     lastElement(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override public int    lastIndexOf(T elem){
        implMissing( __FILE__, __LINE__ );
        return 0;
    }
    public int    lastIndexOf(T elem, int index){
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
    override public T     remove(int index){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override public bool    remove(T o){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    override public bool remove(String key){
        return remove(stringcast(key));
    }
    override public bool    removeAll(Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    public void   removeAllElements(){
        implMissing( __FILE__, __LINE__ );
    }
    public bool    removeElement(T obj){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    public void   removeElementAt(int index){
        implMissing( __FILE__, __LINE__ );
    }
    override protected  void     removeRange(int fromIndex, int toIndex){
        implMissing( __FILE__, __LINE__ );
    }
    override public bool    retainAll(Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    override public T     set(int index, T element){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    public void   setElementAt(T obj, int index){
        implMissing( __FILE__, __LINE__ );
    }
    public void   setSize(int newSize){
        implMissing( __FILE__, __LINE__ );
    }
    override public int    size(){
        return used;
    }
    override public List!T   subList(int fromIndex, int toIndex){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override public T[]   toArray(){
        return vect[ 0 .. used ].dup;
    }
    override public T[]   toArray(T[] a){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    //override String[]   toArray(String[] a){
    //    implMissing( __FILE__, __LINE__ );
    //    return null;
    //}
    override public String     toString(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    public void   trimToSize(){
        implMissing( __FILE__, __LINE__ );
    }

    // only for D
    override public int opApply (int delegate(ref T value) dg){
        implMissing( __FILE__, __LINE__ );
        return 0;
    }

}

