import android.content.Context;
import android.os.Build.VERSION;

public final class ahl
{
  private final Context a;
  private alh b;
  private amd c;
  private aly d;
  private ane e;
  private anm f;
  private anm g;
  private amv h;
  private ang i;
  private ati j;
  private int k = 4;
  private auk l = new auk();
  
  ahl(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }
  
  ahk a()
  {
    if (f == null) {
      f = new anm(anm.a(), "source", anq.d, false);
    }
    if (g == null) {
      g = new anm(1, "disk-cache", anq.d, true);
    }
    if (i == null) {
      i = new anh(a).a();
    }
    if (j == null) {
      j = new ati();
    }
    if (c == null) {
      if (Build.VERSION.SDK_INT < 11) {
        break label309;
      }
    }
    label309:
    for (c = new amm(i.b());; c = new ame())
    {
      if (d == null) {
        d = new aly(i.c());
      }
      if (e == null) {
        e = new and(i.a());
      }
      if (h == null) {
        h = new amv(a);
      }
      if (b == null) {
        b = new alh(e, h, g, f);
      }
      Context localContext = a;
      alh localalh = b;
      ane localane = e;
      amd localamd = c;
      aly localaly = d;
      ati localati = j;
      int m = k;
      auk localauk = l;
      t = true;
      return new ahk(localContext, localalh, localane, localamd, localaly, localati, m, (auk)localauk);
    }
  }
  
  public ahl a(auk paramauk)
  {
    l = paramauk;
    return this;
  }
}

/* Location:
 * Qualified Name:     ahl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */