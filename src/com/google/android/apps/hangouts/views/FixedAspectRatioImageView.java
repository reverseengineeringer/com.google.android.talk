package com.google.android.apps.hangouts.views;

import aal;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.ImageView;
import ezi;

public class FixedAspectRatioImageView
  extends ImageView
{
  int a;
  int b;
  int c;
  int d;
  
  public FixedAspectRatioImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public FixedAspectRatioImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (paramAttributeSet != null)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16843039, 16843040 });
      a = paramContext.getDimensionPixelSize(0, 0);
      b = paramContext.getDimensionPixelSize(1, 0);
      paramContext.recycle();
    }
  }
  
  public FixedAspectRatioImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (aal.a(getContext(), "babel_crash_on_conversation_scroll_error", false)) {
      ezi.c("Babel_Scroll", 72 + "FixedAspectRationImageView.setBitmapDimensions(" + paramInt1 + ", " + paramInt2 + ")", new Object[0]);
    }
    c = paramInt1;
    d = paramInt2;
    requestLayout();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int k;
    int i;
    int n;
    int j;
    if ((c != 0) && (d != 0))
    {
      k = View.MeasureSpec.getMode(paramInt1);
      i = View.MeasureSpec.getSize(paramInt1);
      n = View.MeasureSpec.getMode(paramInt2);
      j = View.MeasureSpec.getSize(paramInt2);
      if ((k == 1073741824) && (n == 1073741824))
      {
        paramInt2 = j;
        paramInt1 = i;
      }
    }
    for (;;)
    {
      if (aal.a(getContext(), "babel_crash_on_conversation_scroll_error", false)) {
        ezi.c("Babel_Scroll", 73 + "FixedAspectRationImageView.setMeasuredDimension(" + paramInt1 + ", " + paramInt2 + ")", new Object[0]);
      }
      setMeasuredDimension(paramInt1, paramInt2);
      return;
      if (k == 1073741824)
      {
        int m = d * i / c;
        k = m;
        paramInt2 = i;
        if (n == Integer.MIN_VALUE)
        {
          paramInt1 = i;
          paramInt2 = j;
          if (m <= j)
          {
            paramInt2 = i;
            k = m;
          }
        }
        else
        {
          label171:
          paramInt1 = paramInt2;
          paramInt2 = k;
        }
      }
      else
      {
        if (n == 1073741824)
        {
          if (Build.VERSION.SDK_INT >= 18) {
            break label355;
          }
          if (a <= 0) {
            break label350;
          }
          paramInt1 = Math.min(a, i);
        }
        label210:
        label350:
        label355:
        for (paramInt1 = Math.min(j, paramInt1);; paramInt1 = j)
        {
          paramInt2 = c * paramInt1 / d;
          if ((k == Integer.MIN_VALUE) && (paramInt2 > i)) {}
          for (;;)
          {
            k = paramInt1;
            paramInt2 = i;
            if (i <= a) {
              break label171;
            }
            i = a;
            paramInt2 = paramInt1;
            paramInt1 = i;
            break;
            if ((a != 0) && (i > a)) {}
            for (paramInt1 = a;; paramInt1 = i)
            {
              if (n != 0) {}
              for (paramInt2 = j;; paramInt2 = paramInt1)
              {
                if (c > d)
                {
                  paramInt2 = d * paramInt1 / c;
                  break;
                }
                paramInt1 = c * paramInt2 / d;
                break;
              }
            }
            i = paramInt2;
          }
          paramInt1 = i;
          break label210;
        }
        paramInt2 = 0;
        paramInt1 = 0;
      }
    }
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    if ((paramBitmap != null) && ((c != paramBitmap.getWidth()) || (d != paramBitmap.getHeight()))) {
      a(paramBitmap.getWidth(), paramBitmap.getHeight());
    }
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    if ((paramDrawable != null) && ((c != paramDrawable.getIntrinsicWidth()) || (d != paramDrawable.getIntrinsicHeight()))) {
      a(paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
    }
  }
  
  public void setMaxHeight(int paramInt)
  {
    super.setMaxHeight(paramInt);
    b = paramInt;
  }
  
  public void setMaxWidth(int paramInt)
  {
    super.setMaxHeight(paramInt);
    a = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.FixedAspectRatioImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */