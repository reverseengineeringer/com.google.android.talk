import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class dzf
  implements Runnable
{
  public void run()
  {
    Iterator localIterator = RealTimeChatService.f.iterator();
    while (localIterator.hasNext()) {
      ((eap)localIterator.next()).b();
    }
  }
}

/* Location:
 * Qualified Name:     dzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */