class Adoptions{
 String item;
 int count;
 
 float x;
 float y;

Adoptions(){


 
}

void display(){
 fill (255);
 stroke(0);
 strokeWeight(1);
 ellipseMode(CENTER);
 ellipse(x+50,y,count*3,count*3);
  text(title,300,50);
  text(item, x+50,y+100);
}

void rollover(){
  if (dist(mouseX,mouseY,x+50,y)<= count*3/2){
   fill(255);
   
   text(count, x+50, y+120);
   imageMode(CENTER);
   image(paw,x+50,y,count*3,count*3);
  
   
  }
  
  
}

}