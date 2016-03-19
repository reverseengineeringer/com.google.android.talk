import android.content.Intent;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public final class jua
{
  static final Map<Integer, jtn> a = new HashMap();
  private static final AtomicInteger b = new AtomicInteger();
  
  public static Runnable a(Runnable paramRunnable)
  {
    return a(jud.a(), paramRunnable);
  }
  
  static Runnable a(jtn paramjtn, Runnable paramRunnable)
  {
    return new jub(paramjtn, paramRunnable);
  }
  
  public static jtn a(Intent paramIntent)
  {
    if (paramIntent.hasExtra("tracing_intent_id"))
    {
      int i = paramIntent.getIntExtra("tracing_intent_id", -1);
      return (jtn)a.remove(Integer.valueOf(i));
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     jua
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */