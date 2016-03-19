import android.text.Html;

public final class edl
  extends edm
{
  private final String l;
  
  public edl(egb paramegb)
  {
    super(paramegb.a(), paramegb.b(), paramegb.c(), paramegb.k(), paramegb.j(), paramegb.n(), paramegb.l(), paramegb.m(), paramegb.o(), emc.e, paramegb.p());
    l = Html.fromHtml(d).toString();
  }
  
  public edl(String paramString1, czb paramczb, long paramLong1, long paramLong2, String paramString2, String paramString3, emc paramemc)
  {
    super(paramString1, paramczb, paramLong1, paramLong2, paramString2, null, -1, 1, 0L, paramemc, null);
    l = Html.fromHtml(paramString3).toString();
  }
  
  private void c(bfz parambfz, dyy paramdyy)
  {
    if (l != null)
    {
      long l1 = parambfz.a(f, a, k, g, emd.d, h, i, c, l, null);
      parambfz.a(f, h, i, 5, g, l1, k, l, null);
      bft.d(parambfz, f);
      paramdyy.a(h, parambfz.g().g());
    }
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    parambfz.a();
    try
    {
      c(parambfz, paramdyy);
      a(parambfz);
      if (l != null) {
        parambfz.c(f, l);
      }
      parambfz.b();
      return;
    }
    finally
    {
      parambfz.c();
    }
  }
  
  public void b(bfz parambfz, dyy paramdyy)
  {
    c(parambfz, paramdyy);
    a(parambfz);
  }
}

/* Location:
 * Qualified Name:     edl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */