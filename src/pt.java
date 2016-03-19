import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

class pt
  implements pr
{
  public Object a(Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInterpolator != null) {
      return new OverScroller(paramContext, paramInterpolator);
    }
    return new OverScroller(paramContext);
  }
  
  public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ((OverScroller)paramObject).startScroll(paramInt1, paramInt2, 0, paramInt4);
  }
  
  public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ((OverScroller)paramObject).startScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    ((OverScroller)paramObject).fling(0, 0, paramInt3, paramInt4, paramInt5, paramInt6, Integer.MIN_VALUE, Integer.MAX_VALUE);
  }
  
  public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
  {
    ((OverScroller)paramObject).fling(paramInt1, paramInt2, 0, paramInt4, 0, 0, 0, paramInt8, 0, paramInt10);
  }
  
  public boolean a(Object paramObject)
  {
    return ((OverScroller)paramObject).isFinished();
  }
  
  public boolean a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return ((OverScroller)paramObject).springBack(paramInt1, paramInt2, 0, 0, 0, paramInt6);
  }
  
  public int b(Object paramObject)
  {
    return ((OverScroller)paramObject).getCurrX();
  }
  
  public int c(Object paramObject)
  {
    return ((OverScroller)paramObject).getCurrY();
  }
  
  public float d(Object paramObject)
  {
    return 0.0F;
  }
  
  public boolean e(Object paramObject)
  {
    return ((OverScroller)paramObject).computeScrollOffset();
  }
  
  public void f(Object paramObject)
  {
    ((OverScroller)paramObject).abortAnimation();
  }
  
  public int g(Object paramObject)
  {
    return ((OverScroller)paramObject).getFinalX();
  }
  
  public int h(Object paramObject)
  {
    return ((OverScroller)paramObject).getFinalY();
  }
}

/* Location:
 * Qualified Name:     pt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */