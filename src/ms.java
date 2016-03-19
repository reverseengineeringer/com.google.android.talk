import android.os.Build.VERSION;
import android.view.accessibility.AccessibilityEvent;

public final class ms
{
  public static final mu a = new mu();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new mt();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new mu((byte)0);
      return;
    }
  }
  
  public static nq a(AccessibilityEvent paramAccessibilityEvent)
  {
    return new nq(paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     ms
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */