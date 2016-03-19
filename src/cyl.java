import android.graphics.Bitmap;

final class cyl
  extends cyd
{
  cyl(cyk paramcyk)
  {
    super(paramcyk);
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    hbs.a("Expected null", paramexs);
    if (paramBoolean1) {}
    for (Bitmap localBitmap = parameys.d();; localBitmap = bfq.b())
    {
      Object localObject;
      if (cxt.b)
      {
        localObject = String.valueOf(localBitmap);
        new StringBuilder(String.valueOf(localObject).length() + 38).append("setImageBitmap: success ").append(paramBoolean1).append(" bitmap: ").append((String)localObject);
      }
      ((cw)b.t).a(localBitmap);
      b.u.a(b.t);
      if (cww.a(b.p))
      {
        localObject = new cy(b.p);
        dl localdl = new dl();
        localdl.b();
        localdl.a(localBitmap);
        ((cy)localObject).a(localdl);
        b.v.a(((cy)localObject).g());
      }
      super.a(parameys, paramexs, paramBoolean1, parambhs, paramBoolean2);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     cyl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */