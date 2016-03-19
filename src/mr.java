import android.view.WindowInsets;

public final class mr
  extends mq
{
  private final WindowInsets a;
  
  public mr(WindowInsets paramWindowInsets)
  {
    a = paramWindowInsets;
  }
  
  public int a()
  {
    return a.getSystemWindowInsetLeft();
  }
  
  public mq a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new mr(a.replaceSystemWindowInsets(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public int b()
  {
    return a.getSystemWindowInsetTop();
  }
  
  public int c()
  {
    return a.getSystemWindowInsetRight();
  }
  
  public int d()
  {
    return a.getSystemWindowInsetBottom();
  }
  
  public WindowInsets e()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     mr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */