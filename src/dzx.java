import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class dzx
  implements Runnable
{
  public dzx(dqh paramdqh) {}
  
  public void run()
  {
    Iterator localIterator = RealTimeChatService.f.iterator();
    while (localIterator.hasNext()) {
      ((eap)localIterator.next()).a(a.b(), a.k());
    }
  }
}

/* Location:
 * Qualified Name:     dzx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */