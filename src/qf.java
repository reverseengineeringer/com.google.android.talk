import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class qf
  extends ViewGroup.MarginLayoutParams
{
  public int a = 0;
  
  public qf(int paramInt1, int paramInt2)
  {
    super(-2, -2);
    a = 8388627;
  }
  
  public qf(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, sb.t);
    a = paramContext.getInt(sb.u, 0);
    paramContext.recycle();
  }
  
  public qf(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public qf(qf paramqf)
  {
    super(paramqf);
    a = a;
  }
}

/* Location:
 * Qualified Name:     qf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */