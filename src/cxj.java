import android.content.Context;
import android.content.Intent;

public abstract class cxj
  extends cyb
{
  static final boolean a = false;
  static cxn g = new cxn();
  public String b;
  public CharSequence c = null;
  public final long d;
  public int e;
  public String f;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  cxj(Context paramContext, int paramInt1, int paramInt2, exn paramexn, long paramLong)
  {
    super(paramContext, paramInt1, paramexn);
    e = paramInt2;
    if (paramLong > 0L) {}
    for (;;)
    {
      d = paramLong;
      return;
      paramLong = System.currentTimeMillis();
    }
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    cyg.a(paramContext, paramInt, null);
    cxy.b(paramContext, paramInt);
  }
  
  protected Intent b()
  {
    return new cxk().a(p, q, r.b());
  }
}

/* Location:
 * Qualified Name:     cxj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */