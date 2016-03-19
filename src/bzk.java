import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;

public final class bzk
{
  boolean a;
  private final Context b;
  private boolean c;
  private PhoneStateListener d;
  private TelephonyManager e;
  
  public bzk(Context paramContext)
  {
    b = paramContext;
  }
  
  public void a()
  {
    c = false;
    if (d != null)
    {
      e.listen(d, 0);
      d = null;
    }
  }
  
  public void a(bzm parambzm)
  {
    hbs.b("Expected condition to be false", c);
    c = true;
    e = ((TelephonyManager)b.getSystemService("phone"));
    if (e == null)
    {
      ezi.c("Babel", "couldn't retrieve TelephonyManager!", new Object[0]);
      parambzm.a();
      return;
    }
    d = new bzl(this, parambzm);
    e.listen(d, 1);
  }
}

/* Location:
 * Qualified Name:     bzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */