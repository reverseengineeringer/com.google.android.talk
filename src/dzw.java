import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class dzw
  implements Runnable
{
  public dzw(dqt paramdqt) {}
  
  public void run()
  {
    Iterator localIterator = RealTimeChatService.f.iterator();
    while (localIterator.hasNext())
    {
      eap localeap = (eap)localIterator.next();
      a.b();
      a.k();
      localeap.X();
    }
  }
}

/* Location:
 * Qualified Name:     dzw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */