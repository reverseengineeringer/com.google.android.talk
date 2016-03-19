import android.content.Context;
import android.os.Build.VERSION;
import android.view.MotionEvent;
import android.view.View;

final class zd
  extends vj
{
  boolean g;
  private boolean h;
  private boolean i;
  private md j;
  private pe k;
  
  public zd(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, aen.T);
    h = paramBoolean;
    setCacheColorHint(0);
  }
  
  public boolean a(MotionEvent paramMotionEvent, int paramInt)
  {
    int m = jx.a(paramMotionEvent);
    label41:
    View localView1;
    switch (m)
    {
    default: 
      paramInt = 0;
    case 3: 
      for (bool = true;; bool = false)
      {
        if ((!bool) || (paramInt != 0))
        {
          i = false;
          setPressed(false);
          drawableStateChanged();
          localView1 = getChildAt(f - getFirstVisiblePosition());
          if (localView1 != null) {
            localView1.setPressed(false);
          }
          if (j != null)
          {
            j.b();
            j = null;
          }
        }
        if (!bool) {
          break;
        }
        if (k == null) {
          k = new pe(this);
        }
        k.a(true);
        k.onTouch(this, paramMotionEvent);
        label152:
        return bool;
        paramInt = 0;
      }
    }
    for (boolean bool = false;; bool = true)
    {
      int n = paramMotionEvent.findPointerIndex(paramInt);
      if (n < 0)
      {
        paramInt = 0;
        bool = false;
        break label41;
      }
      paramInt = (int)paramMotionEvent.getX(n);
      n = (int)paramMotionEvent.getY(n);
      int i1 = pointToPosition(paramInt, n);
      if (i1 == -1)
      {
        paramInt = 1;
        break label41;
      }
      localView1 = getChildAt(i1 - getFirstVisiblePosition());
      float f1 = paramInt;
      float f2 = n;
      i = true;
      if (Build.VERSION.SDK_INT >= 21) {
        drawableHotspotChanged(f1, f2);
      }
      if (!isPressed()) {
        setPressed(true);
      }
      layoutChildren();
      if (f != -1)
      {
        View localView2 = getChildAt(f - getFirstVisiblePosition());
        if ((localView2 != null) && (localView2 != localView1) && (localView2.isPressed())) {
          localView2.setPressed(false);
        }
      }
      f = i1;
      float f3 = localView1.getLeft();
      float f4 = localView1.getTop();
      if (Build.VERSION.SDK_INT >= 21) {
        localView1.drawableHotspotChanged(f1 - f3, f2 - f4);
      }
      if (!localView1.isPressed()) {
        localView1.setPressed(true);
      }
      setSelection(i1);
      a(i1, localView1, f1, f2);
      a(false);
      refreshDrawableState();
      if (m != 1) {
        break;
      }
      performItemClick(localView1, i1, getItemIdAtPosition(i1));
      break;
      if (k == null) {
        break label152;
      }
      k.a(false);
      return bool;
    }
  }
  
  protected boolean c()
  {
    return (i) || (super.c());
  }
  
  public boolean hasFocus()
  {
    return (h) || (super.hasFocus());
  }
  
  public boolean hasWindowFocus()
  {
    return (h) || (super.hasWindowFocus());
  }
  
  public boolean isFocused()
  {
    return (h) || (super.isFocused());
  }
  
  public boolean isInTouchMode()
  {
    return ((h) && (g)) || (super.isInTouchMode());
  }
}

/* Location:
 * Qualified Name:     zd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */