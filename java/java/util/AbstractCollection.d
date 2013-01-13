module java.util.AbstractCollection;

import java.lang.all;
import java.util.Collection;
import java.util.Iterator;

abstract class AbstractCollection(T) : Collection!T {
    this(){
    }
    bool        add(T o){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    bool        addAll(Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    void   clear(){
        implMissing( __FILE__, __LINE__ );
    }
    bool        contains(T o){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    bool        containsAll(Collection!T c){
        if( c is null ) throw new NullPointerException();
        foreach( o; c ){
            if( !contains(o) ) return false;
        }
        return true;
    }
    override equals_t opEquals(T o){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    bool        isEmpty(){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    abstract  Iterator!T      iterator();
    override hash_t toHash(){
        implMissingSafe( __FILE__, __LINE__ );
        return 0;
    }
    bool        remove(T o){
        throw new UnsupportedOperationException();
    }
    bool        remove(String o){
        return remove(stringcast(o));
    }
    bool        removeAll(Collection!T c){
        if( c is null ) throw new NullPointerException();
        bool res = false;
        foreach( o; c ){
            res |= remove(o);
        }
        return res;
    }
    bool        retainAll(Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return false;
    }
    abstract  int   size();
    T[]       toArray(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    T[]       toArray(T[] a){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    //String[]       toArray(String[] a){
    //    implMissing( __FILE__, __LINE__ );
    //    return null;
    //}
    override String         toString(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
}

