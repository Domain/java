module java.util.ArrayList;

import java.lang.all;
import java.util.AbstractList;
import java.util.List;
import java.util.ListIterator;
import java.util.Collection;
import java.util.Iterator;

class ArrayList(T) : AbstractList!T, List!T {
    private T[] data;

    this(){
    }
    this(int size){
        data.length = size;
        data.length = 0;
    }
    this(Collection!T col){
        this(cast(int)(col.size*1.1));
        addAll(col);
    }
    override void   add(int index, T element){
        data.length = data.length +1;
        System.arraycopy( data, index, data, index+1, data.length - index -1 );
        data[index] = element;
    }
    override bool    add(T o){
        data ~= o;
        return true;
    }
    override public bool    add(String o){
        return add(stringcast(o));
    }
    override bool    addAll(Collection!T c){
        if( c.size() is 0 ) return false;
        uint idx = data.length;
        data.length = data.length + c.size();
        foreach( o; c ){
            data[ idx++ ] = o;
        }
        return true;
    }
    override bool    addAll(int index, Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    override void   clear(){
        data.length = 0;
    }
    ArrayList clone(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override bool    contains(T o){
        foreach( v; data ){
            if( o is v ){
                return true;
            }
            if(( o is null ) || ( v is null )){
                continue;
            }
            if( o == v ){
                return true;
            }
        }
        return false;
    }
    bool    contains(String o){
        return contains(stringcast(o));
    }
    override bool    containsAll(Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    override equals_t opEquals(T o){
        if( auto other = cast(ArrayList)o ){
            if( data.length !is other.data.length ){
                return false;
            }
            for( int i = 0; i < data.length; i++ ){
                if( data[i] is other.data[i] ){
                    continue;
                }
                if(( data[i] is null ) || ( other.data[i] is null )){
                    return false;
                }
                if( data[i] == other.data[i] ){
                    continue;
                }
                return false;
            }
            return true;
        }
        return false;
    }
    override T     get(int index){
        return data[index];
    }
    public override hash_t toHash(){
        // http://java.sun.com/j2se/1.4.2/docs/api/java/util/List.html#hashCode()
        hash_t hashCode = 1;
        for( int i = 0; i < data.length; i++ ){
            T obj = data[i];
            hashCode = 31 * hashCode + (obj is null ? 0 : obj.toHash());
        }
        return hashCode;
    }
    override int    indexOf(T o){
        foreach( i, v; data ){
            if( data[i] is o ){
                return i;
            }
            if(( data[i] is null ) || ( o is null )){
                continue;
            }
            if( data[i] == o ){
                return i;
            }
        }
        return -1;
    }
    override bool    isEmpty(){
        return data.length is 0;
    }
    class LocalIterator(T) : Iterator!T{
        int idx = -1;
        public this(){
        }
        public bool hasNext(){
            return idx+1 < data.length;
        }
        public T next(){
            idx++;
            T res = data[idx];
            return res;
        }
        public void  remove(){
            implMissing( __FILE__, __LINE__ );
            this.outer.remove(idx);
            idx--;
        }
    }

    Iterator!T   iterator(){
        return new LocalIterator!T();
    }
    override int    lastIndexOf(T o){
        foreach_reverse( i, v; data ){
            if( data[i] is o ){
                return i;
            }
            if(( data[i] is null ) || ( o is null )){
                continue;
            }
            if( data[i] == o ){
                return i;
            }
        }
        return -1;
    }

    class LocalListIterator(T) : ListIterator!T {
        int idx_next = 0;
        public bool hasNext(){
            return idx_next < data.length;
        }
        public T next(){
            T res = data[idx_next];
            idx_next++;
            return res;
        }
        public void  remove(){
            implMissing( __FILE__, __LINE__ );
            this.outer.remove(idx_next);
            idx_next--;
        }
        public void   add(T o){
            implMissing( __FILE__, __LINE__ );
        }
        public void   add(String o){
            implMissing( __FILE__, __LINE__ );
        }
        public bool   hasPrevious(){
            return idx_next > 0;
        }
        public int    nextIndex(){
            return idx_next;
        }
        public T previous(){
            idx_next--;
            T res = data[idx_next];
            return res;
        }
        public int    previousIndex(){
            return idx_next-1;
        }
        public void   set(T o){
            implMissing( __FILE__, __LINE__ );
        }
    }

    ListIterator!T   listIterator(){
        return new LocalListIterator!T();
    }
    ListIterator!T   listIterator(int index){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override T     remove(int index){
        T res = data[index];
        System.arraycopy( data, index+1, data, index, data.length - index - 1 );
        data.length = data.length -1;
        return res;
    }
    override bool    remove(T o){
        int idx = -1;
        for( int i = 0; i < data.length; i++ ){
            if( data[i] is null ? o is null : data[i] == o ){
                idx = i;
                break;
            }
        }
        if( idx is -1 ){
            return false;
        }
        for( int i = idx + 1; i < data.length; i++ ){
            data[i-1] = data[i];
        }
        data.length = data.length - 1;
        return true;
    }
    override public bool remove(String key){
        return remove(stringcast(key));
    }
    override bool    removeAll(Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    override bool    retainAll(Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    override protected  void     removeRange(int fromIndex, int toIndex){
        implMissing( __FILE__, __LINE__ );
    }
    override T     set(int index, T element){
        T res = data[index];
        data[index] = element;
        return res;
    }
    override int    size(){
        return data.length;
    }
    List!T   subList(int fromIndex, int toIndex){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    override T[]   toArray(){
        return data.dup;
    }
    override T[]   toArray(T[] a){
        if( data.length <= a.length ){
            a[ 0 .. data.length ] = data;
        }
        else{
            return data.dup;
        }
        if( data.length < a.length ){
            a[data.length] = null;
        }
        return a;
    }
	//String[]   toArray(String[] a){
	//    version(Tango){
	//        auto res = a;
	//        if( res.length < data.length ){
	//            res.length = data.length;
	//        }
	//        int idx = 0;
	//        foreach( o; data ){
	//            res[idx] = stringcast(o);
	//        }
	//        return res;
	//    } else { // Phobos
	//        implMissingInPhobos();
	//        return null;
	//    }
	//}

    // only for D
    override public int opApply (int delegate(ref T value) dg){
        foreach( o; data ){
            auto res = dg( o );
            if( res ) return res;
        }
        return 0;
    }
    override public String toString(){
        return super.toString();
    }
}

