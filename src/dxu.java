import android.content.Context;
import android.content.res.Resources;

abstract class dxu<R extends dmt, S extends dqf>
  extends byp<R, S>
{
  public final int d;
  private final Context e;
  private final dxv f;
  private final int g;
  
  public dxu(Context paramContext, int paramInt1, dxv paramdxv, int paramInt2)
  {
    e = paramContext;
    d = paramInt1;
    f = paramdxv;
    g = paramInt2;
  }
  
  public String a()
  {
    return e.getResources().getString(g);
  }
  
  protected void a(eau parameau)
  {
    super.a(parameau);
    if (f != null) {
      f.a();
    }
  }
  
  protected void a(Exception paramException)
  {
    super.a(paramException);
    if (f != null) {
      f.b();
    }
  }
  
  public void c() {}
  
  public void d() {}
}

/* Location:
 * Qualified Name:     dxu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */