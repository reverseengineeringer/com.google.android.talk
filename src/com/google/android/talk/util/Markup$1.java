package com.google.android.talk.util;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.style.LeadingMarginSpan.LeadingMarginSpan2;

class Markup$1
  implements LeadingMarginSpan.LeadingMarginSpan2
{
  Markup$1(Markup paramMarkup, int paramInt1, int paramInt2) {}
  
  public void drawLeadingMargin(Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, CharSequence paramCharSequence, int paramInt6, int paramInt7, boolean paramBoolean, Layout paramLayout) {}
  
  public int getLeadingMargin(boolean paramBoolean)
  {
    if (paramBoolean) {
      return val$shiftAmount;
    }
    return 0;
  }
  
  public int getLeadingMarginLineCount()
  {
    return val$lines;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.Markup.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */