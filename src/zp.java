import android.view.View;

final class zp
  extends zo
{
  zp(aab paramaab)
  {
    super(paramaab, (byte)0);
  }
  
  public int a(View paramView)
  {
    aac localaac = (aac)paramView.getLayoutParams();
    return a.h(paramView) - leftMargin;
  }
  
  public void a(int paramInt)
  {
    a.g(paramInt);
  }
  
  public int b(View paramView)
  {
    aac localaac = (aac)paramView.getLayoutParams();
    int i = a.j(paramView);
    return rightMargin + i;
  }
  
  public int c()
  {
    return a.y();
  }
  
  public int c(View paramView)
  {
    aac localaac = (aac)paramView.getLayoutParams();
    int i = a.f(paramView);
    int j = leftMargin;
    return rightMargin + (i + j);
  }
  
  public int d()
  {
    return a.w() - a.A();
  }
  
  public int d(View paramView)
  {
    aac localaac = (aac)paramView.getLayoutParams();
    int i = a.g(paramView);
    int j = topMargin;
    return bottomMargin + (i + j);
  }
  
  public int e()
  {
    return a.w();
  }
  
  public int f()
  {
    return a.w() - a.y() - a.A();
  }
  
  public int g()
  {
    return a.A();
  }
}

/* Location:
 * Qualified Name:     zp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */