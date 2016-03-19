package com.google.android.libraries.componentview.components.base;

import android.view.View;
import android.widget.ImageView;
import com.google.android.libraries.componentview.services.internal.ImageLoader;
import lbb;
import lbl;

public class ImageComponent<V extends ImageView>
  extends ViewComponent<V>
{
  private String e;
  private byte[] f;
  private boolean g;
  private final ImageLoader h;
  
  void c()
  {
    if (f != null) {}
    for (lbb locallbb = h.a(f, (ImageView)c);; locallbb = h.a(e, (ImageView)c))
    {
      if (!g) {
        d.a(locallbb);
      }
      return;
    }
  }
  
  public void onViewAttachedToWindow(View paramView)
  {
    super.onViewAttachedToWindow(paramView);
    int i;
    if (((e == null) || (e.isEmpty())) && (f == null))
    {
      i = 1;
      if (i == 0) {
        break label41;
      }
    }
    label41:
    while (!g)
    {
      return;
      i = 0;
      break;
    }
    c();
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.ImageComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */