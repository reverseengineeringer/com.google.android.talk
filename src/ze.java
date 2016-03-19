import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;

public abstract class ze
  implements View.OnTouchListener
{
  private final float a;
  private final int b;
  final View c;
  boolean d;
  boolean e;
  private final int f;
  private Runnable g;
  private Runnable h;
  private int i;
  private final int[] j = new int[2];
  
  public ze(View paramView)
  {
    c = paramView;
    a = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
    b = ViewConfiguration.getTapTimeout();
    f = ((b + ViewConfiguration.getLongPressTimeout()) / 2);
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    boolean bool1 = true;
    Object localObject1 = c;
    Object localObject2 = a();
    if ((localObject2 == null) || (!((za)localObject2).n())) {
      bool1 = false;
    }
    for (;;)
    {
      return bool1;
      localObject2 = e;
      if ((localObject2 == null) || (!((zd)localObject2).isShown())) {
        return false;
      }
      MotionEvent localMotionEvent = MotionEvent.obtainNoHistory(paramMotionEvent);
      int[] arrayOfInt = j;
      ((View)localObject1).getLocationOnScreen(arrayOfInt);
      localMotionEvent.offsetLocation(arrayOfInt[0], arrayOfInt[1]);
      localObject1 = j;
      ((View)localObject2).getLocationOnScreen((int[])localObject1);
      localMotionEvent.offsetLocation(-localObject1[0], -localObject1[1]);
      boolean bool2 = ((zd)localObject2).a(localMotionEvent, i);
      localMotionEvent.recycle();
      int k = jx.a(paramMotionEvent);
      if ((k != 1) && (k != 3)) {}
      for (k = 1; (!bool2) || (k == 0); k = 0) {
        return false;
      }
    }
  }
  
  public abstract za a();
  
  public boolean b()
  {
    za localza = a();
    if ((localza != null) && (!localza.n())) {
      localza.c();
    }
    return true;
  }
  
  public boolean c()
  {
    za localza = a();
    if ((localza != null) && (localza.n())) {
      localza.k();
    }
    return true;
  }
  
  void d()
  {
    if (h != null) {
      c.removeCallbacks(h);
    }
    if (g != null) {
      c.removeCallbacks(g);
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    boolean bool3 = d;
    if (bool3)
    {
      if (e) {
        bool1 = a(paramMotionEvent);
      }
      for (;;)
      {
        d = bool1;
        if (!bool1)
        {
          bool1 = bool2;
          if (!bool3) {}
        }
        else
        {
          bool1 = true;
        }
        return bool1;
        if ((a(paramMotionEvent)) || (!c())) {
          bool1 = true;
        } else {
          bool1 = false;
        }
      }
    }
    paramView = c;
    if (paramView.isEnabled()) {}
    label128:
    int k;
    switch (jx.a(paramMotionEvent))
    {
    default: 
      k = 0;
      label131:
      if ((k == 0) || (!b())) {
        break;
      }
    }
    for (boolean bool1 = true;; bool1 = false)
    {
      if (bool1)
      {
        long l = SystemClock.uptimeMillis();
        paramView = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        c.onTouchEvent(paramView);
        paramView.recycle();
      }
      break;
      i = paramMotionEvent.getPointerId(0);
      e = false;
      if (g == null) {
        g = new zf(this);
      }
      paramView.postDelayed(g, b);
      if (h == null) {
        h = new zg(this);
      }
      paramView.postDelayed(h, f);
      break label128;
      k = paramMotionEvent.findPointerIndex(i);
      if (k < 0) {
        break label128;
      }
      float f1 = paramMotionEvent.getX(k);
      float f2 = paramMotionEvent.getY(k);
      float f3 = a;
      if ((f1 >= -f3) && (f2 >= -f3) && (f1 < paramView.getRight() - paramView.getLeft() + f3) && (f2 < paramView.getBottom() - paramView.getTop() + f3)) {}
      for (k = 1; k == 0; k = 0)
      {
        d();
        paramView.getParent().requestDisallowInterceptTouchEvent(true);
        k = 1;
        break label131;
      }
      d();
      break label128;
    }
  }
}

/* Location:
 * Qualified Name:     ze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */