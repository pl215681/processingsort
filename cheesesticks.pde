int[] cheesesticks = new int [20];
int i = 0, j = 0;
int tempi = 0;

void setup () {
  size (600, 600);
  background (0);
  for(int fi = 0; fi < 20; fi++) {
    cheesesticks[fi] = round(random(600));
  }  
}

void draw () {
  //if (j <= 19){
    
    if (i < 19){
      if (cheesesticks[i] > cheesesticks[i+1]){
        tempi = cheesesticks[i];
        cheesesticks[i] = cheesesticks[i+1];
        cheesesticks[i+1] = tempi;
      
      }
      i++;
    }else{
     i = 0;
    }
  
  
  background (0);
  
  
  
  rectMode(CENTER);
  for(int fi = 0; fi < 20; fi++) {
    rect(cheesesticks[fi]/2-1,10+20*fi,cheesesticks[fi],20);
  }
}
 
