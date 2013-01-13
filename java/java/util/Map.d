module java.util.Map;

import java.lang.all;
import java.util.Set;
import java.util.Collection;

interface Entry(K, V) {
    equals_t   opEquals(Object o);
    K     getKey();
    V     getValue();
    version(Tango){
        public hash_t   toHash();
    } else { // Phobos
        mixin(`@safe nothrow public hash_t   toHash();`);
    }
    Object     setValue(Object value);
}

interface Map(K, V) {
    public void clear();
    public bool containsKey(K key);
    //public bool containsKey(String key);
    public bool containsValue(V value);
    public Set!(Entry!(K,V))  entrySet();
    public equals_t opEquals(Object o);
    public V get(K key);
    //public V get(String key);
    version(Tango){
        public hash_t   toHash();
    } else { // Phobos
        mixin(`@safe nothrow public hash_t   toHash();`);
    }
    public bool isEmpty();
    public Set!K    keySet();
    public V put(K key, V value);
    //public Object put(String key, V value);
    //public Object put(K key, String value);
    //public Object put(String key, String value);
    public void   putAll(Map!(K, V) t);
    public V remove(K key);
    //public Object remove(String key);
    public int    size();
    public Collection!V values();

    // only for D
    public int opApply (int delegate(ref V value) dg);
    public int opApply (int delegate(ref K key, ref V value) dg);
}
class MapEntry(K, V) : Entry!(K, V) {
    Map!(K, V) map;
    K key;
    this( Map!(K, V) map, K key){
        this.map = map;
        this.key = key;
    }
    public override equals_t opEquals(Object o){
        if( auto other = cast(MapEntry!(K, V))o){

            if(( getKey() is null ? other.getKey() is null : getKey() == other.getKey() )  &&
               ( getValue() is null ? other.getValue() is null : getValue() == other.getValue() )){
                return true;
            }
            return false;
        }
        return false;
    }
    public K getKey(){
        return key;
    }
    public V getValue(){
        return map.get(key);
    }
    public override hash_t toHash(){
        return ( key   is null ? 0 : key.toHash()   ) ^
               ( 0 );
    }
    public V     setValue(V value){
        return map.put( key, value );
    }

}

