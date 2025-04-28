void main(List<String> arguments) {
  //print(arguments);
  int arglen = arguments.length;
  if (arglen > 0) {
    print("this command has $arglen arguments present!");
    for (var arg in arguments) {
      print("Argument: $arg");
    }
  } else {
    print("No arguments!");
  }
}
