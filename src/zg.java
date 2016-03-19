import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

final class zg
  implements Runnable
{
  zg(ze paramze) {}
  
  public void run()
  {
    ze localze = a;
    localze.d();
    View localView = c;
    if ((!localView.isEnabled()) || (localView.isLongClickable())) {}
    while (!localze.b()) {
      return;
    }
    localView.getParent().requestDisallowInterceptTouchEvent(true);
    long l = SystemClock.uptimeMillis();
    MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
    localView.onTouchEvent(localMotionEvent);
    localMotionEvent.recycle();
    d = true;
    e = true;
  }
}

/* Location:
 * Qualified Name:     zg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */