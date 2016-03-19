import android.graphics.SurfaceTexture;
import android.text.TextUtils;
import android.view.Surface;

public final class hlh
{
  public final hgo a;
  public final Surface b;
  public final SurfaceTexture c;
  public String d;
  public int e = -1;
  public int f = -1;
  public int g = 0;
  public boolean h;
  
  public hlh(hcd paramhcd, SurfaceTexture paramSurfaceTexture)
  {
    c = paramSurfaceTexture;
    b = null;
    a = paramhcd.i();
  }
  
  private void d()
  {
    if (c == null) {}
    for (hla localhla = new hla(b, e, f, h); d == null; localhla = new hla(c))
    {
      a.a(localhla, null);
      return;
    }
    a.a(d, localhla);
    a(g);
  }
  
  public void a()
  {
    d = null;
    d();
  }
  
  public void a(int paramInt)
  {
    g = paramInt;
    if (d == null) {}
    hgn localhgn;
    do
    {
      return;
      localhgn = a.a(d);
    } while (!(localhgn instanceof hfu));
    ((hfu)localhgn).c(g);
  }
  
  public void a(String paramString)
  {
    if (!TextUtils.equals(paramString, d))
    {
      d = paramString;
      d();
    }
  }
  
  public hlc b()
  {
    if (d == null) {}
    hgn localhgn;
    do
    {
      return null;
      localhgn = a.a(d);
    } while (localhgn == null);
    return localhgn.n();
  }
  
  public void c()
  {
    if (d == null) {}
    hgn localhgn;
    do
    {
      return;
      localhgn = a.a(d);
    } while (!(localhgn instanceof hfu));
    ((hfu)localhgn).g();
  }
}

/* Location:
 * Qualified Name:     hlh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */