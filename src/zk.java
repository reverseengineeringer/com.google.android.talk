import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;

final class zk
  implements View.OnTouchListener
{
  zk(za paramza) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    if ((i == 0) && (a.d != null) && (a.d.isShowing()) && (j >= 0) && (j < a.d.getWidth()) && (k >= 0) && (k < a.d.getHeight())) {
      a.h.postDelayed(a.g, 250L);
    }
    for (;;)
    {
      return false;
      if (i == 1) {
        a.h.removeCallbacks(a.g);
      }
    }
  }
}

/* Location:
 * Qualified Name:     zk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */