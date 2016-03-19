import android.view.View;

class kz
  extends ky
{
  kz()
  {
    super((byte)0);
  }
  
  public boolean A(View paramView)
  {
    return paramView.isAttachedToWindow();
  }
  
  public void c(View paramView, int paramInt)
  {
    paramView.setImportantForAccessibility(paramInt);
  }
  
  public void d(View paramView, int paramInt)
  {
    paramView.setAccessibilityLiveRegion(paramInt);
  }
  
  public boolean z(View paramView)
  {
    return paramView.isLaidOut();
  }
}

/* Location:
 * Qualified Name:     kz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */