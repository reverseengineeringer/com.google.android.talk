import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
import android.view.accessibility.AccessibilityNodeInfo.CollectionInfo;
import android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo;

final class na
  extends nf
{
  na() {}
  
  na(byte paramByte)
  {
    this();
  }
  
  public Object a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
  {
    return AccessibilityNodeInfo.CollectionItemInfo.obtain(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1, false);
  }
  
  public Object a(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    return AccessibilityNodeInfo.CollectionInfo.obtain(paramInt1, paramInt2, false, 0);
  }
  
  public Object a(int paramInt, CharSequence paramCharSequence)
  {
    return new AccessibilityNodeInfo.AccessibilityAction(paramInt, null);
  }
  
  public boolean a(Object paramObject1, Object paramObject2)
  {
    return ((AccessibilityNodeInfo)paramObject1).removeAction((AccessibilityNodeInfo.AccessibilityAction)paramObject2);
  }
}

/* Location:
 * Qualified Name:     na
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */