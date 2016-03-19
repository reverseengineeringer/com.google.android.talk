import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class eab
  implements Runnable
{
  public eab(String paramString1, String paramString2) {}
  
  public void run()
  {
    Iterator localIterator = RealTimeChatService.f.iterator();
    while (localIterator.hasNext()) {
      ((eap)localIterator.next()).b(a, b);
    }
  }
}

/* Location:
 * Qualified Name:     eab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */