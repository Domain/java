module java.util.SortedMap;

import java.lang.all;
import java.util.Map;
import java.util.Comparator;

interface SortedMap(K, V) : Map!(K, V) {
    Comparator     comparator();
    K         firstKey();
    SortedMap      headMap(K toKey);
    K         lastKey();
    SortedMap      subMap(K fromKey, K toKey);
    SortedMap      tailMap(K fromKey);
}

