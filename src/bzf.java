import android.content.res.Resources;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.apps.hangouts.fragments.CallContactPickerFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.List;

public final class bzf
  extends View.AccessibilityDelegate
{
  public bzf(CallContactPickerFragment paramCallContactPickerFragment) {}
  
  public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      paramAccessibilityEvent.getText().add(paramView.getResources().getString(StressMode.bs));
      return true;
    }
    return super.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     bzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */