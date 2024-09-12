abstract class Person {
  // Private fields (encapsulation)
  String _name;
  int _age;

  // Constructor to initialize the Person object
  Person(this._name, this._age);

  // Getter for name
  String get name => _name;

  // Setter for name
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    }
  }

  // Getter for age
  int get age => _age;

  // Setter for age
  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    }
  }

  // Method to display person details
  void displayDetails() {
    print('Name: $_name');
    print('Age: $_age');
  }

  // Abstract method that must be implemented by subclasses
  void introduce();
}
class Employee extends Person {
  // Additional field for Employee
  String _position;
  double _salary;

  // Constructor to initialize Employee object, using the superclass constructor
  Employee(String name, int age, this._position, this._salary) : super(name, age);

  // Getter for position
  String get position => _position;

  // Setter for position
  set position(String newPosition) {
    if (newPosition.isNotEmpty) {
      _position = newPosition;
    }
  }

  // Getter for salary
  double get salary => _salary;

  // Setter for salary
  set salary(double newSalary) {
    if (newSalary >= 0) {
      _salary = newSalary;
    }
  }

  // Override the abstract introduce method
  @override
  void introduce() {
    print('Hi, I am $_name, and I work as a $_position.');
  }

  // Method to display employee details
  @override
  void displayDetails() {
    super.displayDetails();
    print('Position: $_position');
    print('Salary: \$$_salary');
  }
}
class Student extends Person {
  // Additional field for Student
  String _major;

  // Constructor to initialize Student object, using the superclass constructor
  Student(String name, int age, this._major) : super(name, age);

  // Getter for major
  String get major => _major;

  // Setter for major
  set major(String newMajor) {
    if (newMajor.isNotEmpty) {
      _major = newMajor;
    }
  }

  // Override the abstract introduce method
  @override
  void introduce() {
    print('Hi, I am $_name, and I am studying $_major.');
  }

  // Method to display student details
  @override
  void displayDetails() {
    super.displayDetails();
    print('Major: $_major');
  }
}
void main() {
  // Create an Employee object
  var employee = Employee('Alice', 30, 'Software Developer', 75000);
  employee.introduce(); // Output: Hi, I am Alice, and I work as a Software Developer.
  employee.displayDetails();
  // Output:
  // Name: Alice
  // Age: 30
  // Position: Software Developer
  // Salary: $75000.0

  // Create a Student object
  var student = Student('Bob', 22, 'Computer Science');
  student.introduce(); // Output: Hi, I am Bob, and I am studying Computer Science.
  student.displayDetails();
  // Output:
  // Name: Bob
  // Age: 22
  // Major: Computer Science
}
