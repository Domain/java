module java.util.TreeMap;

import java.lang.all;
import java.util.Map;
import java.util.Set;
import java.util.Collection;
import java.util.SortedMap;
import java.util.TreeSet;
import java.util.ArrayList;
import java.util.Comparator;

version(Tango){
    static import tango.util.container.SortedMap;
} else { // Phobos
}


class TreeMap(K, V) : Map!(K, V), SortedMap!(K, V) {
    version(Tango){
        alias tango.util.container.SortedMap.SortedMap!(K,V) MapType;
        private MapType map;
    } else { // Phobos
    }


    public this(){
        version(Tango){
            map = new MapType();
        } else { // Phobos
            implMissingInPhobos();
        }
    }
    public this(Comparator c){
        implMissing( __FILE__, __LINE__ );
    }
    public this(Map!(K, V) m){
        implMissing( __FILE__, __LINE__ );
    }
    public this(SortedMap!(K, V) m){
        implMissing( __FILE__, __LINE__ );
    }
    public void clear(){
        version(Tango){
            map.clear();
        } else { // Phobos
            implMissingInPhobos();
        }
    }
    Comparator     comparator(){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    public bool containsKey(K key){
        version(Tango){
            Object v;
            return map.get(key, v );
        } else { // Phobos
            implMissingInPhobos();
            return false;
        }
    }
    //public bool containsKey(String key){
    //    return containsKey(stringcast(key));
    //}
    public bool containsValue(V value){
        version(Tango){
            return map.contains(value);
        } else { // Phobos
            implMissingInPhobos();
            return false;
        }
    }
    public Set!(Entry!(K, V))  entrySet(){
        version(Tango){
            TreeSet!(Entry!(K, V)) res = new TreeSet!(Entry!(K, V))();
            foreach( k, v; map ){
                res.add( new MapEntry(this,k) );
            }
            return res;
        } else { // Phobos
            implMissingInPhobos();
            return null;
        }
    }
    public override equals_t opEquals(Object o){
        version(Tango){
            if( auto other = cast(TreeMap) o ){
                if( other.size() !is size() ){
                    return false;
                }
                foreach( k, v; map ){
                    Object vo = other.get(k);
                    if( v != vo ){
                        return false;
                    }
                }
                return true;
            }
            return false;
        } else { // Phobos
            implMissingInPhobos();
            return false;
        }
    }
    K         firstKey(){
        version(Tango){
            foreach( k; map ){
                return k;
            }
            throw new tango.core.Exception.NoSuchElementException( "TreeMap.firstKey" );
        } else { // Phobos
            implMissingInPhobos();
            return null;
        }
    }
    public V get(K key){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    //public Object get(String key){
    //    return get(stringcast(key));
    //}
    public override hash_t toHash(){
        version(Tango){
            // http://java.sun.com/j2se/1.4.2/docs/api/java/util/AbstractMap.html#hashCode()
            hash_t res = 0;
            foreach( e; entrySet() ){
                res += e.toHash();
            }
            return res;
        } else { // Phobos
            implMissingSafe( __FILE__, __LINE__ );
            return false;
        }
    }
    SortedMap!(K, V) headMap(K toKey){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    public bool isEmpty(){
        version(Tango){
            return map.isEmpty();
        } else { // Phobos
            implMissingInPhobos();
            return false;
        }
    }
    public Set!K keySet(){
        version(Tango){
            TreeSet!K res = new TreeSet!K();
            foreach( k; map ){
                res.add( k );
            }
            return res;
        } else { // Phobos
            implMissingInPhobos();
            return null;
        }
    }
    K lastKey(){
        version(Tango){
            Object res;
            foreach( k; map ){
                res = k;
            }
            if( map.size() ) return res;
            throw new tango.core.Exception.NoSuchElementException( "TreeMap.lastKey" );
        } else { // Phobos
            implMissingInPhobos();
            return null;
        }
    }
    public V put(K key, V value){
        version(Tango){
            if( map.contains(key) ){ // TODO if tango has opIn_r, then use the "in" operator
                V res = map[key];
                map[key] = value;
                return res;
            }
            map[key] = value;
            return null;
        } else { // Phobos
            implMissingInPhobos();
            return null;
        }
    }
    //public Object put(String key, Object value){
    //    return put(stringcast(key), value);
    //}
    //public Object put(Object key, String value){
    //    return put(key, stringcast(value));
    //}
    //public Object put(String key, String value){
    //    return put(stringcast(key), stringcast(value));
    //}
    public void   putAll(Map!(K, V) t){
        foreach( k, v; t ){
            put( k, v );
        }
    }
    public V remove(K key){
        version(Tango){
            V res;
            map.take(key,res);
            return res;
        } else { // Phobos
            implMissingInPhobos();
            return null;
        }
    }
    //public Object remove(String key){
    //    return remove(stringcast(key));
    //}
    public int    size(){
        version(Tango){
            return map.size();
        } else { // Phobos
            implMissingInPhobos();
            return 0;
        }
    }
    SortedMap!(K, V)      subMap(K fromKey, K toKey){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    SortedMap!(K, V)      tailMap(K fromKey){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    public Collection!V values(){
        version(Tango){
            ArrayList!V res = new ArrayList!V( size() );
            foreach( k, v; map ){
                res.add( v );
            }
            return res;
        } else { // Phobos
            implMissingInPhobos();
            return null;
        }
    }

    public int opApply (int delegate(ref V value) dg){
        version(Tango){
            return map.opApply( dg );
        } else { // Phobos
            implMissingInPhobos();
            return 0;
        }
    }
    public int opApply (int delegate(ref K key, ref V value) dg){
        version(Tango){
            return map.opApply( dg );
        } else { // Phobos
            implMissingInPhobos();
            return 0;
        }
    }
}

