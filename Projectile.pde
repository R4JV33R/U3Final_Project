 class Projectile extends Entity
{

  //PVector bulPos;
  PVector dir;
  float speed;
  int bulW;

  Projectile()
  {
    bulPos = new PVector(400, 400);
    dir = new PVector(1, 0);
    speed = 3;
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
  }


  void Update()
  {
    fill(0, 255, 0);
    ellipse(bulPos.x, bulPos.y, bulW, bulW);
    fill(0);
    bulPos.add(dir);
  }
}
