import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

public final class md
{
  static final mj d = new mj();
  Runnable a = null;
  Runnable b = null;
  int c = -1;
  private WeakReference<View> e;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      d = new mi((byte)0);
      return;
    }
    if (i >= 19)
    {
      d = new mi();
      return;
    }
    if (i >= 18)
    {
      d = new mh((byte)0);
      return;
    }
    if (i >= 16)
    {
      d = new mh();
      return;
    }
    if (i >= 14)
    {
      d = new mf();
      return;
    }
  }
  
  md(View paramView)
  {
    e = new WeakReference(paramView);
  }
  
  public long a()
  {
    View localView = (View)e.get();
    if (localView != null) {
      return d.a(localView);
    }
    return 0L;
  }
  
  public md a(float paramFloat)
  {
    View localView = (View)e.get();
    if (localView != null) {
      d.a(this, localView, paramFloat);
    }
    return this;
  }
  
  public md a(long paramLong)
  {
    View localView = (View)e.get();
    if (localView != null) {
      d.a(localView, paramLong);
    }
    return this;
  }
  
  public md a(Interpolator paramInterpolator)
  {
    View localView = (View)e.get();
    if (localView != null) {
      d.a(localView, paramInterpolator);
    }
    return this;
  }
  
  public md a(mn parammn)
  {
    View localView = (View)e.get();
    if (localView != null) {
      d.a(this, localView, parammn);
    }
    return this;
  }
  
  public md a(mp parammp)
  {
    View localView = (View)e.get();
    if (localView != null) {
      d.a(localView, parammp);
    }
    return this;
  }
  
  public md b(float paramFloat)
  {
    View localView = (View)e.get();
    if (localView != null) {
      d.b(this, localView, paramFloat);
    }
    return this;
  }
  
  public md b(long paramLong)
  {
    View localView = (View)e.get();
    if (localView != null) {
      d.b(localView, paramLong);
    }
    return this;
  }
  
  public void b()
  {
    View localView = (View)e.get();
    if (localView != null) {
      d.a(this, localView);
    }
  }
  
  public md c(float paramFloat)
  {
    View localView = (View)e.get();
    if (localView != null) {
      d.c(this, localView, paramFloat);
    }
    return this;
  }
  
  public void c()
  {
    View localView = (View)e.get();
    if (localView != null) {
      d.b(this, localView);
    }
  }
}

/* Location:
 * Qualified Name:     md
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */