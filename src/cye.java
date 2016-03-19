import android.graphics.Bitmap;

final class cye
  extends cyd
{
  cye(cyb paramcyb)
  {
    super(paramcyb);
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    hbs.a("Expected null", paramexs);
    Object localObject;
    if (paramBoolean1)
    {
      localObject = parameys.d();
      b.u.a((Bitmap)localObject);
      super.a(parameys, paramexs, paramBoolean1, parambhs, paramBoolean2);
      return;
    }
    if (b.r()) {
      localObject = beo.b;
    }
    for (;;)
    {
      localObject = bfq.a((beo)localObject);
      break;
      if (b.s()) {
        localObject = beo.c;
      } else {
        localObject = beo.a;
      }
    }
  }
}

/* Location:
 * Qualified Name:     cye
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */