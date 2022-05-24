
void main(){
  
  int n1=0,n2=1,n3,i;
  
  
  print("$n1");
  print("$n2");
  
  for(i=0;i<5;++i){
    n3=n1+n2;
    
    print("$n3");
    n1=n2;
    n2=n3;
  }
  
}