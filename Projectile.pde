class Projectile extends Entity
{

  //PVector bulPos;
  PVector dir;
  float speed;
  int bulW;
  int grade;
  boolean coll_true = false; 

  Projectile()
  {
    bulPos = new PVector(400, 400);
    dir = new PVector(1, 0);
    speed = 2;
    bulW = 10;
  }

  Projectile(float _mouseX, float _mouseY, float playerX, float playerY )
  {
    PVector mouse = new PVector(_mouseX, _mouseY);
    bulPos = new PVector(playerX, playerY);
    speed=3;
    bulW = 10;

    dir=mouse.sub(bulPos);
    dir.normalize();
    dir.
      mult(speed);

    grade = int(random(1, 7));
  }


  void Update()
  {
    fill(0, 255, 0);
    text(grade, bulPos.x, bulPos.y);
    fill(0);
    bulPos.add(dir);
  }
}
