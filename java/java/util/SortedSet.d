module java.util.SortedSet;

import java.lang.all;
import java.util.Set;
import java.util.Comparator;

interface SortedSet(T) : Set!T {
    Comparator     comparator();
    T              first();
    SortedSet      headSet(T toElement);
    T              last();
    SortedSet      subSet(T fromElement, T toElement);
    SortedSet      tailSet(T fromElement);
}

