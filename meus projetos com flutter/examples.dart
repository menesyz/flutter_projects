// string interpolation

// string

'${3 + 2}' // result '5'
'${"word".toUpperCase()}' // 'WORD'
'$myObject' // the value of myObject.toString()

// code example

String stringify(int x, int y) {
  TODO('Return a formatted string here');
}

// null variables

int a = null; // INVALID.

int? a = null; // Valid.

int? a; // the initial value of a is null.

// null-aware operators

int? a; // = null

a ?? = 3;

print(a); // <-- prints 3.

a ?? = 5;
print(a); // <-- still prints 3.

print(1 ?? 3); // <-- prints 1.
print(null ?? 12); // <-- prints 12.

// conditional property access

myObject?.someProperty

(myObject ! = null) ? myObject.someProperty : null

myObject?.someProperty?.someMethod()

// collection literals

final aListOfStrings = ['one', 'two', 'three'];
final aSetOfStrings = ['one', 'two', 'three'];
final aMapOfStringsToInts = {
  'one' : 1,
  'two' : 2,
  'three' : 3,
};

final aListOfInts = <int> [];
final aSetOfInts = <int> {};
final aMapOfIntsToDouble = <int, double> {};
final aListOfBaseType = <BaseType>[SubType(), SubType()];

// arrow syntax

bool hasEmpty = aListOfStrings.any((s) {
  return s.isEmpty;
});

bool hasEmpty = aListOfStrings.any((s) => s.isEmpty);

// cascades

myObject.someMethod() // with no cascades
myObject..someMethod() // with cascades

var button = querySelector('#confirm');
button?.text = 'Confirm';
button?.classes.add('important');
button?.onClick.listen((e) => window.alert('Confirmed!'));
button?.scrollIntoView();

querySelector('#confirm')
  ?..text = 'Confirm'
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'))
  ..scrollIntoView();

// getters and setters

class MyClass {
  int aProperty = 0;

  int get aProperty => _aProperty;

  set aProperty(int value) {
    if (value >= 0) {
      _aProperty = value;
    }
  }
}

class MyClass {
  final List<int> _values = [];
  
  void addValue(int value) {
    _values.add(value);
  }

  // a computed property.
  int get count {
    return _values.length;
  }
}

// optional positional parameters

int sumUp(int a, int b, int c) {
  return a + b + c;
}
// ···
  int total = sumUp(1, 2, 3);

