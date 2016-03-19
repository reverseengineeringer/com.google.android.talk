import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;

public class i
  extends ys
{
  public boolean a = true;
  boolean b = false;
  private Drawable c;
  private final Rect d = new Rect();
  private final Rect e = new Rect();
  private int f = 119;
  
  public i(Context paramContext)
  {
    super(paramContext);
  }
  
  public i(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public i(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, h.D, paramInt, 0);
    f = paramContext.getInt(h.F, f);
    paramAttributeSet = paramContext.getDrawable(h.E);
    if (paramAttributeSet != null) {
      setForeground(paramAttributeSet);
    }
    a = paramContext.getBoolean(h.G, true);
    paramContext.recycle();
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    Drawable localDrawable;
    Rect localRect1;
    Rect localRect2;
    int i;
    int j;
    if (c != null)
    {
      localDrawable = c;
      if (b)
      {
        b = false;
        localRect1 = d;
        localRect2 = e;
        i = getRight() - getLeft();
        j = getBottom() - getTop();
        if (!a) {
          break label113;
        }
        localRect1.set(0, 0, i, j);
      }
    }
    for (;;)
    {
      Gravity.apply(f, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight(), localRect1, localRect2);
      localDrawable.setBounds(localRect2);
      localDrawable.draw(paramCanvas);
      return;
      label113:
      localRect1.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), j - getPaddingBottom());
    }
  }
  
  public void drawableHotspotChanged(float paramFloat1, float paramFloat2)
  {
    super.drawableHotspotChanged(paramFloat1, paramFloat2);
    if (c != null) {
      c.setHotspot(paramFloat1, paramFloat2);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if ((c != null) && (c.isStateful())) {
      c.setState(getDrawableState());
    }
  }
  
  public Drawable getForeground()
  {
    return c;
  }
  
  public int getForegroundGravity()
  {
    return f;
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (c != null) {
      c.jumpToCurrentState();
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    b |= paramBoolean;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    b = true;
  }
  
  public void setForeground(Drawable paramDrawable)
  {
    if (c != paramDrawable)
    {
      if (c != null)
      {
        c.setCallback(null);
        unscheduleDrawable(c);
      }
      c = paramDrawable;
      if (paramDrawable == null) {
        break label96;
      }
      setWillNotDraw(false);
      paramDrawable.setCallback(this);
      if (paramDrawable.isStateful()) {
        paramDrawable.setState(getDrawableState());
      }
      if (f == 119) {
        paramDrawable.getPadding(new Rect());
      }
    }
    for (;;)
    {
      requestLayout();
      invalidate();
      return;
      label96:
      setWillNotDraw(true);
    }
  }
  
  public void setForegroundGravity(int paramInt)
  {
    if (f != paramInt)
    {
      if ((0x800007 & paramInt) != 0) {
        break label77;
      }
      paramInt = 0x800003 | paramInt;
    }
    label77:
    for (;;)
    {
      int i = paramInt;
      if ((paramInt & 0x70) == 0) {
        i = paramInt | 0x30;
      }
      f = i;
      if ((f == 119) && (c != null))
      {
        Rect localRect = new Rect();
        c.getPadding(localRect);
      }
      requestLayout();
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == c);
  }
}

/* Location:
 * Qualified Name:     i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */