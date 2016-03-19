import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class cbc
  implements View.OnTouchListener
{
  cbc(cav paramcav) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    if (i == 0)
    {
      a.i.removeCallbacks(a.h);
      if (a.c != null) {
        a.c.a();
      }
      a.i.postDelayed(a.h, 400L);
    }
    for (;;)
    {
      return false;
      if (i == 1)
      {
        a.i.removeCallbacks(a.h);
        paramView.performClick();
      }
    }
  }
}

/* Location:
 * Qualified Name:     cbc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */