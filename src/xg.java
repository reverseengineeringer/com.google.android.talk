import android.content.Context;
import android.util.AttributeSet;
import android.widget.SeekBar;

public final class xg
  extends SeekBar
{
  private xh a;
  private vv b;
  
  public xg(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aen.ac);
  }
  
  private xg(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b = vv.a(paramContext);
    a = new xh(this, b);
    a.a(paramAttributeSet, paramInt);
  }
}

/* Location:
 * Qualified Name:     xg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */