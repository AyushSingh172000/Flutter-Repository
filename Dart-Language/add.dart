import 'dart:io';
void main(){
  var addition = Add();
  //print(addition.add());
  print('The addition of given number is: ${addition.add()}'); // here with the help of $ sign we can get output in one line.
  // var sum=addition.add();
  // print('The addition of given number is: $sum');

}
class Add {
  int add(){
  print('Enter the value of a: ');
  int a = int.parse(stdin.readLineSync()!);
  print('Enter the value of b: ');
  int b = int.parse(stdin.readLineSync()!);
  return(a+b);
}
}
