public abstract class lyb<M extends lyb<M>>
  extends lyi
{
  public lyd eD;
  
  public final <T> M a(lyc<M, T> paramlyc, T paramT)
  {
    int i = c >>> 3;
    lye locallye = null;
    if (eD == null) {
      eD = new lyd();
    }
    while (locallye == null)
    {
      eD.a(i, new lye(paramlyc, paramT));
      return this;
      locallye = eD.a(i);
    }
    locallye.a(paramlyc, paramT);
    return this;
  }
  
  public void a(lxz paramlxz)
  {
    if (eD == null) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < eD.a())
      {
        eD.b(i).a(paramlxz);
        i += 1;
      }
    }
  }
  
  public final boolean a(lxy paramlxy, int paramInt)
  {
    int i = paramlxy.r();
    if (!paramlxy.b(paramInt)) {
      return false;
    }
    int j = paramInt >>> 3;
    lym locallym = new lym(paramInt, paramlxy.a(i, paramlxy.r() - i));
    paramlxy = null;
    if (eD == null) {
      eD = new lyd();
    }
    for (;;)
    {
      Object localObject = paramlxy;
      if (paramlxy == null)
      {
        localObject = new lye();
        eD.a(j, (lye)localObject);
      }
      ((lye)localObject).a(locallym);
      return true;
      paramlxy = eD.a(j);
    }
  }
  
  public final boolean a(lyc<M, ?> paramlyc)
  {
    if (eD == null) {}
    while (eD.a(c >>> 3) == null) {
      return false;
    }
    return true;
  }
  
  public int b()
  {
    int j = 0;
    if (eD != null)
    {
      int i = 0;
      for (;;)
      {
        k = i;
        if (j >= eD.a()) {
          break;
        }
        i += eD.b(j).a();
        j += 1;
      }
    }
    int k = 0;
    return k;
  }
  
  public final <T> T b(lyc<M, T> paramlyc)
  {
    if (eD == null) {}
    lye locallye;
    do
    {
      return null;
      locallye = eD.a(c >>> 3);
    } while (locallye == null);
    return (T)locallye.a(paramlyc);
  }
  
  public M j()
  {
    lyb locallyb = (lyb)super.k();
    lyf.a(this, locallyb);
    return locallyb;
  }
}

/* Location:
 * Qualified Name:     lyb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */