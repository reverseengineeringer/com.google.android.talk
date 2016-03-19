import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class mf
  extends mj
{
  WeakHashMap<View, Integer> a = null;
  
  public long a(View paramView)
  {
    return paramView.animate().getDuration();
  }
  
  public void a(View paramView, long paramLong)
  {
    paramView.animate().setDuration(paramLong);
  }
  
  public void a(View paramView, Interpolator paramInterpolator)
  {
    paramView.animate().setInterpolator(paramInterpolator);
  }
  
  public void a(md parammd, View paramView)
  {
    paramView.animate().cancel();
  }
  
  public void a(md parammd, View paramView, float paramFloat)
  {
    paramView.animate().alpha(paramFloat);
  }
  
  public void a(md parammd, View paramView, mn parammn)
  {
    paramView.setTag(2113929216, parammn);
    parammd = new mg(parammd);
    paramView.animate().setListener(new mk(parammd, paramView));
  }
  
  public void b(View paramView, long paramLong)
  {
    paramView.animate().setStartDelay(paramLong);
  }
  
  public void b(md parammd, View paramView)
  {
    paramView.animate().start();
  }
  
  public void b(md parammd, View paramView, float paramFloat)
  {
    paramView.animate().translationX(paramFloat);
  }
  
  public void c(md parammd, View paramView, float paramFloat)
  {
    paramView.animate().translationY(paramFloat);
  }
}

/* Location:
 * Qualified Name:     mf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */