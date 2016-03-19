import android.content.Context;
import android.os.Handler;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class evr
  extends eap
{
  private final Context a;
  private evt b;
  private final int c;
  private int d = -1;
  private final Handler e = new Handler();
  private final Runnable f = new evs(this);
  
  public evr(Context paramContext, int paramInt, evt paramevt)
  {
    a = paramContext;
    c = paramInt;
    b = paramevt;
  }
  
  public void a(int paramInt, bfd parambfd, eau parameau)
  {
    boolean bool = true;
    if (d == paramInt) {
      if (cc.b != 1) {
        break label32;
      }
    }
    for (;;)
    {
      a(bool);
      return;
      label32:
      bool = false;
    }
  }
  
  public void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    if (d == paramInt) {
      a(false);
    }
  }
  
  void a(boolean paramBoolean)
  {
    RealTimeChatService.b(this);
    e.removeCallbacks(f);
    if (b != null)
    {
      if (paramBoolean) {
        b.a();
      }
    }
    else {
      return;
    }
    b.b();
  }
  
  public void d()
  {
    d = RealTimeChatService.f(c);
    if (d < 0)
    {
      a(false);
      return;
    }
    int i = aal.a(a, "babel_wifi_call_enable_voice_calling_request_timeout", 20000);
    e.postDelayed(f, i);
    RealTimeChatService.a(this);
  }
  
  public void e()
  {
    b = null;
    a(false);
  }
}

/* Location:
 * Qualified Name:     evr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */