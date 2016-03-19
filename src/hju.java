public final class hju
{
  final hks a;
  boolean b;
  int c = 0;
  private float d = 0.0F;
  private float e = 0.0F;
  private float f = 1.0F;
  private float g = 1.0F;
  private boolean h = true;
  
  public hju(hks paramhks)
  {
    a = paramhks;
  }
  
  public void a()
  {
    if (b) {
      return;
    }
    if (!a.k())
    {
      b = true;
      a.a(new hjv(this));
      return;
    }
    Object localObject1 = a.q();
    hbj localhbj = (hbj)((hbo)localObject1).a(hbj.class);
    switch (c)
    {
    case 1: 
    default: 
      Object localObject2 = ((hbh)((hbo)localObject1).a(hbh.class)).a();
      localObject1 = new kjg();
      a = new kja();
      a.a = a;
      a.b = b;
      a.c = "2";
      a.d = Integer.valueOf(2);
      a.g = new kje();
      if ((f > 0.0F) && (g > 0.0F))
      {
        localObject2 = new kjf();
        a = Float.valueOf(d);
        b = Float.valueOf(e);
        c = Float.valueOf(f);
        d = Float.valueOf(g);
        a.g.c = new kjf[] { localObject2 };
      }
      if (!h) {
        break;
      }
    }
    for (a.g.a = Integer.valueOf(2);; a.g.a = Integer.valueOf(1))
    {
      localhbj.a((lyi)localObject1, new hjx(this));
      return;
      c = 1;
      localhbj.a(new hjw(this, localhbj));
      return;
    }
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    d = 0.0F;
    e = 0.0F;
    f = paramFloat1;
    g = paramFloat2;
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     hju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */