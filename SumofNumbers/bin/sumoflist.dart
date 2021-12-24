import 'dart:io';

void main(List<String> arguments) {
  print('Enter no. of Elements: ');

  int Num = int.parse(stdin.readLineSync()!);
  int Sum=0;
  for (int i = 0; i < Num; ) {
  
    print('Enter the ${i + 1} Number: ');
    var input = int.parse(stdin.readLineSync()!);
    if (-2000 < input && input < 2000) {
      Sum+=input;
      i++;
    } else {
      print('Enter a Number in range -2000 to 2000');
    }
  }
 
  print('Sum of Numbers is: ${Sum}');
}
