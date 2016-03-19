package com.google.android.apps.hangouts.views;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.widget.TextView;
import java.text.Bidi;

public class WrapWidthTextView
  extends TextView
{
  public WrapWidthTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public WrapWidthTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public WrapWidthTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 0;
    super.onMeasure(paramInt1, paramInt2);
    Object localObject = getText().toString().toCharArray();
    if (!Bidi.requiresBidi((char[])localObject, 0, localObject.length))
    {
      localObject = getLayout();
      if (localObject != null)
      {
        float f = 0.0F;
        paramInt2 = ((Layout)localObject).getLineCount();
        paramInt1 = i;
        while (paramInt1 < paramInt2)
        {
          f = Math.max(f, ((Layout)localObject).getLineWidth(paramInt1));
          paramInt1 += 1;
        }
        setMeasuredDimension((int)Math.ceil(f) + getCompoundPaddingLeft() + getCompoundPaddingRight(), getMeasuredHeight());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.WrapWidthTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */