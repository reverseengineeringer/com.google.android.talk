import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;

public class ge
  extends Drawable
  implements Drawable.Callback, gd
{
  static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
  Drawable b;
  private ColorStateList c;
  private PorterDuff.Mode d = a;
  private int e;
  private PorterDuff.Mode f;
  private boolean g;
  
  public ge(Drawable paramDrawable)
  {
    a(paramDrawable);
  }
  
  private boolean a(int[] paramArrayOfInt)
  {
    if ((c != null) && (d != null))
    {
      int i = c.getColorForState(paramArrayOfInt, c.getDefaultColor());
      paramArrayOfInt = d;
      if ((!g) || (i != e) || (paramArrayOfInt != f))
      {
        setColorFilter(i, paramArrayOfInt);
        e = i;
        f = paramArrayOfInt;
        g = true;
        return true;
      }
    }
    else
    {
      g = false;
      clearColorFilter();
    }
    return false;
  }
  
  public Drawable a()
  {
    return b;
  }
  
  public void a(Drawable paramDrawable)
  {
    if (b != null) {
      b.setCallback(null);
    }
    b = paramDrawable;
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
    invalidateSelf();
  }
  
  public void draw(Canvas paramCanvas)
  {
    b.draw(paramCanvas);
  }
  
  public int getChangingConfigurations()
  {
    return b.getChangingConfigurations();
  }
  
  public Drawable getCurrent()
  {
    return b.getCurrent();
  }
  
  public int getIntrinsicHeight()
  {
    return b.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return b.getIntrinsicWidth();
  }
  
  public int getMinimumHeight()
  {
    return b.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    return b.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    return b.getOpacity();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    return b.getPadding(paramRect);
  }
  
  public int[] getState()
  {
    return b.getState();
  }
  
  public Region getTransparentRegion()
  {
    return b.getTransparentRegion();
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    invalidateSelf();
  }
  
  public boolean isStateful()
  {
    return ((c != null) && (c.isStateful())) || (b.isStateful());
  }
  
  public Drawable mutate()
  {
    Drawable localDrawable1 = b;
    Drawable localDrawable2 = localDrawable1.mutate();
    if (localDrawable2 != localDrawable1) {
      a(localDrawable2);
    }
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    b.setBounds(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    return b.setLevel(paramInt);
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    b.setAlpha(paramInt);
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    b.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    b.setColorFilter(paramColorFilter);
  }
  
  public void setDither(boolean paramBoolean)
  {
    b.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    b.setFilterBitmap(paramBoolean);
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    boolean bool = b.setState(paramArrayOfInt);
    return (a(paramArrayOfInt)) || (bool);
  }
  
  public void setTint(int paramInt)
  {
    setTintList(ColorStateList.valueOf(paramInt));
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    c = paramColorStateList;
    a(getState());
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    d = paramMode;
    a(getState());
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (super.setVisible(paramBoolean1, paramBoolean2)) || (b.setVisible(paramBoolean1, paramBoolean2));
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    unscheduleSelf(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     ge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */