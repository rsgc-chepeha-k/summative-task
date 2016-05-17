boolean rockPaperScissors = false;

void setup() {
  size(500, 500);
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
}
void mousePressed()
{
  if (!rockPaperScissors)
  {rockPaperScissors = true;
  if (mouseY > 25 && mouseY < 50)
    {
      if (mouseX > 975 && mouseX < 1000)c1 = true;
      else if (mouseX > 1050 && mouseX < 1075)c2 = true;
      else if (mouseX > 1125 && mouseX < 1150)c3 = true;
  }
}