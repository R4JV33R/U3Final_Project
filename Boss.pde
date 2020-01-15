class Boss extends  Enemy
{
  PVector bossPos;

  Boss()
  {
    fill(255, 0, 0);
    image(Linus, bossPos.x, bossPos.y);
    face.resize(50, 50);
  }
}
