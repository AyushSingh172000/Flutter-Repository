main(){
  var list1=[10, 20, 30, 40];
  list1.add(50);
  list1.add(60); // it adds the value into the last index of the list.
  print(list1);
  var list2=[];
  list2.addAll(list1); // it is used when we want to pass the new list into another empty list.
  list2.add("Hi");
  list2.add("Buddy");
  list2.add("This is Ayush!");
  list2.insert(5, "Welcome to the dart"); // it will add the value where we want or on our desirable index.
  //print(list2);
  list2.insertAll(2, list1); // here we can insert the list into another list on our desirable index.
  //print(list2);
  list2.removeRange(2, 6);
  //print(list2);
  list2.replaceRange(0, 7, ["replaced value"]);
  //print(list2);
  list2.remove(60);
  print(list2);
  print("Length is: ${list2.length}");
  print("Reversed is: ${list2.reversed}");
  print("First is: ${list2.first}");
  print("is Empty is: ${list2.isEmpty}");
  print("is Not Empty: ${list2.isNotEmpty}");
  print("element at index: ${list2.elementAt(2)}");
  
  

 


}