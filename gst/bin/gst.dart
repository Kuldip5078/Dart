import 'dart:io';
void coupen(var fi)
{
  var fi1;
  var c2=10,c3=20;
  print("\n\t\t\t===========================================");
  print("\n\t\t\tPLEASE SELECT YOUR COPEN");  
  print("\n\t\t\t===========================================");
  print(" 1. Take the discount copen = 10 RS/-");
  print(" 2. Take the cashback coupen = 20 RS/-");
  print(" 0. exit");
  print(" Enter your choice");
  // coupen();
          String? l=stdin.readLineSync();
          var k=int.parse(l??'0');
            switch(k)
            {
              case 1:{
                //var c2=10;
                print("Your coupen charge is = $c2");
                fi=fi+c2;
                print(" After take coupen your bill is = $fi RS/-");
                print("Congratulations you are erned for 10 % discount");
                fi1=(fi*10)/100;
                print(" Take your discount is $fi1 RS /-");
                fi=fi-fi1;
                print("\n===============================================");
                print("\t\tYour Final amount is pay = $fi");
                print("\n THANKS FOR SHOPPING");
              break;}
              case 2:{
                print("\n Your coupen charge is = $c3");
                fi=fi+c3;
                print(" \nAfter take coupen your bill is = $fi");
                print("Congratulations you are erned for 15 % cashback ");
                 fi1=(fi*15)/100;
                print(" Take your cashback is $fi1 RS /-");
                fi=fi-fi1;
                print("\n===============================================");
                print("Your Final amount is pay = $fi RS /-");
                print("\n THANKS FOR SHOPPING🙏");
                break;
              }
              case 0:{
                break;}
              default:
                print("invalid choice"); 
          break;
      }
}
void choice()
{
  print(" 1. Apple = 50 Rs/piece");
  print(" 2. Mango = 70 Rs/piece");
  print(" 3. Pineapple = 60 Rs/piece");
  print(" 4. Coconate = 40 Rs/piece");
  print(" 0. Exit");
  print(" Enter your choice : ");
}
void offer()
{
  print("   \t\t\t\tOUR TODAY's OFFER");
  print(" 1. Get the 5 % discont of your total bill amount is more than 300 RS /-");
  print(" 2. Get apply your lucky coupen");
  print(" 0. Exit");
  print(" Enter your choice  = ");
}
void calc(int x,int g,String y,int GST){
  var TO,dis,fb;
  var fi,fi1;
  print("\t\t\t $y \n");
  print("\tYour product quentitys is = $x \n");
  print("\tper product amount is = $g");
  var total=x*g;
  print(" \tYour product total amount is without GST = $total RS/- ");
  if(total>100){
    print(" \t\tYour GST is = $GST %  \n");
    TO=(total*GST)/100;
    fi=(TO+total);
    print(" \t\tYour product GST amount is = $TO \n");
    print(" \t\tYour final amount with GST= $fi RS /- \n");
    if(fi>300)
    {
      offer();
      String? p=stdin.readLineSync();
      var q=int.parse(p??'0');
      switch(q){
        case 1:{
          dis=(fi*5)/100;
          print("Get your discount = $dis");
          fb=fi-dis;
          print("Your final bill amount with discont = $fb");
          break;}
        case 2:{
          coupen(fi);
          break;
    }
           case 0:
            break;
      default:
          print("Invalid choice");
  }
  
  }
  else{
    print("\n===============================================");
    print("Your Final amount of without GST = $total");
    print("\n THANKS FOR SHOPPING");
  }
}}
void main()
{
  print("WEL COME FOR THE OUR SHOP");
  var h;
  do{
    choice();
    String? c=stdin.readLineSync();
     h=int.parse(c??'0');
    //var t=stdout.write("$h");
    switch(h){
      case 1:{
          var GST=5;
          var g=50; 
          String a= "Your product is Apple";
          print("Enter the Quntity of your product : ");
          String? ap=stdin.readLineSync();
          var app=int.parse(ap??'0');
          calc(app,g,a,GST);
          break;}
        case 2 :{
        var GST=7;
          var g=70; 
          String a= "Your product is MANGO";
          print("Enter the Quntity of your product : ");
          String? mn=stdin.readLineSync();
          var man=int.parse(mn??'0');
          calc(man,g,a,GST);
          break;}
        case 3 :{
        var GST=4;
          var g=60; 
          String a= "Your product is PINEAPPLE";
          print("Enter the Quntity of your product : ");
          String? mn=stdin.readLineSync();
          var man=int.parse(mn??'0');
          calc(man,g,a,GST);
          break;}
        case 4 :{
        var GST=4;
          var g=40; 
          String a= "Your product is COCONATE ";
          print("Enter the Quntity of your product : ");
          String? mn=stdin.readLineSync();
          var man=int.parse(mn??'0');
          calc(man,g,a,GST);
          break;}
        case 0:{
          break;}
        default:
          print("invalid choice");
    }
  }while(h!=0);
}