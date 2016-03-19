import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class mj
{
  WeakHashMap<View, Runnable> b = null;
  
  public long a(View paramView)
  {
    return 0L;
  }
  
  public void a(View paramView, long paramLong) {}
  
  public void a(View paramView, Interpolator paramInterpolator) {}
  
  public void a(View paramView, mp parammp) {}
  
  public void a(md parammd, View paramView)
  {
    d(parammd, paramView);
  }
  
  public void a(md parammd, View paramView, float paramFloat)
  {
    d(parammd, paramView);
  }
  
  public void a(md parammd, View paramView, mn parammn)
  {
    paramView.setTag(2113929216, parammn);
  }
  
  public void b(View paramView, long paramLong) {}
  
  public void b(md parammd, View paramView)
  {
    if (b != null)
    {
      Runnable localRunnable = (Runnable)b.get(paramView);
      if (localRunnable != null) {
        paramView.removeCallbacks(localRunnable);
      }
    }
    c(parammd, paramView);
  }
  
  public void b(md parammd, View paramView, float paramFloat)
  {
    d(parammd, paramView);
  }
  
  void c(md parammd, View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof mn)) {}
    for (localObject = (mn)localObject;; localObject = null)
    {
      Runnable localRunnable = a;
      parammd = b;
      if (localRunnable != null) {
        localRunnable.run();
      }
      if (localObject != null)
      {
        ((mn)localObject).a(paramView);
        ((mn)localObject).b(paramView);
      }
      if (parammd != null) {
        parammd.run();
      }
      if (b != null) {
        b.remove(paramView);
      }
      return;
    }
  }
  
  public void c(md parammd, View paramView, float paramFloat)
  {
    d(parammd, paramView);
  }
  
  void d(md parammd, View paramView)
  {
    Runnable localRunnable = null;
    if (b != null) {
      localRunnable = (Runnable)b.get(paramView);
    }
    Object localObject = localRunnable;
    if (localRunnable == null)
    {
      localObject = new me(this, parammd, paramView);
      if (b == null) {
        b = new WeakHashMap();
      }
      b.put(paramView, localObject);
    }
    paramView.removeCallbacks((Runnable)localObject);
    paramView.post((Runnable)localObject);
  }
}

/* Location:
 * Qualified Name:     mj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */