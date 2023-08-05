// string interpolation
String stringify(int x, int y) {
  return '$x $y';
}

// null variables
String? name = 'Jane';
String? address;

// null aware operators
String? foo = 'a string';
String? bar; // = null

// Substitute an operator that makes 'a string' be assigned to baz.
String? baz = foo ?? bar;

void updateSomeVars() {
    // Substitute an operator that makes 'a string' be assigned to bar. 
    bar ??= 'a string';
}

// Conditional property access
// This method should return the uppercase version of 'str'
// or null if 'str' is null.
String? upperCaseIt(String? str) {
  return str?.toUpperCase();
}

// Collection literals
// Assign this a list containing 'a', 'b', and 'c' in that order:
final aListOfStrings = ['a', 'b', 'c'];

// Assign this a set containing 3, 4, and 5:
final aSetOfInts = {3, 4, 5,};

// Assign this a map of String to int so that aMapOfStringsToInts['myKey'] returns 12:
final aMapOfStringsToInts = {'myKey': 12};

// Assign this an empty List<double>:
final anEmptyListOfDouble = <double>[];

// Assign this an empty Set<String>:
final anEmptySetOfString = <String>{};

// Assign this an empty Map of double to int:
final anEmptyMapOfDoublesToInts = <double, int>{};

// Arrow syntax '=>'
class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  // Returns the product of the above values:
  int get product => value1 * value2 * value3;

  // Adds 1 to value1:
  void incremetValue1() => value1++;

  // Returns a string containing each item in the
  // list, separated by commas (e.g. 'a,b,c'):
  String joinWithCommas(List<String> strings) => strings.join(',');
}

// Cascades
class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  return obj
    ..anInt = 1
    ..aString = 'String!'
    ..aList.add(3)
    ..allDone();
}

// Getters and setters
class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];

  double get total => _prices.fold(0, (e, t) => e + t);

  set prices(List<double> value) {
    if (value.any((p) => p < 0)) {
      throw InvalidPriceException();
    }

    _prices = value;
  }
}

// Optional positional parameters