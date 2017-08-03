//use String to define position, size, color
//rgb, radius, x/yPos
String printThis = "my sketches will be:";
//243,240,181
 int r=243;
 int g=240;
 int b=181;
 
 int radius=100;
 int xPos= 250;
 int yPos=250;
 
//draw two crossing lines
//draw 3 circles
//one circle is 
void setup(){
 size(1000,500);
 println("my sketches will be");
 println(1000+"x"+500+"pixels");
 background (r,g,b);
 println(printThis);
 println(r+","+g+","+b);

}
void draw(){ 
  //draw black circle
  noStroke();
 fill(0);
 ellipse(500,350,radius*2,radius*2);
 //radius=(100*1.5)/2=75
 ellipse(325,325,radius*1.5,radius*1.5);
 ellipse(175,325,radius*1.5,radius*1.5);
 
 //draw yellow circle for "a/A", draw orange for "s/S"
 if(keyPressed){
   if(key=='a' || key=='A'){
    fill(240,244,112);
     ellipse(500,350,175,175);
   }else if (key=='s'|| key=='S'){
     fill(255,204,0);
     ellipse(325,325,125,125);}
   }
 stroke(0); // draw lines
 line(0,250,1000,250);
 line(500,0,500,500); 
}

//draw white circle using "UP"  
  void keyPressed(){ //QUESTION: Why after clicking "UP", white circle does not stay? I though for keyPressed function, the "true" will stay.
    if(key==CODED){
          if (keyCode == UP){
             fill(255);
             ellipse(325,325,100,100);
           }
  }
  }
    
void mousePressed(){
  if (mouseButton == LEFT){//QUESTION: The same, why does not change stay?
 fill(255);   
 ellipse(175,325,100,100);}
  else if (mouseButton == RIGHT) {
 fill(216,143,108);
 ellipse(175,325,125,125);}
 println(mousePressed);
 }
 