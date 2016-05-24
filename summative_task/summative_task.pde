boolean rockPaperScissors = false;
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
  rockPaperScissors=false;
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
    image(rock, 50, 50);
    player = 1;
  } else if (papur)
  {
    image(paper, 50, 50);
    player = 2;
  } else if (scisser)
  {
    image(paper, 50, 50);
    player = 3;
  }
}

void mousePressed()
{
  if (rockPaperScissors == false)
  {
    if (mouseY > 400 && mouseY < 450)
    {
      if (mouseX > 50 && mouseX < 130)rok = true;
      else if (mouseX > 210 && mouseX < 290)papur = true;
      else if (mouseX > 370 && mouseX < 450)scisser = true;
    }
  }
}