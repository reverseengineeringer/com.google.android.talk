import android.os.Handler;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class esz
  extends eap
{
  final eqp a;
  private etb b;
  private final int c;
  private final String d;
  private final String e;
  private String f;
  private int g;
  private final Handler h = new Handler();
  private final Runnable i = new eta(this);
  
  public esz(int paramInt, String paramString1, String paramString2, etb parametb, eqp parameqp)
  {
    c = paramInt;
    d = paramString1;
    e = paramString2;
    b = parametb;
    a = parameqp;
  }
  
  public void a(int paramInt, bfd parambfd, eau parameau)
  {
    if ((g != 0) && (g == paramInt))
    {
      a.a(new int[] { 202 });
      parambfd = parameau.c();
      if (c.b == 1)
      {
        parambfd = ((dqt)parambfd).k();
        if (parambfd != null) {
          f = parambfd.a();
        }
      }
      a(false);
    }
  }
  
  public void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    if ((g != 0) && (g == paramInt))
    {
      a.a(new int[] { 203 });
      parambfd = String.valueOf(paramdvn);
      ezi.c("Babel_telephony", String.valueOf(parambfd).length() + 50 + "TeleProxyNumberHelper, internal error, exception: " + parambfd, new Object[0]);
      a(false);
    }
  }
  
  void a(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      RealTimeChatService.b(this);
      g = 0;
    }
    h.removeCallbacks(i);
    if (b != null)
    {
      if (f != null) {
        b.a(f);
      }
    }
    else {
      return;
    }
    b.a();
  }
  
  public void d()
  {
    a.a(new int[] { 201 });
    g = RealTimeChatService.c(c, d, e);
    if (g == 0)
    {
      ezi.c("Babel_telephony", "TeleProxyNumberHelper, invalid response.", new Object[0]);
      a(false);
      return;
    }
    int j = aal.a(aal.oJ, "babel_wifi_call_get_proxy_number_request_timeout", 5000);
    h.postDelayed(i, j);
    RealTimeChatService.a(this);
  }
  
  public void e()
  {
    ezi.c("Babel_telephony", "TeleProxyNumberHelper, request cancelled.", new Object[0]);
    b = null;
    a(false);
  }
}

/* Location:
 * Qualified Name:     esz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */