import android.view.View;

class ky
  extends kx
{
  ky() {}
  
  ky(byte paramByte)
  {
    this();
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.setPaddingRelative(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public int u(View paramView)
  {
    return paramView.getLayoutDirection();
  }
  
  public int v(View paramView)
  {
    return paramView.getPaddingStart();
  }
  
  public int w(View paramView)
  {
    return paramView.getPaddingEnd();
  }
  
  public int x(View paramView)
  {
    return paramView.getWindowSystemUiVisibility();
  }
  
  public boolean y(View paramView)
  {
    return paramView.isPaddingRelative();
  }
}

/* Location:
 * Qualified Name:     ky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */