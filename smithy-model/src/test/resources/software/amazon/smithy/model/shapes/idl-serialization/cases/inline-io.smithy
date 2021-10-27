$version: "1.1"

namespace com.example

operation DerivedNames {
    input := {
        id: String
    }
    output := {
        id: String
    }
}

operation EmptyShapes {
    input := {}
    output := {}
}

operation HasDocComments {
    input :=
        /// The trait parser automagically handles these
        {}
    output :=
        /// Here too
        {}
}

operation UsesMixins {
    input := with NameBearer {
        id: String
    }
    output := with NameBearer {
        id: String
    }
}

operation UsesTraits {
    input :=
        @sensitive
        {
            id: String
        }
    output :=
        @sensitive
        {
            id: String
        }
}

operation UsesTraitsAndMixins {
    input :=
        @sensitive
        with NameBearer {
            id: String
        }
    output :=
        @sensitive
        with NameBearer {
            id: String
        }
}

@mixin
structure NameBearer {
    name: String
}