import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;

final class ix
  implements iu
{
  private final GestureDetector a;
  
  public ix(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler)
  {
    a = new GestureDetector(paramContext, paramOnGestureListener, null);
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    return a.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     ix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */