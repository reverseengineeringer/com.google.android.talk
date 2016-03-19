import android.app.Activity;
import android.os.Handler;
import android.os.Looper;

public final class dys
  extends axv
{
  public static dys a = null;
  private static final boolean c;
  Handler b;
  
  static
  {
    imx localimx = ezi.o;
    c = false;
  }
  
  protected void a(Activity paramActivity)
  {
    if (aal.a(aal.oJ, "babel_poll_parasite_operations_periodically", false))
    {
      if (b == null) {
        b = new Handler(Looper.getMainLooper());
      }
      long l = aal.a(aal.oJ, "babel_poll_parasite_operations_interval_ms", eea.l);
      b.postDelayed(new dyt(this, l), l);
    }
  }
  
  protected void b()
  {
    if (b != null) {
      b.removeCallbacksAndMessages(null);
    }
  }
}

/* Location:
 * Qualified Name:     dys
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */