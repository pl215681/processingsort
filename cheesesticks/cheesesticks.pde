int[] cheesesticks = new int [20];
int i = 0, j = 0;
int tempi = 0;
boolean pause = true;

void setup () {
  size (600, 600);
  background (0);
  for(int fi = 0; fi < 20; fi++) {
    cheesesticks[fi] = round(random(600));
  }  
}

void draw () {
    
    if (i < 19){
      if (cheesesticks[i] > cheesesticks[i+1]){
        tempi = cheesesticks[i];
        cheesesticks[i] = cheesesticks[i+1];
        cheesesticks[i+1] = tempi;
      
      }
      if(pause==false){i++;}
    }else{
     i = 0;
    }
  
  background (0);
  
  rectMode(CENTER);
  for(int fi = 0; fi < 20; fi++) {
    rect(cheesesticks[fi]/2-1,10+20*fi,cheesesticks[fi],20);
  }
  rectMode(CENTER);
    rect(40, 500, 80, 40);
    rect(150, 500, 80, 40);
    rect(260, 500, 80, 40);
}
 
 void mousePressed() {
   if(abs(mouseX-40)<80/2){
      for(int fi = 0; fi < 20; fi++) {
    cheesesticks[fi] = round(random(600)); 
     }
   }
   if(abs(mouseX-150)<80/2){
     if(pause == false){
       pause = true;
     } else {
       pause = false;
     }
   }
   if(abs(mouseX-260)<80/2){
     println("hi");
   }
 }
