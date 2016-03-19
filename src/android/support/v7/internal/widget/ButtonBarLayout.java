package android.support.v7.internal.widget;

import aal;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import sb;

public class ButtonBarLayout
  extends LinearLayout
{
  private boolean a;
  private int b = -1;
  
  public ButtonBarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, sb.S);
    a = paramContext.getBoolean(sb.T, false);
    paramContext.recycle();
  }
  
  private void a(boolean paramBoolean)
  {
    label17:
    View localView;
    if (paramBoolean)
    {
      i = 1;
      setOrientation(i);
      if (!paramBoolean) {
        break label78;
      }
      i = 5;
      setGravity(i);
      localView = findViewById(aal.aT);
      if (localView != null) {
        if (!paramBoolean) {
          break label84;
        }
      }
    }
    label78:
    label84:
    for (int i = 8;; i = 4)
    {
      localView.setVisibility(i);
      i = getChildCount() - 2;
      while (i >= 0)
      {
        bringChildToFront(getChildAt(i));
        i -= 1;
      }
      i = 0;
      break;
      i = 80;
      break label17;
    }
  }
  
  private boolean a()
  {
    return getOrientation() == 1;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    if (a)
    {
      if ((i > b) && (a())) {
        a(false);
      }
      b = i;
    }
    int j;
    if ((!a()) && (View.MeasureSpec.getMode(paramInt1) == 1073741824))
    {
      j = View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE);
      i = 1;
    }
    for (;;)
    {
      super.onMeasure(j, paramInt2);
      j = i;
      if (a)
      {
        j = i;
        if (!a())
        {
          j = i;
          if ((getMeasuredWidthAndState() & 0xFF000000) == 16777216)
          {
            a(true);
            j = 1;
          }
        }
      }
      if (j != 0) {
        super.onMeasure(paramInt1, paramInt2);
      }
      return;
      i = 0;
      j = paramInt1;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ButtonBarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */