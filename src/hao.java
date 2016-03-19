final class hao
  implements ajf<T>, ajg<T>
{
  private final ajf<T> b;
  private final int c;
  private final int d;
  private final aja e;
  private final ham f;
  private boolean g;
  private ajg<? super T> h;
  private ahs i;
  private volatile boolean j;
  
  hao(ajf<T> paramajf, ham paramham, int paramInt1, int paramInt2, aja paramaja)
  {
    b = paramham;
    c = paramInt2;
    d = paramaja;
    aja localaja;
    e = localaja;
    f = paramInt1;
  }
  
  public void a()
  {
    b.a();
  }
  
  public void a(ahs paramahs, ajg<? super T> paramajg)
  {
    i = paramahs;
    h = paramajg;
    b.a(paramahs, this);
  }
  
  public void a(Exception paramException)
  {
    if ((!j) && (!g))
    {
      int k;
      if ((paramException instanceof aiv)) {
        if (403 == ((aiv)paramException).a()) {
          k = 1;
        }
      }
      while (k != 0)
      {
        g = true;
        aal.a(a.b, "Argument must not be null");
        Object localObject = a.a(f, c, d);
        localObject = a.a.a(localObject, c, d, e);
        if (localObject == null)
        {
          a(paramException);
          return;
          k = 0;
          continue;
          k = 0;
        }
        else
        {
          c.a(i, this);
          return;
        }
      }
    }
    h.a(paramException);
  }
  
  public void a(T paramT)
  {
    h.a(paramT);
  }
  
  public void b()
  {
    j = true;
    b.b();
  }
  
  public air c()
  {
    return b.c();
  }
  
  public Class<T> d()
  {
    return b.d();
  }
}

/* Location:
 * Qualified Name:     hao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */