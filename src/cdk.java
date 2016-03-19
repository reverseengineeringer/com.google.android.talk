import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class cdk
  implements View.OnTouchListener
{
  cdk(cdi paramcdi) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    a.i.f();
    if (paramMotionEvent.getAction() == 1) {
      paramView.performClick();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     cdk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */