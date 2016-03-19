import android.view.View;
import android.view.ViewParent;

class kx
  extends kv
{
  public void a(View paramView, Runnable paramRunnable)
  {
    paramView.postOnAnimation(paramRunnable);
  }
  
  public void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    paramView.postOnAnimationDelayed(paramRunnable, paramLong);
  }
  
  public void c(View paramView, int paramInt)
  {
    int i = paramInt;
    if (paramInt == 4) {
      i = 2;
    }
    paramView.setImportantForAccessibility(i);
  }
  
  public boolean l(View paramView)
  {
    return paramView.hasTransientState();
  }
  
  public void m(View paramView)
  {
    paramView.postInvalidateOnAnimation();
  }
  
  public int n(View paramView)
  {
    return paramView.getImportantForAccessibility();
  }
  
  public ViewParent o(View paramView)
  {
    return paramView.getParentForAccessibility();
  }
  
  public int p(View paramView)
  {
    return paramView.getMinimumWidth();
  }
  
  public int q(View paramView)
  {
    return paramView.getMinimumHeight();
  }
  
  public void r(View paramView)
  {
    paramView.requestFitSystemWindows();
  }
  
  public boolean s(View paramView)
  {
    return paramView.getFitsSystemWindows();
  }
  
  public boolean t(View paramView)
  {
    return paramView.hasOverlappingRendering();
  }
}

/* Location:
 * Qualified Name:     kx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */