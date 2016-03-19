import android.content.Context;
import android.os.Build.VERSION;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;

public final class it
{
  private final iu a;
  
  public it(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
  {
    this(paramContext, paramOnGestureListener, (byte)0);
  }
  
  public it(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, byte paramByte)
  {
    if (Build.VERSION.SDK_INT > 17)
    {
      a = new ix(paramContext, paramOnGestureListener, null);
      return;
    }
    a = new iv(paramContext, paramOnGestureListener, null);
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    return a.a(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     it
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */