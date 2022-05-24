import 'dart:io';
void detail()
{
  print("\n\t===============================");
  print("\tAccount holder name = XYZ ");
  print("\tAccount type = savings");
  print("\t===============================\n");
}
void choice()
{
  print("\n\t\t\tYour account process");
  print("\t\t 1. Withdrow");
  print("\t\t 2. Diposite");
  print("\t\t 3. Cheak the your current balance status");
  print("\t\t 0. Exit");
  print("\n\tPlease Enter Your Choice : ");
}
int withdrow(var b,var wi)
{
  b=b-wi;
  return b;
}
int diposite(var b,var ti)
{
  b=b+ti;
  return b;
}
void main()
{
  var c,d,w,wi,t,ti,b=1000,ac,bc,bs,ps,e,f;
  print("Wel-Come for the banking");
  print("Please enter your 10 charecter account number = ");
  ac=stdin.readLineSync();
  bc=int.parse(ac);
  print("\n Please enter your 4 charecter password = ");
  bs=stdin.readLineSync();
  ps=int.parse(bs);
  if(bc==1234567891&&ps==1234){
    detail();
    print("\n You want to speed up the process of your account ?");
    print("\t1. YES  \t\t\t2. NO");
    print(" PRESS 1 OR 2 : ");
    e=stdin.readLineSync();
    f=int.parse(e);
    if(f==1){
  do{
  choice();
   c=stdin.readLineSync();
   d=int.parse(c);
    switch(d){
      case 1:{
        if(b>1000){
        print(" \n Please enter your Withdrow money : ");
        w=stdin.readLineSync();
        wi=int.parse(w);
        print("\n\t\t=================================");
        print("\t\tYour balance is  =  ${withdrow(b,wi)} RS /-");              
        print("\t\t=================================");
        print("\n\t\tTHANK YOU FOR BANKING");
        print("=========================================================");
        b=withdrow(b,wi);}
        else{
          print("\n\t\tYour current balance is low");
          print("=========================================================");
        }
        break;
      }
      case 2:{
        print("\n Please enter your diposite money  : ");
        t=stdin.readLineSync();
        ti=int.parse(t);
        print("\n\t\t=================================");
        print("\t\tYour balance is = ${diposite(b,ti)} RS /-");
        print("\t\t=================================");
        print("\n\t\tTHANK YOU FOR BANKING");
        print("=========================================================");
        b=diposite(b,ti);
        break;
      }
      case 3:{
         print("\n\t\t===========================================");
        print("\t\tyour current balance is = $b RS /-");
         print("\t\t===========================================");
        print("\n\t\tTHANK YOU FOR BANKING");
        print("=========================================================");
        break;
      }
      case 0:
          break;
      default:
          print("\n Invalid choice");
    }
  }while(d!=0);
    }
    else{
      print("\n\tVISIT AGAIN");
      print("\t\t=================================");
        print("\n\t\tTHANK YOU FOR BANKING");
        print("=========================================================");
    }
  }
  else{
    print("==================================================================");
    print("PLEASE TRY AGAIN BECAUSE YOUR ACCOUNT NUMBER AND PASSWORD IS NOT MATCH");
    print("==================================================================");
  }
}