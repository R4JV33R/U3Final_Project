class Entity
{

  PVector bulPos;
  PVector enemyPos;
  int enemyW;
  int bulW;

  Entity()
  {

    bulPos = new PVector(0, 0);
    enemyPos = new PVector(800, 800);
    enemyW = 0;
  }


  boolean ColUpdate(PVector _bulPos)
  {
    if (dist(_bulPos.x, _bulPos.y, enemyPos.x, enemyPos.y)<15)
    {
      enemyW=0;
      enemyPos.mult(-1);
      return true;
    }
    return false;
  }
}
