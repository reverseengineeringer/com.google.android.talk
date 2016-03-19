import android.graphics.Rect;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class cbe
  extends View.AccessibilityDelegate
{
  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if ((paramAccessibilityEvent.getEventType() == 4096) || (paramAccessibilityEvent.getEventType() == 2048))
    {
      Rect localRect = new Rect();
      paramViewGroup.getHitRect(localRect);
      if (!paramView.getLocalVisibleRect(localRect)) {
        return false;
      }
    }
    return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     cbe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */