import 'dart:io';
void main(){
  
  print("Enter tha age:");
  String? a1=stdin.readLineSync();
  var a2=int.parse(a1 ?? '0');
  (a2<17)?print("parsan is not aligibalfor voting"):print("eligibal");
}