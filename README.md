NSJSONSerializationTest
=======================

Prove a possible bug or an undocumented(?) feature.

When NSJSONSerialization encounters a float with a mantissa great than e-127, it throws an exception. See for yourself by running the tests!
