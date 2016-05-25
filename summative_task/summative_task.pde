boolean buttonPressed = false;
boolean rok;
boolean papur;
boolean scisser;
PImage rock;
PImage scissors;
PImage paper;
int player;
int computer;
void setup() {
  size(500, 500);
  rock = loadImage("rock.jpg");
  scissors = loadImage("scissors.jpg");
  paper = loadImage("paper.jpg");
  buttonPressed=false;
}

void draw () {
  background(255, 255, 0);
  noStroke();
  fill(255, 0, 0);
  rect(50, 400, 80, 50);
  fill(255);
  text( "Rock", 75, 425);
  fill(0, 255, 0);
  rect(210, 400, 80, 50);
  fill(255);
  text( "Paper", 235, 425);
  fill(0, 0, 255);
  rect(370, 400, 80, 50);
  fill(255);
  text( "Scissors", 385, 425);
  if (rok)
  {
    image(rock, 25, 25);
    player = 1;
  } else if (papur)
  {
    image(paper, 25, 25);
    player = 2;
  } else if (scisser)
  {
    image(scissors, 25, 25);
    player = 3;
  }
  if (mousePressed) {
    computer = int(random(1, 4));
    if (computer == 1) {
      image(rock, 275, 25);
    }
    if (computer == 2) {
      image(paper, 275, 25);
    }
    if (computer == 3) {
      image(scissors, 275, 25);
    }
    noLoop();
  }
}

void mousePressed()
{
  if (buttonPressed == false)
  {
    if (mouseY > 400 && mouseY < 450)
    {
      if (mouseX > 50 && mouseX < 130)rok = true;
      else if (mouseX > 210 && mouseX < 290)papur = true;
      else if (mouseX > 370 && mouseX < 450)scisser = true;
    }
  }
}