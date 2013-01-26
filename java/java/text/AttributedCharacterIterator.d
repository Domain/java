module java.text.AttributedCharacterIterator;

import java.text.CharacterIterator;
import java.util.Set;
import java.util.Map;
import java.lang.all;

interface AttributedCharacterIterator : CharacterIterator {
    static class Attribute {
        static AttributedCharacterIterator.Attribute INPUT_METHOD_SEGMENT;
        static AttributedCharacterIterator.Attribute LANGUAGE;
        static AttributedCharacterIterator.Attribute READING;

        protected this(String name){
            implMissing(__FILE__, __LINE__);
        }

        override equals_t opEquals(Object obj){
            implMissing(__FILE__, __LINE__);
            return false;
        }

        protected  String getName(){
            implMissing(__FILE__, __LINE__);
            return null;
        }

        override hash_t toHash(){
            implMissingSafe(__FILE__, __LINE__);
            return 0;
        }

        protected  Object readResolve(){
            implMissing(__FILE__, __LINE__);
            return null;
        }

        override String toString(){
            implMissing(__FILE__, __LINE__);
            return null;
        }

    }
    Set!Attribute getAllAttributeKeys();
    Object getAttribute(AttributedCharacterIterator.Attribute attribute);
    Map!(Attribute, Object) getAttributes();
    int getRunLimit();
    int getRunLimit(AttributedCharacterIterator.Attribute attribute);
    int getRunLimit(Set!Attribute attributes);
    int getRunStart();
    int getRunStart(AttributedCharacterIterator.Attribute attribute);
    int getRunStart(Set!Attribute attributes);
}

