import android.content.Context;
import android.support.v7.internal.widget.ContentFrameLayout;
import android.view.KeyEvent;
import android.view.MotionEvent;

final class rx
  extends ContentFrameLayout
{
  public rx(ri paramri, Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (a.a(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      int i = (int)paramMotionEvent.getX();
      int j = (int)paramMotionEvent.getY();
      if ((i < -5) || (j < -5) || (i > getWidth() + 5) || (j > getHeight() + 5)) {}
      for (i = 1; i != 0; i = 0)
      {
        paramMotionEvent = a;
        paramMotionEvent.a(paramMotionEvent.e(0), true);
        return true;
      }
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public void setBackgroundResource(int paramInt)
  {
    setBackgroundDrawable(vv.a(getContext(), paramInt));
  }
}

/* Location:
 * Qualified Name:     rx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */