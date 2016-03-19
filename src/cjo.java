import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class cjo
  implements View.OnTouchListener
{
  cjo(cjn paramcjn) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0) {
      paramView.setAlpha(0.2F);
    }
    while (paramMotionEvent.getAction() != 1) {
      return false;
    }
    paramView.setAlpha(1.0F);
    paramView.performClick();
    return true;
  }
}

/* Location:
 * Qualified Name:     cjo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */