import 'dart:io';
void main(){
  var swap=Swap();
  swap.swapNumber();
}
class Swap {
  void swapNumber(){
    stdout.write("Enter the value of a: ");
    int a= int.parse(stdin.readLineSync()!);  // Typecasting because stdin.readLineSync() will give the string value.
    stdout.write("Enter the value of b: ");
    int b= int.parse(stdin.readLineSync()!);
    print('\nBefore Swap: a=$a, b=$b');
    a=a+b;
    b=a-b;
    a=a-b;
    print('After Swap: a=$a, b=$b');
  }
}