package com.google.android.libraries.componentview.components.base;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import android.util.DisplayMetrics;
import com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.Color;
import com.google.android.libraries.componentview.components.base.api.nano.SpanProto.SpanArgs;
import com.google.android.libraries.componentview.core.Utils;

class SpanComponent$1
  extends MetricAffectingSpan
{
  public void updateDrawState(TextPaint paramTextPaint)
  {
    int k = 0;
    SpanProto.SpanArgs localSpanArgs;
    Context localContext;
    Object localObject;
    if (b.a != null)
    {
      localSpanArgs = b.a;
      localContext = a;
      if (b != null)
      {
        localObject = b;
        paramTextPaint.setColor(Color.argb(Math.round(((AttributesProto.Color)localObject).g() * 255.0F), Math.round(((AttributesProto.Color)localObject).d() * 255.0F), Math.round(((AttributesProto.Color)localObject).e() * 255.0F), Math.round(((AttributesProto.Color)localObject).f() * 255.0F)));
      }
      if (localSpanArgs.f()) {
        paramTextPaint.setUnderlineText(true);
      }
      if (!localSpanArgs.d()) {
        break label255;
      }
    }
    label255:
    for (int i = 1;; i = 0)
    {
      int j = i;
      if (localSpanArgs.e()) {
        j = i | 0x2;
      }
      localObject = localSpanArgs.g();
      if (localObject != null)
      {
        i = k;
        if (!"".equals(localObject)) {}
      }
      else
      {
        i = 1;
      }
      if (i == 0) {
        paramTextPaint.setTypeface(Typeface.create(localSpanArgs.g(), j));
      }
      for (;;)
      {
        if (localSpanArgs.h() != 0.0F) {
          paramTextPaint.setTextSize((int)(localSpanArgs.h() * getResourcesgetDisplayMetricsscaledDensity));
        }
        if (localSpanArgs.i() != 0.0F) {
          baselineShift = ((int)(localSpanArgs.i() * Utils.a(localContext)));
        }
        return;
        if (j != 0) {
          paramTextPaint.setTypeface(Typeface.create(Typeface.DEFAULT, j));
        }
      }
    }
  }
  
  public void updateMeasureState(TextPaint paramTextPaint)
  {
    updateDrawState(paramTextPaint);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.SpanComponent.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */