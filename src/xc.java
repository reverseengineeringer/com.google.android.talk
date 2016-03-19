import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.MultiAutoCompleteTextView;

public final class xc
  extends MultiAutoCompleteTextView
  implements kn
{
  private static final int[] a = { 16843126 };
  private vv b;
  private wt c;
  private xp d;
  
  public xc(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aen.I);
  }
  
  private xc(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(vs.a(paramContext), paramAttributeSet, paramInt);
    paramContext = vw.a(getContext(), paramAttributeSet, a, paramInt);
    b = paramContext.b();
    if (paramContext.g(0)) {
      setDropDownBackgroundDrawable(paramContext.a(0));
    }
    paramContext.a();
    c = new wt(this, b);
    c.a(paramAttributeSet, paramInt);
    d = xp.a(this);
    d.a(paramAttributeSet, paramInt);
    d.a();
  }
  
  public void a(ColorStateList paramColorStateList)
  {
    if (c != null) {
      c.a(paramColorStateList);
    }
  }
  
  public void a(PorterDuff.Mode paramMode)
  {
    if (c != null) {
      c.a(paramMode);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (c != null) {
      c.b();
    }
    if (d != null) {
      d.a();
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (c != null) {
      c.a();
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (c != null) {
      c.a(paramInt);
    }
  }
  
  public void setDropDownBackgroundResource(int paramInt)
  {
    if (b != null)
    {
      setDropDownBackgroundDrawable(b.a(paramInt));
      return;
    }
    super.setDropDownBackgroundResource(paramInt);
  }
  
  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    if (d != null) {
      d.a(paramContext, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     xc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */