enum Gender { male, female }

class Cat {
  late String name; // default values
  late int age; // default values
  late Gender gender; // default values

  // Cat(this.name, this.gender, this.age) {
  //   print("Cat constructor");
  // }

  Cat(String pname, Gender pgender, int page) {
    name = pname;
    gender = pgender;
    age = page;
    print("Calling cat constructor for ${name}");
  }

  /// Provides a string representation of this [Cat].
  @override
  String toString() => 'Cat: $name, age: $age, gender: $gender';
}

example1() {
  nested1() {
    nested2() => print("Example1 nested 1 nested 2");
    nested2();
  }

  nested1();
}

/// Anonymous functions don't include a name
example2() {
  //// Explicit return type.
  nested1(void Function() fn) {
    fn();
  }

  nested2(int Function(int) fn) {
    print(fn(95));
  }

  nested1(() => print("Example2 nested 1")); //anonymous function
  nested2((int i) => i); //anonymous function but returns an int
}

void main() {
  Cat oscar = Cat("Oscar", Gender.male, 4);
  Cat sunflower = Cat("Sunflower", Gender.male, 2);
  Cat chinacat = Cat("China Cat", Gender.female, 2);

  print(oscar.toString());
  print(sunflower.toString());
  print(chinacat.toString());

  example1();
  example2();
}
