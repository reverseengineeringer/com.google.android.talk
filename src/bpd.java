import android.os.Handler;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

final class bpd
  implements Runnable
{
  bpd(bpc parambpc) {}
  
  public void run()
  {
    bjb localbjb = a.a.i.a();
    if (a != null) {
      RealTimeChatService.l(a.a.at, a);
    }
    if (a.a.at != null)
    {
      int i = a.a.at.g();
      if (dvp.h.b(i)) {
        a.a.aS.postDelayed(this, bng.d);
      }
    }
  }
}

/* Location:
 * Qualified Name:     bpd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */