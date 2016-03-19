import android.content.Context;
import android.os.Handler;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class evu
  extends eap
{
  private evw a;
  private final int b;
  private int c = -1;
  private final Handler d = new Handler();
  private final Runnable e = new evv(this);
  
  public evu(int paramInt, evw paramevw)
  {
    b = paramInt;
    a = paramevw;
  }
  
  public void a(int paramInt, bfd parambfd, eau parameau)
  {
    boolean bool = true;
    if (c == paramInt) {
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
    if (c == paramInt) {
      a(false);
    }
  }
  
  public void a(Context paramContext)
  {
    c = RealTimeChatService.e(b);
    if (c < 0)
    {
      a(false);
      return;
    }
    int i = aal.a(paramContext, "babel_wifi_call_get_voice_account_info_request_timeout", 20000);
    d.postDelayed(e, i);
    RealTimeChatService.a(this);
  }
  
  void a(boolean paramBoolean)
  {
    RealTimeChatService.b(this);
    d.removeCallbacks(e);
    if (a != null)
    {
      if (paramBoolean) {
        a.a();
      }
    }
    else {
      return;
    }
    a.b();
  }
  
  public void d()
  {
    a = null;
    a(false);
  }
}

/* Location:
 * Qualified Name:     evu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */