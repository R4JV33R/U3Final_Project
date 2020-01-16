import processing.sound.*; //<>//
SoundFile file;
Projectile p; //<>//
Enemy e;
Boss boss;
PFont f;
ArrayList<Projectile> Bullets = new ArrayList();
ArrayList<Enemy> Enemies = new ArrayList();
PVector player;
boolean up, down, left, right = false;
PFont font;
int scene = 2;
int screen;
int score;
PImage face;
PImage Linus; 
boolean death;
float timer;
boolean enemyDeath;

int COUNT = 100;

void setup()
{

  font = createFont("pricedown bl.ttf", 30, true);
  size(800, 800, P2D);
  face=loadImage("Face.png");
  face.resize(30, 30);
  Linus=loadImage("linus.png");
  Linus.resize(50, 50);
  file = new SoundFile(this, "ofortuna.mp3");
  file.play();
  player = new PVector(400, 600);


  p = new Projectile(300, 300, player.x, player.y);
}


void draw()
{

  for (Enemy enemy : Enemies)
  {


    if (dist(enemy.enemyPos.x, enemy.enemyPos.y, player.x, player.y)<10)
    {

      death=true;
    }
  }
  if (death==true)
  {

    scene=99;
    death=false;
  }

  if (scene==2)
  {
    background(0);
    textFont(font);
    textSize(50);
    text ("Linus vs Raj", 200, 400);
    text("Press 'P' to start", 250, 450 );
  }

  if (scene == 1)
  {
    background(255, 0, 0);
    textSize(32);
    fill(255);
    timer=millis()/1000;
    text(timer, 20, 20);
    ellipse(player.x, player.y, 20, 20);

    fill(0);
    rect(20, 20, 760, 760);

    noStroke();
    fill(0, 0, 0, 25);
    rect(0, 0, width, height);
    fill(255);

    if (player.x > 770)
    {
      player.x = 770;
    }

    if (player.y > 770)
    {
      player.y = 770;
    }

    if (player.y > 770)
    {
      player.y = 770;
    }

    if (player.y < 30)
    {
      player.y = 30;
    }

    if (player.x < 30)
    {
      player.x = 30;
    }

    p.Update();

    {
    }

    for (Projectile bullet : Bullets)
    {
      bullet.Update();

      for (Enemy enemy : Enemies)
      {
        enemy.Update(player.copy());

        if (enemy.ColUpdate(bullet))
        {
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


      image(Linus, player.x, player.y);
      fill(0);
    }
    if (p.coll_true)
    {
      score += p.grade+10;
    }
  }


  if (scene==99)
  {
    background(0);
    textFont(font);
    fill(255, 0, 0);
    text("WASTED", 350, 360);
    text("Press 'R' to restart", 300, 400 );

    if (key == 'r'|key == 'R')
    {
      player.mult(0);
      player.add(400, 400);
      scene = 0;

      for (int i = Enemies.size()-1; i >= 0; i--)
      {
        Enemies.remove(i);
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
      }
    }
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
  if (key=='P'|| key == 'p')

    scene = 1;
  {
    if (key=='R'|| key == 'r')

      scene = 1;
  }
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
