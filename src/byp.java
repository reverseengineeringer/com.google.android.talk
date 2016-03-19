import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public abstract class byp<R extends doo, S extends dqf>
  implements byn
{
  public int a = -1;
  public byo b = null;
  final Object c = new Object();
  private final Handler d = new Handler();
  private final eap e = new byq(this);
  private final Runnable f = new byr(this);
  
  public static boolean j()
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)aal.oJ.getSystemService("connectivity");
    return (localConnectivityManager != null) && (localConnectivityManager.getActiveNetworkInfo() != null) && (localConnectivityManager.getActiveNetworkInfo().isConnected());
  }
  
  public void a(byo parambyo)
  {
    b = parambyo;
  }
  
  public void a(eau parameau)
  {
    RealTimeChatService.b(e);
    d.removeCallbacks(f);
    if (b != null) {
      b.a(this);
    }
  }
  
  public void a(Exception paramException)
  {
    RealTimeChatService.b(e);
    d.removeCallbacks(f);
    if (b != null) {
      b.b(this);
    }
  }
  
  public abstract int b();
  
  public void c() {}
  
  public void d() {}
  
  public abstract Class<R> e();
  
  public abstract Class<S> f();
  
  public void g()
  {
    RealTimeChatService.a(e);
    synchronized (c)
    {
      a = b();
      if (a < 0)
      {
        a(new byt());
        ezi.e("Babel", String.valueOf(getClass().getName()).concat(" failed to start!"), new Object[0]);
      }
      while (i() <= 0) {
        return;
      }
      d.postDelayed(f, i());
    }
  }
  
  public void h()
  {
    RealTimeChatService.b(e);
    a = -1;
    d.removeCallbacks(f);
  }
  
  public int i()
  {
    return -1;
  }
}

/* Location:
 * Qualified Name:     byp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */