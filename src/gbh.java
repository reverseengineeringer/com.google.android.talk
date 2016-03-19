public abstract class gbh<M extends gbh<M>>
  extends gbn
{
  public gbj o;
  
  protected int a()
  {
    int j = 0;
    if (o != null)
    {
      int i = 0;
      for (;;)
      {
        k = i;
        if (j >= o.a()) {
          break;
        }
        i += o.b(j).a();
        j += 1;
      }
    }
    int k = 0;
    return k;
  }
  
  public void a(gbg paramgbg)
  {
    if (o == null) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < o.a())
      {
        o.b(i).a(paramgbg);
        i += 1;
      }
    }
  }
  
  protected final boolean a(gbf paramgbf, int paramInt)
  {
    int i = paramgbf.m();
    if (!paramgbf.b(paramInt)) {
      return false;
    }
    int j = paramInt >>> 3;
    gbo localgbo = new gbo(paramInt, paramgbf.a(i, paramgbf.m() - i));
    paramgbf = null;
    if (o == null) {
      o = new gbj();
    }
    for (;;)
    {
      Object localObject = paramgbf;
      if (paramgbf == null)
      {
        localObject = new gbk();
        o.a(j, (gbk)localObject);
      }
      ((gbk)localObject).a(localgbo);
      return true;
      paramgbf = o.a(j);
    }
  }
  
  protected final boolean a(M paramM)
  {
    if ((o == null) || (o.b())) {
      return (o == null) || (o.b());
    }
    return o.equals(o);
  }
  
  protected final int c()
  {
    if ((o == null) || (o.b())) {
      return 0;
    }
    return o.hashCode();
  }
  
  public M d()
  {
    gbh localgbh = (gbh)super.e();
    gbl.a(this, localgbh);
    return localgbh;
  }
}

/* Location:
 * Qualified Name:     gbh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */