import 'dart:io';

// Define an interface
abstract class Student {
  void study();
}

// Define a class that implements the interface
class Undergraduate implements Student {
  @override
  void study() {
    print('The undergraduate student is studying hard.');
  }
}

// Define a class that extends another class and overrides a method
class GraduateStudent extends Undergraduate {
  @override
  void study() {
    print('The graduate student is conducting research.');
  }
}

// Define a method that demonstrates the use of a loop
void main() async {
// Read data from a file
  final file = File('students.txt');
  final students = await file.readAsLines();

// Create an instance of a class that is initialized with data from a file
  final undergraduate = Undergraduate();
  final graduate = GraduateStudent();

// Use a loop to iterate over the students
  for (final student in students) {
    // Check if the student is an undergraduate
    if (student == 'undergraduate') {
      // Call the study method of the undergraduate object
      undergraduate.study();
    } else if (student == 'graduate') {
      // Call the study method of the graduate object
      graduate.study();
    } else {
      // Print an error message for unknown students
      print('Unknown student: $student');
    }
  }
}
import 'dart:io';

// Interface definition
abstract class Person {
  void introduce();
}

// Student class
class Student implements Person {
  String name;
  int age;

  Student(this.name, this.age);

  @override
  void introduce() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

// Method demonstrating the use of a loop
void printNumbers(int count) {
  for (int i = 1; i <= count; i++) {
    print(i);
  }
}

void main() {
  // Create instances of classes
  var student1 = Student('Alice', 20);
  var student2 = Student('Bob', 22);

  // Demonstrate method override
  student1.introduce();
  student2.introduce();

  // Read data from a file and initialize object
  var file = File('data.txt');
  var lines = file.readAsLinesSync();
  var data = lines[0];
  print('Data from file: $data');

  // Demonstrate loop method
  printNumbers(5);
}
