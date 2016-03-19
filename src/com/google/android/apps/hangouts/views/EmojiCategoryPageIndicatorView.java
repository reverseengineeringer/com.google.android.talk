package com.google.android.apps.hangouts.views;

import aal;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class EmojiCategoryPageIndicatorView
  extends LinearLayout
{
  private final Paint a = new Paint();
  private final float b;
  private int c = 0;
  private int d = 0;
  private float e = 0.0F;
  
  public EmojiCategoryPageIndicatorView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public EmojiCategoryPageIndicatorView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.getResources();
    a.setColor(paramContext.getColor(aal.cY));
    b = paramContext.getDimension(aal.ey);
  }
  
  public void a(int paramInt1, int paramInt2, float paramFloat)
  {
    c = paramInt1;
    d = paramInt2;
    e = paramFloat;
    invalidate();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (c <= 1) {
      return;
    }
    float f1 = getWidth() / c;
    float f2 = d * f1 + e * f1;
    paramCanvas.drawRect(f2, 0.0F, f2 + f1, b, a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.EmojiCategoryPageIndicatorView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */