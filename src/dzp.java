import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class dzp
  implements Runnable
{
  public dzp(String paramString, List paramList) {}
  
  public void run()
  {
    Iterator localIterator = RealTimeChatService.f.iterator();
    while (localIterator.hasNext()) {
      ((eap)localIterator.next()).a(a, b);
    }
  }
}

/* Location:
 * Qualified Name:     dzp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */