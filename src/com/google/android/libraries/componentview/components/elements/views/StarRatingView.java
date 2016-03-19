package com.google.android.libraries.componentview.components.elements.views;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.View.MeasureSpec;

public class StarRatingView
  extends View
{
  private final Bitmap a;
  private final Rect b;
  private final RectF c;
  private final Matrix d;
  private float e;
  private final Paint f;
  private final Paint g;
  private final RectF h;
  private final RectF i;
  private final Matrix j;
  private final Matrix k;
  private int l;
  private int m;
  private int n;
  private int o;
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (l <= 0) {
      return;
    }
    int i1 = 0;
    label10:
    int i2;
    int i3;
    int i4;
    int i5;
    int i6;
    Paint localPaint1;
    if (i1 < 5)
    {
      float f1 = Math.min(1.0F, Math.max(0.0F, e - i1));
      i2 = getPaddingLeft() + o + (l + m) * i1;
      i3 = i2 + l / 2;
      i4 = l;
      i5 = getPaddingTop() + n;
      i6 = i5 + l;
      if (f1 >= 0.25D) {
        break label236;
      }
      localPaint1 = g;
      label106:
      if (f1 >= 0.75D) {
        break label245;
      }
    }
    label236:
    label245:
    for (Paint localPaint2 = g;; localPaint2 = f)
    {
      h.set(i2, i5, i3, i6);
      paramCanvas.drawBitmap(a, b, h, localPaint1);
      i.set(i3, i5, i2 + i4, i6);
      k.setRectToRect(c, i, Matrix.ScaleToFit.FILL);
      j.setConcat(k, d);
      paramCanvas.drawBitmap(a, j, localPaint2);
      i1 += 1;
      break label10;
      break;
      localPaint1 = f;
      break label106;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i3 = getMeasuredWidth();
    int i6 = getMeasuredHeight();
    int i8 = i3 - getPaddingLeft() - getPaddingRight();
    int i7 = i6 - getPaddingTop() - getPaddingBottom();
    int i5 = (int)(i7 * 5.08F);
    int i4 = (int)(i8 / 5.08F);
    int i2 = i8;
    int i1 = i3;
    if (i8 > i5)
    {
      i2 = i8;
      i1 = i3;
      if (View.MeasureSpec.getMode(paramInt1) != 1073741824)
      {
        i1 = getPaddingLeft() + i5 + getPaddingRight();
        i2 = i5;
      }
    }
    i3 = i7;
    paramInt1 = i6;
    if (i7 > i4)
    {
      i3 = i7;
      paramInt1 = i6;
      if (View.MeasureSpec.getMode(paramInt2) != 1073741824)
      {
        paramInt1 = getPaddingTop() + i4 + getPaddingBottom();
        i3 = i4;
      }
    }
    paramInt2 = Math.min(i2, i5);
    i4 = Math.min(i3, i4);
    o = ((i2 - paramInt2) / 2);
    n = ((i3 - i4) / 2);
    l = i4;
    m = ((int)(i4 * 0.02F));
    setMeasuredDimension(i1, paramInt1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.views.StarRatingView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */