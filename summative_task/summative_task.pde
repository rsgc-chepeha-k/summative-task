boolean buttonPressed = false;
boolean rok;
boolean papur;
boolean scisser;
PImage rock;
PImage scissors;
PImage paper;
PImage rules;
PImage RPS;
int player;
int computer;
int screenDisplayed;
void setup() {
  size(500, 500);
  rock = loadImage("rock.jpg");
  scissors = loadImage("scissors.jpg");
  paper = loadImage("paper.jpg");
  rules = loadImage("Player.jpg");
  RPS = loadImage("rps.jpg");
  buttonPressed=false;
  screenDisplayed=2;
  textMode(CENTER);
}

void draw () {
  if (screenDisplayed ==2) {
    background(255, 255, 0);
    fill(0);
    textSize(24);
    textMode(CENTER);
    text("Rock, Paper, Scissors", 125, 20);
    textSize(18);
    text("Rules:", 10, 75);
    text("How to Play:", 250, 75);
    textSize(12);
    image(rules, 10, 100);
    text("Press ‘s' to start and ‘r' to restart.", 250, 100);
    text("Click the button that corresponds to the", 250, 115);
    text("symbol you want to play.", 250, 130);
    image(RPS, 100, 250);
  }
  if (screenDisplayed ==1)
  {
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
    fill(0);
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
      if (screenDisplayed == 2);
      noLoop();
    }
    if (computer == 1 && player ==1) {
      text("YOU WIN!", 225, 250);
    }
    if (computer ==1 && player ==2) {
      text("YOU WIN!", 225, 250);
    }
    if (computer ==1 && player ==3) {
      text("COMPUTER WINS!", 210, 250);
    }
    if (computer ==2 && player ==1) {
      text("COMPUTER WINS!", 210, 250);
    }
    if (computer ==2 && player ==2) {
      text("COMPUTER WINS!", 210, 250);
    }
    if (computer ==2 && player ==3) {
      text("YOU WIN!", 225, 250);
    }
    if (computer ==3 && player ==1) {
      text("YOU WIN!", 225, 250);
    }
    if (computer ==3 && player ==2) {
      text("COMPUTER WINS!", 210, 250);
    }
    if (computer ==3 && player ==3) {
      text("YOU WIN!", 225, 250);
    }
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
void keyPressed() {
  if (key == 's') {
    screenDisplayed =1;
  }
  if (key == 'r') {
    loop();
    screenDisplayed =2;
    rok=false;
    papur=false;
    scisser=false;
    computer= 0;
    player = 0;
  }
}