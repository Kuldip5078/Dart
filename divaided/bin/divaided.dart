import 'dart:io';


void main(){
  var a,b,c;
  int big;

  print("enter value a:");
  String? a1=stdin.readLineSync();
  var a2=int.parse(a1 ?? '0');
  print("enter value b:");
  String? b1=stdin.readLineSync();
  var b2=int.parse(b1 ?? '0');
  print("enter value a:");
  String? c1=stdin.readLineSync();
  var c2=int.parse(c1 ?? '0');

  big=(a2>b2 && a2>c2) ? (a2) : ( (b2>c2)?(b2):(c2));
  print("$big");
}
