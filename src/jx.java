import android.os.Build.VERSION;
import android.view.MotionEvent;

public final class jx
{
  public static final kb a = new kb();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 12)
    {
      a = new ka();
      return;
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      a = new jz();
      return;
    }
    if (Build.VERSION.SDK_INT >= 5)
    {
      a = new jy();
      return;
    }
  }
  
  public static int a(MotionEvent paramMotionEvent)
  {
    return paramMotionEvent.getAction() & 0xFF;
  }
  
  public static int a(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.a(paramMotionEvent, paramInt);
  }
  
  public static int b(MotionEvent paramMotionEvent)
  {
    return paramMotionEvent.getAction() >> 8 & 0xFF;
  }
  
  public static int b(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.b(paramMotionEvent, paramInt);
  }
  
  public static float c(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.c(paramMotionEvent, paramInt);
  }
  
  public static float d(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.d(paramMotionEvent, paramInt);
  }
  
  public static float e(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.e(paramMotionEvent, paramInt);
  }
}

/* Location:
 * Qualified Name:     jx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */