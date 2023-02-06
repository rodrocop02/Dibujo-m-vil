float x = 0;
float y = 0;
float xspeed = 2;
float yspeed = 3;

void setup() {
  size(1200,900);
}

void draw() {
  background(255);
  move();
  display();
}

void move() {
  x = x + xspeed;
  y = y + yspeed;
  
  if (x == width-350) {
    xspeed = -xspeed;
  }
  if (y == height-375) {
    yspeed = -yspeed;
  }
  if (x == -150) {
    xspeed = -xspeed;
  }
  if (y == -150) {
    yspeed = -yspeed;
  }
}

void display() {
  fill(180,180,180);
  rect(x+150 , y+150 , 275 , 160);
  quad(x+150 , y+310 , x+425 , y+310 , x+475 , y+400 ,x+100, y+400);
  rect(x+100 , y+400 , 375 , 10);
  fill(35,210,230);
  rect(x+160 , y+160 , 255 , 140);
  fill(0,0,0);
  quad(x+165 , y+325 , x+410 , y+325 , x+430 , y+375 , x+140 , y+375);
}
