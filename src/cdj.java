import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class cdj
  implements View.OnTouchListener
{
  cdj(cdi paramcdi) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    a.i.q();
    if (paramMotionEvent.getAction() == 1) {
      paramView.performClick();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     cdj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */