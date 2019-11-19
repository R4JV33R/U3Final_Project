class Enemy extends Entity
{


  PVector dir;
  float speed;
  PVector enemyStart;
  int randSide;
  int enemyW;

  Enemy()
  {
    randSide = (int)random(0, 3);
    dir = new PVector(1, 0);
    speed = random(3, 5);
    enemyW=20;

    if (randSide == 0)// top
    {
      enemyStart = new PVector(random(0, width), 0);
    }

    if (randSide == 1)// bottom
    {
      enemyStart = new PVector(random(0, width), 800);
    }

    if (randSide == 2)//left
    {
      enemyStart = new PVector(0, random(0, width));
    }

    if (randSide == 3)//left
    {
      enemyStart = new PVector(800, random(0, width));
    }


    enemyPos = new PVector(enemyStart.x, enemyStart.y);
  }

  Enemy(PVector player)
  {
    
   
     randSide = (int)random(0, 3);
    dir = new PVector(1, 0);
    speed = random(3, 5);
    
    if (randSide == 0)// top
    {
      enemyStart = new PVector(random(0, width), 0);
    }

    if (randSide == 1)// bottom
    {
      enemyStart = new PVector(random(0, width), 800);
    }

    if (randSide == 2)//left
    {
      enemyStart = new PVector(0, random(0, width));
    }

    if (randSide == 3)//left
    {
      enemyStart = new PVector(800, random(0, width));
    }
    
     enemyPos = new PVector(enemyStart.x, enemyStart.y);
    enemyW=20;
    
  }

  void Update(PVector _player)
  {
    fill(255, 0, 0);
    ellipse(enemyPos.x, enemyPos.y, 20, 20);
    fill(0);
    
    PVector dir = player.copy().sub(enemyPos);
    dir.normalize();
    dir.mult(1);
    enemyPos.add(dir);
    
  //  if(dist(enemyW/2, enemyW/2, 
  }



}
