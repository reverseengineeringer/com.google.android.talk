import android.os.Bundle;
import android.view.View;
import android.view.View.AccessibilityDelegate;

final class il
  extends ij
{
  public Object a(ii paramii)
  {
    return new io(new ip(this, paramii));
  }
  
  public ni a(Object paramObject, View paramView)
  {
    paramObject = ((View.AccessibilityDelegate)paramObject).getAccessibilityNodeProvider(paramView);
    if (paramObject != null) {
      return new ni(paramObject);
    }
    return null;
  }
  
  public boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return ((View.AccessibilityDelegate)paramObject).performAccessibilityAction(paramView, paramInt, paramBundle);
  }
}

/* Location:
 * Qualified Name:     il
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */