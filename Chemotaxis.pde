 void setup()   
 {     
  size(1000,1000);
 }   
 Bacteria[] colony= new Bacteria[10000];
 int a=0;
 boolean first=false;
 void draw()   
 {  
   if(first){
   for(int i=0;i<a;i++){
     System.out.println(i);
    colony[i].move();
    colony[i].show();
   }
 }  
 }
 class Bacteria    
 {     
   int myx, myy, myz;
   Bacteria(int x, int y, int z){
     myx=x;
     myy=y;
     myz=z;
   }
   void move(){
     myx+=Math.random()*11-5;
     myy+=Math.random()*11-5;
   }
   void show(){
     fill(myz);
     ellipse(myx,myy,5,5);
   }
 }
 void mouseClicked(){
    int colors=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
   first=true;
   for(int i=0;i<100;i++){
   colony[i+a]= new Bacteria(mouseX,mouseY,colors);
   colony[i+a].move();
   colony[i+a].show();
   }
   a+=100;
   redraw();
 }
