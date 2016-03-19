import android.content.Context;
import android.os.Bundle;
import android.os.Handler;

public final class edt
  implements ilu, ios, iov, ioz
{
  hpu a;
  bdp b;
  eat c;
  Runnable d;
  
  public edt(iog paramiog)
  {
    paramiog.a(this);
  }
  
  public void X_()
  {
    if (d == null) {}
    for (boolean bool = true;; bool = false)
    {
      aen.b(bool, "requestWarmSyncRunnable should be null");
      d = new edu(this);
      aal.a(d);
      return;
    }
  }
  
  public void a()
  {
    Runnable localRunnable = d;
    aal.y().removeCallbacks(localRunnable);
    d = null;
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    a = ((hpu)paramilh.a(hpu.class));
    b = ((bdp)paramilh.a(bdp.class));
    c = ((eat)paramilh.a(eat.class));
  }
}

/* Location:
 * Qualified Name:     edt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */