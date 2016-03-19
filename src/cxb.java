import android.content.Context;
import android.content.Intent;

public abstract class cxb
  extends cxi
{
  public static final String a;
  static cxf b = new cxf();
  private final long c;
  
  static
  {
    String str = String.valueOf("notified_for_failure!=1 AND conversation_pending_leave!=1 AND status!=");
    int i = emc.e.ordinal();
    a = String.valueOf(str).length() + 11 + str + i;
  }
  
  protected cxb(Context paramContext, int paramInt, exn paramexn, long paramLong)
  {
    super(paramContext, paramInt, paramexn);
    c = paramLong;
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    String str = c(paramContext, paramInt);
    paramContext = du.a(paramContext);
    cyb.a(str, 7);
    paramContext.a(str, 7);
  }
  
  protected void a(boolean paramBoolean)
  {
    u.a(c);
    super.a(paramBoolean);
  }
  
  protected Intent b()
  {
    return new cxd().a(p, q, r.b());
  }
  
  protected int e()
  {
    return 7;
  }
  
  protected int f()
  {
    return aal.a(p, "babel_notify_chat_priority_level", 1);
  }
  
  protected void i()
  {
    aal.a(dvd.e(q), 1931);
  }
}

/* Location:
 * Qualified Name:     cxb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */