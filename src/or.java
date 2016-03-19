import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.widget.DrawerLayout;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public final class or
  extends ViewGroup.MarginLayoutParams
{
  public int a = 0;
  public float b;
  public boolean c;
  public boolean d;
  
  public or()
  {
    super(-1, -1);
  }
  
  public or(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, DrawerLayout.a);
    a = paramContext.getInt(0, 0);
    paramContext.recycle();
  }
  
  public or(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public or(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
  
  public or(or paramor)
  {
    super(paramor);
    a = a;
  }
}

/* Location:
 * Qualified Name:     or
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */