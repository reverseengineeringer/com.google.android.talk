import android.view.View;
import android.view.View.OnAttachStateChangeListener;

final class dlw
  implements View.OnAttachStateChangeListener
{
  dlw(dlv paramdlv) {}
  
  public void onViewAttachedToWindow(View paramView)
  {
    paramView.sendAccessibilityEvent(32);
  }
  
  public void onViewDetachedFromWindow(View paramView) {}
}

/* Location:
 * Qualified Name:     dlw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */