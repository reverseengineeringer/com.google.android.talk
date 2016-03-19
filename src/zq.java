import android.view.View;

final class zq
  extends zo
{
  zq(aab paramaab)
  {
    super(paramaab, (byte)0);
  }
  
  public int a(View paramView)
  {
    aac localaac = (aac)paramView.getLayoutParams();
    return a.i(paramView) - topMargin;
  }
  
  public void a(int paramInt)
  {
    a.h(paramInt);
  }
  
  public int b(View paramView)
  {
    aac localaac = (aac)paramView.getLayoutParams();
    int i = a.k(paramView);
    return bottomMargin + i;
  }
  
  public int c()
  {
    return a.z();
  }
  
  public int c(View paramView)
  {
    aac localaac = (aac)paramView.getLayoutParams();
    int i = a.g(paramView);
    int j = topMargin;
    return bottomMargin + (i + j);
  }
  
  public int d()
  {
    return a.x() - a.B();
  }
  
  public int d(View paramView)
  {
    aac localaac = (aac)paramView.getLayoutParams();
    int i = a.f(paramView);
    int j = leftMargin;
    return rightMargin + (i + j);
  }
  
  public int e()
  {
    return a.x();
  }
  
  public int f()
  {
    return a.x() - a.z() - a.B();
  }
  
  public int g()
  {
    return a.B();
  }
}

/* Location:
 * Qualified Name:     zq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */