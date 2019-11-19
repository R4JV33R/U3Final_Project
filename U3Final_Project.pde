Projectile p;
Enemy Enemy;

ArrayList<Projectile> Bullets = new ArrayList();
ArrayList<Enemy> Enemies = new ArrayList();
PVector player;
boolean up, down, left, right = false;
int scene = 1;
int screen;
int score;

int COUNT = 100;

void setup()
{
  size(800, 800, P2D);

  player = new PVector(400, 600);

  p = new Projectile(300, 300, player.x, player.y);

  if (scene==1)
  {
    Enemies.add(new Enemy(player));
    Enemies.add(new Enemy(player));
    Enemies.add(new Enemy(player));
    Enemies.add(new Enemy(player));
    Enemies.add(new Enemy(player));
    Enemies.add(new Enemy(player));
    Enemies.add(new Enemy(player));
    Enemies.add(new Enemy(player));
    Enemies.add(new Enemy(player));
    Enemies.add(new Enemy(player));
    Enemies.add(new Enemy(player));
    screen = 1;
    //11 enemies
  }
}



void draw()
{

  if (screen == 1)
  {
    //background(0);
    textSize(32);
    fill (255,0,0);
    text("Score: "+score, 10, 30);
    fill(0);
    ellipse(player.x, player.y, 20, 20);

    noStroke();
    fill(0, 0, 0, 25);
    rect(0, 0, width, height);
    fill(255);

  
    p.Update();



    for (Projectile bullet : Bullets)
    {
      bullet.Update();
    }

    for (Enemy enemy : Enemies)
    {
      enemy.Update(player.copy());

      for (Projectile bullet : Bullets)
      {
        enemy.ColUpdate(bullet.bulPos.copy());
      }
    }

    if (up)
    {
      player.add(0, -1);
    }

    if (down)
    {
      player.add(0, 1);
    }

    if (right)
    {
      player.add(1, 0);
    }

    if (left)
    {
      player.add(-1, 0);
    }







    fill(255);
    ellipse(player.x, player.y, 20, 20);
    fill(0);
  }
}

void mousePressed()
{
  Bullets.add(new Projectile(mouseX, mouseY, player.x, player.y));
}

void keyPressed()
{
  if (key=='W'|| key == 'w')
  {
    up=true;
  }

  if (key=='A'|| key == 'a')
  {
    left=true;
  }

  if (key=='S'||key=='s')
  {
    down=true;
  }

  if (key=='D'||key=='d')
  {
    right=true;
  }
}

void keyReleased()
{
  if (key=='W'|| key == 'w')
  {
    up=false;
  }

  if (key=='A'|| key == 'a')
  {
    left=false;
  }

  if (key=='S'||key=='s')
  {
    down=false;
  }

  if (key=='D'||key=='d')
  {
    right=false;
  }
}
