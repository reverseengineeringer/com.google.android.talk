public final class edp
  extends edm
{
  private final int l;
  private final int m;
  private final int n;
  private final long o;
  
  public edp(egm paramegm)
  {
    super(paramegm.a(), paramegm.b(), paramegm.c(), paramegm.k(), paramegm.j(), paramegm.n(), paramegm.l(), paramegm.m(), paramegm.o(), emc.e, paramegm.p());
    l = paramegm.d();
    m = paramegm.e();
    n = paramegm.g();
    o = aal.a(Long.valueOf(paramegm.k()), 0L);
  }
  
  public edp(String paramString1, czb paramczb, long paramLong1, long paramLong2, String paramString2, String paramString3, int paramInt, emc paramemc)
  {
    super(paramString1, paramczb, paramLong1, paramLong2, paramString2, paramString3, -1, 1, 0L, paramemc, null);
    l = -1;
    m = paramInt;
    n = -1;
    o = aal.a(Long.valueOf(paramLong2), 0L);
  }
  
  private void d(bfz parambfz)
  {
    if (m == 1) {}
    for (emd localemd = emd.j;; localemd = emd.k)
    {
      parambfz.a(f, a, k, g, localemd, h, o, c, null, null);
      return;
    }
  }
  
  public void b(bfz parambfz)
  {
    parambfz.a();
    try
    {
      d(parambfz);
      a(parambfz);
      if (o > 0L) {
        parambfz.a(m, n, h, f);
      }
      parambfz.b();
      parambfz.c();
      bft.d(parambfz, f);
      return;
    }
    finally
    {
      parambfz.c();
    }
  }
  
  public void c(bfz parambfz)
  {
    d(parambfz);
    a(parambfz);
  }
}

/* Location:
 * Qualified Name:     edp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */