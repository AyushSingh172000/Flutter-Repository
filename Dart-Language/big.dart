import 'dart:io';
void main(){
  var bignumber = Big();
  print('The big number of them is: ${bignumber.big()}');


}
class Big {
  int big(){
      print('Enter the value of a: ');
      int a=int.parse(stdin.readLineSync()!);
      print('Enter the value of b: ');
      int b=int.parse(stdin.readLineSync()!);
      print('Enter the value of c: ');
      int c=int.parse(stdin.readLineSync()!);
      if (a>b && a>c) {
        return a;
      }else if(b>c && b>a){
        return b;
      }else{
        return c;
      }
      
  }
  
}