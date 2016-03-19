import android.util.Printer;
import org.chromium.base.TraceEvent;

public class mnw
  implements Printer
{
  void a(String paramString)
  {
    if (TraceEvent.a) {
      TraceEvent.a();
    }
  }
  
  void b(String paramString)
  {
    if (TraceEvent.a) {
      TraceEvent.b();
    }
  }
  
  public void println(String paramString)
  {
    if (paramString.startsWith(">"))
    {
      a(paramString);
      return;
    }
    b(paramString);
  }
}

/* Location:
 * Qualified Name:     mnw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */