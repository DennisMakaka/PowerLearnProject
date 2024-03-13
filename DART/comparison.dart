import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  // Read user input
  final input = stdin.readLineSync();
  final number = int.tryParse(input ?? '');
  // Check if the input is a valid number
  if (number == null) {
    // Print the error message
    print('Invalid input. Please enter a valid number.');
  } else {
    // Check if the number is greater than 100 or not
    if (number > 10) {
      print('Your number is greater than 10');
    } else if (number < 10) {
      print('Your number is less than 10');
    } else {
      print('Your number is equal to 10');
    }
  }
}
