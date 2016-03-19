package com.google.android.libraries.componentview.components.base.views;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;

public class ListItemSpan
  implements LeadingMarginSpan
{
  private final int a;
  private final String b;
  
  public void drawLeadingMargin(Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, CharSequence paramCharSequence, int paramInt6, int paramInt7, boolean paramBoolean, Layout paramLayout)
  {
    if (b == null) {}
    while (((Spanned)paramCharSequence).getSpanStart(this) != paramInt6) {
      return;
    }
    paramCharSequence = paramPaint.getStyle();
    paramLayout = paramPaint.getTextAlign();
    paramPaint.setStyle(Paint.Style.FILL);
    paramPaint.setTextAlign(Paint.Align.RIGHT);
    paramCanvas.drawText(b, a * paramInt2 + paramInt1, paramInt4, paramPaint);
    paramPaint.setTextAlign(paramLayout);
    paramPaint.setStyle(paramCharSequence);
  }
  
  public int getLeadingMargin(boolean paramBoolean)
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.views.ListItemSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */