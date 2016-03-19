import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ListView;

public final class eww
  extends View.AccessibilityDelegate
{
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    if (!(paramView instanceof ListView)) {}
    do
    {
      return;
      paramView = (ListView)paramView;
    } while (((paramAccessibilityEvent.getEventType() != 4096) && (paramAccessibilityEvent.getEventType() != 2048)) || ((paramAccessibilityEvent.getEventType() != 4096) && (paramAccessibilityEvent.getEventType() != 2048)));
    int i = paramView.getHeaderViewsCount();
    int j = paramView.getFooterViewsCount();
    int k = paramAccessibilityEvent.getItemCount();
    int n = paramAccessibilityEvent.getFromIndex();
    int m = paramAccessibilityEvent.getToIndex();
    if ((i + j >= k) || (m < i) || (n >= k - j))
    {
      paramAccessibilityEvent.setItemCount(0);
      return;
    }
    paramAccessibilityEvent.setItemCount(k - i - j);
    n = Math.max(0, n - i);
    i = Math.min(k - i - j - 1, m - i);
    paramAccessibilityEvent.setFromIndex(n);
    paramAccessibilityEvent.setToIndex(i);
  }
}

/* Location:
 * Qualified Name:     eww
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */