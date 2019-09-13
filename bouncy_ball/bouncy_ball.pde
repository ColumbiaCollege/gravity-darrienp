//sets variable of the height for the ball
float y = 200;
//sets the starting speed for the ball
float speed = 0;
//makes a variable for the image used
PImage img;
//sets up the background and sets the image to be used
void setup() {
  size(1000, 1000);
  img = loadImage("red ball.png");
}

void draw() {
  background(0);
  //adds speed to the height every loop
  y = y + speed;
  //speed gets added 0.1 every loop
  speed = speed + 0.1;
  //makes it so the image will bounce the bottom touches the bottom
  imageMode(CENTER);
  //makes a shape that is the image set earleir, its y is the variable set earlier
  image(img, 500, y, 100, 100);
  //this loop makes it bounce, it happens when y = 1000 which is the bottom limit of the screen
  if (y>height) {
    //the speed will be multiplied by a negative number so it goes up
    //it slows down each bounce because the number is less than 1
    speed = speed * -0.95;
  }
}
