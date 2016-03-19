import android.view.accessibility.AccessibilityNodeInfo;

class nd
  extends nb
{
  nd() {}
  
  nd(byte paramByte)
  {
    this();
  }
  
  public void h(Object paramObject, boolean paramBoolean)
  {
    ((AccessibilityNodeInfo)paramObject).setVisibleToUser(paramBoolean);
  }
  
  public void i(Object paramObject, boolean paramBoolean)
  {
    ((AccessibilityNodeInfo)paramObject).setAccessibilityFocused(paramBoolean);
  }
  
  public boolean r(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isVisibleToUser();
  }
  
  public boolean s(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isAccessibilityFocused();
  }
}

/* Location:
 * Qualified Name:     nd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */