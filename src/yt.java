import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class yt
  extends ViewGroup.MarginLayoutParams
{
  public float g;
  public int h = -1;
  
  public yt(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    g = 0.0F;
  }
  
  public yt(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, sb.aF);
    g = paramContext.getFloat(sb.aH, 0.0F);
    h = paramContext.getInt(sb.aG, -1);
    paramContext.recycle();
  }
  
  public yt(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}

/* Location:
 * Qualified Name:     yt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */