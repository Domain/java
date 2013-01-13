module java.util.Collections;

import java.lang.all;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.List;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Enumeration;
import java.util.ArrayList;
import java.util.Comparator;

class Collections {
    private static void unsupported(){
        throw new UnsupportedOperationException();
    }

    private static List!Object EMPTY_LIST_;
    public static List!Object EMPTY_LIST(){
        if( EMPTY_LIST_ is null ){
            synchronized(Collections.classinfo ){
                if( EMPTY_LIST_ is null ){
                    EMPTY_LIST_ = new ArrayList!Object(0);
                }
            }
        }
        return EMPTY_LIST_;
    }
    private static Map!(Object, Object) EMPTY_MAP_;
    public static Map!(Object, Object) EMPTY_MAP(){
        if( EMPTY_MAP_ is null ){
            synchronized(Collections.classinfo ){
                if( EMPTY_MAP_ is null ){
                    EMPTY_MAP_ = new TreeMap!(Object, Object)();
                }
            }
        }
        return EMPTY_MAP_;
    }
    private static Set!Object EMPTY_SET_;
    public static Set!Object EMPTY_SET(){
        if( EMPTY_SET_ is null ){
            synchronized(Collections.classinfo ){
                if( EMPTY_SET_ is null ){
                    EMPTY_SET_ = new TreeSet!Object();
                }
            }
        }
        return EMPTY_SET_;
    }
    static class UnmodifiableIterator(T) : Iterator!T {
        Iterator!T it;
        this(Iterator!T it){
            this.it = it;
        }
        public bool hasNext(){
            return it.hasNext();
        }
        public T next(){
            return it.next();
        }
        public void  remove(){
            unsupported();
        }
    }
    static class UnmodifiableListIterator(T) : ListIterator!T {
        ListIterator!T it;
        this(ListIterator!T it){
            this.it = it;
        }
        public void   add(T o){
            unsupported();
        }
        //public void   add(String o){
        //    unsupported();
        //}
        public bool   hasNext(){
            return it.hasNext();
        }
        public bool   hasPrevious(){
            return it.hasPrevious();
        }
        public T next(){
            return it.next();
        }
        public int    nextIndex(){
            return it.nextIndex();
        }
        public T previous(){
            return it.previous();
        }
        public int    previousIndex(){
            return it.previousIndex();
        }
        public void   remove(){
            unsupported();
        }
        public void   set(T o){
            unsupported();
        }
    }
    static class UnmodifieableList(T) : List!T {
        List!T list;
        this(List!T list){
            this.list = list;
        }
        public void     add(int index, T element){
            unsupported();
        }
        public bool     add(T o){
            unsupported();
            return false; // make compiler happy
        }
        //public bool     add(String o){
        //    unsupported();
        //    return false; // make compiler happy
        //}
        public bool     addAll(Collection!T c){
            unsupported();
            return false; // make compiler happy
        }
        public bool     addAll(int index, Collection!T c){
            unsupported();
            return false; // make compiler happy
        }
        public void     clear(){
            unsupported();
        }
        public bool     contains(T o){
            return list.contains(o);
        }
        //public bool     contains(String o){
        //    return list.contains(o);
        //}
        public bool     containsAll(Collection!T c){
            return list.containsAll(c);
        }
        public equals_t      opEquals(Object o){
            return cast(equals_t)list.opEquals(o);
        }
        public Object   get(int index){
            return list.get(index);
        }
        public hash_t   toHash(){
            return list.toHash();
        }
        public int      indexOf(T o){
            return list.indexOf(o);
        }
        public bool     isEmpty(){
            return list.isEmpty();
        }
        public Iterator!T iterator(){
            return new UnmodifiableIterator!T( list.iterator() );
        }
        public int      lastIndexOf(T o){
            return list.lastIndexOf(o);
        }
        public ListIterator!T   listIterator(){
            return new UnmodifiableListIterator!T( list.listIterator() );
        }
        public ListIterator!T   listIterator(int index){
            return new UnmodifiableListIterator!T( list.listIterator(index) );
        }
        public T   remove(int index){
            unsupported();
            return null; // make compiler happy
        }
        public bool     remove(T o){
            unsupported();
            return false; // make compiler happy
        }
        //public bool     remove(String o){
        //    unsupported();
        //    return false; // make compiler happy
        //}
        public bool     removeAll(Collection!T c){
            unsupported();
            return false; // make compiler happy
        }
        public bool     retainAll(Collection!T c){
            unsupported();
            return false; // make compiler happy
        }
        public T   set(int index, T element){
            unsupported();
            return null; // make compiler happy
        }
        public int      size(){
            return list.size();
        }
        public List     subList(int fromIndex, int toIndex){
            return new UnmodifieableList!T( list.subList(fromIndex,toIndex));
        }
        public T[] toArray(){
            return list.toArray();
        }
        public T[] toArray(T[] a){
            return list.toArray(a);
        }
        //public String[] toArray(String[] a){
        //    return list.toArray(a);
        //}
        public int opApply (int delegate(ref T value) dg){
            implMissing(__FILE__, __LINE__ );
            return 0;
        }
        //public int opApply (int delegate(ref K key, ref T value) dg){
        //    implMissing(__FILE__, __LINE__ );
        //    return 0;
        //}
        public String toString(){
            return list.toString();
        }
    }
    static int binarySearch(T)(List!T list, T key){
        implMissing( __FILE__, __LINE__ );
        return 0;
    }
    static int binarySearch(T)(List!T list, T key, Comparator!T c){
        implMissing( __FILE__, __LINE__ );
        return 0;
    }
    public static List!T unmodifiableList(T)( List!T list ){
        return new UnmodifieableList(list);
    }
    public static Map!(K, V) unmodifiableMap(K, V)( Map!(K, V) list ){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    public static Set!T unmodifiableSet(T)( Set!T list ){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    public static List!T singletonList(T)( T o ){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    public static Set!T singleton(T)( T o ){
        TreeSet!T res = new TreeSet!T();
        res.add(o);
        return res;
    }
    public static void     sort(T)(List!T list){
        implMissing( __FILE__, __LINE__ );
    }
    public static void     sort(T)(List!T list, Comparator!T c){
        implMissing( __FILE__, __LINE__ );
    }

    static Collection!T   synchronizedCollection(T)(Collection!T c){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
    static class SynchronizedList(T) : List!T {
        private List!T list;
        private this( List!T list ){
            this.list = list;
        }
        // Collection
        public int opApply (int delegate(ref T value) dg){ synchronized(this){ return this.list.opApply(dg); } }
        // List
        public void     add(int index, T element){ synchronized(this){ return this.list.add(index, element); } }
        public bool     add(T o){ synchronized(this){ return this.list.add(o); } }
        //public bool     add(String o){ synchronized(this){ return this.list.add(o); } }
        public bool     addAll(Collection!T c){ synchronized(this){ return this.list.addAll(c); } }
        public bool     addAll(int index, Collection!T c){ synchronized(this){ return this.list.addAll(index, c); } }
        public void     clear(){ synchronized(this){ return this.list.clear(); } }
        public bool     contains(T o){ synchronized(this){ return this.list.contains(o); } }
        //public bool     contains(String o){ synchronized(this){ return this.list.contains(o); } }
        public bool     containsAll(Collection!T c){ synchronized(this){ return this.list.containsAll(c); } }
        public equals_t      opEquals(Object o){ synchronized(this){ return cast(equals_t)this.list.opEquals(o); } }
        public Object   get(int index){ synchronized(this){ return this.list.get(index); } }
        public hash_t   toHash(){ return this.list.toHash(); }
        public int      indexOf(T o){ synchronized(this){ return this.list.indexOf(o); } }
        public bool     isEmpty(){ synchronized(this){ return this.list.isEmpty(); } }
        public Iterator!T iterator(){ synchronized(this){ return this.list.iterator(); } }
        public int      lastIndexOf(T o){ synchronized(this){ return this.list.lastIndexOf(o); } }
        public ListIterator!T   listIterator(){ synchronized(this){ return this.list.listIterator(); } }
        public ListIterator!T   listIterator(int index){ synchronized(this){ return this.list.listIterator(index); } }
        public T   remove(int index){ synchronized(this){ return this.list.remove(index); } }
        public bool     remove(T o){ synchronized(this){ return this.list.remove(o); } }
        //public bool     remove(String o){ synchronized(this){ return this.list.remove(o); } }
        public bool     removeAll(Collection!T c){ synchronized(this){ return this.list.removeAll(c); } }
        public bool     retainAll(Collection!T c){ synchronized(this){ return this.list.retainAll(c); } }
        public T   set(int index, T element){ synchronized(this){ return this.list.set(index,element); } }
        public int      size(){ synchronized(this){ return this.list.size(); } }
        public List!T     subList(int fromIndex, int toIndex){ synchronized(this){ return this.list.subList(fromIndex,toIndex); } }
        public T[] toArray(){ synchronized(this){ return this.list.toArray(); } }
        public T[] toArray(T[] a){ synchronized(this){ return this.list.toArray(a); } }
        //public String[] toArray(String[] a){ synchronized(this){ return this.list.toArray(a); } }
        public String toString(){ synchronized(this){ return this.list.toString(); } }
    }
    static List!T     synchronizedList(T)(List!T list){
        return new SynchronizedList!T(list);
    }

    static class SynchronizedMap(K, V) : Map!(K, V) {
        private Map!(K, V) map;
        //interface Entry {
        //    int   opEquals(Object o);
        //    Object     getKey();
        //    Object     getValue();
        //    hash_t     toHash();
        //    Object     setValue(Object value);
        //}
        private this( Map!(K, V) map ){
            this.map = map;
        }
        public void clear(){ synchronized(this){ this.map.clear(); } }
        public bool containsKey(K key){ synchronized(this){ return this.map.containsKey(key); } }
        //public bool containsKey(String key){ synchronized(this){ return this.map.containsKey(key); } }
        public bool containsValue(V value){ synchronized(this){ return this.map.containsValue(value); } }
        public Set!(Entry!(K, V))  entrySet(){ synchronized(this){ return this.map.entrySet(); } }
        override public equals_t opEquals(Object o){ synchronized(this){ return this.map.opEquals(o); } }
        public V get(K key){ synchronized(this){ return this.map.get(key); } }
        //public Object get(String key){ synchronized(this){ return this.map.get(key); } }
        public hash_t toHash(){ return this.map.toHash(); }
        public bool isEmpty(){ synchronized(this){ return this.map.isEmpty(); } }
        public Set!K    keySet(){ synchronized(this){ return this.map.keySet(); } }
        public V put(K key, V value){ synchronized(this){ return this.map.put(key,value); } }
        //public Object put(String key, Object value){ synchronized(this){ return this.map.put(key,value); } }
        //public Object put(Object key, String value){ synchronized(this){ return this.map.put(key,value); } }
        //public Object put(String key, String value){ synchronized(this){ return this.map.put(key,value); } }
        public void   putAll(Map!(K, V) t){ synchronized(this){ return this.map.putAll(t); } }
        public V remove(K key){ synchronized(this){ return this.map.remove(key); } }
        //public Object remove(String key){ synchronized(this){ return this.map.remove(key); } }
        public int    size(){ synchronized(this){ return this.map.size(); } }
        public Collection!V values(){ synchronized(this){ return this.map.values(); } }

        // only for D
        public int opApply (int delegate(ref V value) dg){ synchronized(this){ return this.map.opApply( dg ); } }
        public int opApply (int delegate(ref K key, ref V value) dg){ synchronized(this){ return this.map.opApply( dg ); } }
    }
    static Map!(K, V)  synchronizedMap(K, V)(Map!(K, V) m){
        return new SynchronizedMap!(K, V)(m);
    }
    static Set!T  synchronizedSet(T)(Set!T s){
        implMissing( __FILE__, __LINE__ );
        return null;
    }
//     static SortedMap    synchronizedSortedMap(SortedMap m){
//         implMissing( __FILE__, __LINE__ );
//         return null;
//     }
//     static SortedSet    synchronizedSortedSet(SortedSet s){
//         implMissing( __FILE__, __LINE__ );
//         return null;
//     }
    static void     reverse(T)(List!T list) {
        T[] data = list.toArray();
        for( int idx = 0; idx < data.length; idx++ ){
            list.set( data.length -1 -idx, data[idx] );
        }
    }
    static class LocalEnumeration(T) : Enumeration!T {
        T[] data;
        this( T[] data ){
            this.data = data;
        }
        public bool hasMoreElements(){
            return data.length > 0;
        }
        public T nextElement(){
            T res = data[0];
            data = data[ 1 .. $ ];
            return res;
        }
    }
    static Enumeration!T     enumeration(T)(Collection!T c){
        return new LocalEnumeration!T( c.toArray() );
    }
}

