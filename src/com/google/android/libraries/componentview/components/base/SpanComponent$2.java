package com.google.android.libraries.componentview.components.base;

import android.text.TextPaint;
import android.text.style.URLSpan;
import android.view.View;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.internal.NavigationHelper;

class SpanComponent$2
  extends URLSpan
{
  public void onClick(View paramView)
  {
    b.c.a(a, b.b.b);
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.SpanComponent.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */