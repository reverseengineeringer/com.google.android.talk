package com.google.android.libraries.componentview.components.elements;

import a;
import android.text.format.DateUtils;
import android.view.View;
import atn;
import com.google.android.libraries.componentview.components.base.TextViewComponent;
import com.google.android.libraries.componentview.components.base.views.EllipsisTextView;
import java.util.Formatter;

public class ClockComponent<V extends EllipsisTextView>
  extends TextViewComponent<V>
  implements atn
{
  private final a e;
  private int f;
  private String g;
  private final StringBuilder h;
  private final Formatter i;
  
  public void c()
  {
    long l = e.y();
    h.setLength(0);
    String str = DateUtils.formatDateRange(a, i, l, l, f, g).toString();
    ((EllipsisTextView)c).setText(str);
  }
  
  public void onViewAttachedToWindow(View paramView)
  {
    c();
  }
  
  public void onViewDetachedFromWindow(View paramView) {}
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.ClockComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */