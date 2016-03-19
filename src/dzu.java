import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class dzu
  implements Runnable
{
  public dzu(bfd parambfd, dsq paramdsq) {}
  
  public void run()
  {
    Iterator localIterator = RealTimeChatService.f.iterator();
    while (localIterator.hasNext()) {
      ((eap)localIterator.next()).V();
    }
  }
}

/* Location:
 * Qualified Name:     dzu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */