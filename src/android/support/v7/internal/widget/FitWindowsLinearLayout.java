package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import vh;
import vi;

public class FitWindowsLinearLayout
  extends LinearLayout
  implements vh
{
  private vi a;
  
  public FitWindowsLinearLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public FitWindowsLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(vi paramvi)
  {
    a = paramvi;
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    if (a != null) {
      a.a(paramRect);
    }
    return super.fitSystemWindows(paramRect);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.FitWindowsLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */