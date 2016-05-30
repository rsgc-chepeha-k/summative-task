boolean buttonPressed = false;
boolean rok;
boolean papur;
boolean scisser;

//The image objects for each image
PImage rock;
PImage scissors;
PImage paper;
PImage rules;
PImage RPS;

//These integers hold what the computer and player has chosen, rock is a 1, paper is a 2, scissors is a 3
int player;
int computer;

//This keeps track of which screen to display, the gamescreen or the menuscreen
int screenDisplayed;

void setup() {
  size(500, 500);
    //loading the images to the PImage objects
  rock = loadImage("rock.jpg");
  scissors = loadImage("scissors.jpg");
  paper = loadImage("paper.jpg");
  rules = loadImage("Player.jpg");
  RPS = loadImage("rps.jpg");
  
  buttonPressed=false;
  
    //Setting the screenDisplayed variable to 2 so that the menu screen will display
  screenDisplayed=2;
  textMode(CENTER);
}

void draw () {
  //This checks if the screenDisplayed variable is 2 if it is then it will load the menu screen
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
    
      //This displayes the image which shows the rules
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
     //If the boolean rock is true it will set the players variable to 1
    if (rok)
    {
      image(rock, 25, 25);
      player = 1;
    } else if (papur)//If the boolean papur is true it will set the players variable to 2
    {
      image(paper, 25, 25);
      player = 2;
    } else if (scisser)//If the boolean scisser is true it will set the players variable to 3
    {
      image(scissors, 25, 25);
      player = 3;
    }
    fill(0);
    if (mousePressed) {//This is activated when the player clicks his mouse, this is because the player has to click his mouse in order to choose and this can not execute until the player has chosen
      //This chooses a random number for the computer, as mentioned each number represents rock, paper, or scissors
      computer = int(random(1, 4));
      //This set of if statements will display the image of what the computer has selected
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
    
    //Each of these if statments are a possible scenario of throws in rock paper scissors. If the variables match the ones in the if statment then it will say either "you win" or, you lose
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
     //This checks if the mouse is in the range of the y axis that the buttons share
    if (mouseY > 400 && mouseY < 450)
    {
      //These check if the mouse is in the range of the x axis of that button, if it is when clicked it will set a boolean true to which the player selected
      if (mouseX > 50 && mouseX < 130)rok = true;
      else if (mouseX > 210 && mouseX < 290)papur = true;
      else if (mouseX > 370 && mouseX < 450)scisser = true;
    }
  }
}
void keyPressed() {
  if (key == 's') {
    //This starts the game setting the screenDisplayed variable to one to make it show the play screen
    screenDisplayed =1;
  }
  if (key == 'r') {
    loop();
    //If the key is the r key then it is resetting everything, going back to the start menu as well
    screenDisplayed =2;
    rok=false;
    papur=false;
    scisser=false;
    computer= 0;
    player = 0;
  }
}