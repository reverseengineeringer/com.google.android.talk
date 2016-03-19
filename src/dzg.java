import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class dzg
  implements Runnable
{
  public dzg(eff parameff, bfd parambfd, dvn paramdvn) {}
  
  public void run()
  {
    Iterator localIterator = RealTimeChatService.f.iterator();
    while (localIterator.hasNext()) {
      ((eap)localIterator.next()).a(a.c(), b, a, c);
    }
    RealTimeChatService.a(b, c);
  }
}

/* Location:
 * Qualified Name:     dzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */