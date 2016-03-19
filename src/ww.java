import android.content.Context;
import android.util.AttributeSet;
import android.widget.CheckedTextView;

public final class ww
  extends CheckedTextView
{
  private static final int[] a = { 16843016 };
  private vv b;
  private xp c = xp.a(this);
  
  public ww(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, (byte)0);
  }
  
  private ww(Context paramContext, AttributeSet paramAttributeSet, byte paramByte)
  {
    super(paramContext, paramAttributeSet, 16843720);
    c.a(paramAttributeSet, 16843720);
    c.a();
    if (vv.a)
    {
      paramContext = vw.a(getContext(), paramAttributeSet, a, 16843720);
      setCheckMarkDrawable(paramContext.a(0));
      paramContext.a();
      b = paramContext.b();
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (c != null) {
      c.a();
    }
  }
  
  public void setCheckMarkDrawable(int paramInt)
  {
    if (b != null)
    {
      setCheckMarkDrawable(b.a(paramInt));
      return;
    }
    super.setCheckMarkDrawable(paramInt);
  }
  
  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    if (c != null) {
      c.a(paramContext, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     ww
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */