package com.google.android.apps.hangouts.views;

import aal;
import android.animation.ObjectAnimator;
import android.view.View;
import axc;
import ezi;
import fcx;
import fdm;

public class MessageListItemWrapperView$WatermarkGalleryStateTransition
  implements Runnable
{
  public final int a;
  private MessageListView c;
  private ObjectAnimator d;
  private final View e;
  private int f;
  private int g;
  private int h;
  private boolean i;
  private int j;
  private int k;
  
  public MessageListItemWrapperView$WatermarkGalleryStateTransition(MessageListItemWrapperView paramMessageListItemWrapperView, View paramView, int paramInt)
  {
    a = paramInt;
    e = paramView;
  }
  
  public void run()
  {
    if (a == 1) {
      j = 0;
    }
    for (k = MessageListItemWrapperView.a(b.getResources());; k = 0)
    {
      d = ObjectAnimator.ofInt(this, "watermarkGalleryMeasuredHeightReduction", new int[] { j, k });
      if (aal.a(b.getContext(), "babel_crash_on_conversation_scroll_error", false))
      {
        int m = j;
        int n = k;
        ezi.c("Babel_Scroll", 85 + "animating watermarkGalleryMeasuredHeightReduction between " + m + " and " + n, new Object[0]);
      }
      d.setDuration(MessageListItemWrapperView.a);
      d.setInterpolator(new axc());
      d.addListener(new fdm(this));
      fcx localfcx = b.f.a();
      if (localfcx != null) {
        localfcx.a();
      }
      d.start();
      return;
      j = MessageListItemWrapperView.a(b.getResources());
    }
  }
  
  public void setWatermarkGalleryMeasuredHeightReduction(int paramInt)
  {
    b.d = paramInt;
    if (c == null) {
      c = ((MessageListView)e.getParent());
    }
    if (c == null) {
      d.cancel();
    }
    for (int m = 0; m == 0; m = 1)
    {
      return;
      if (!i)
      {
        h = e.getTop();
        g = c.getHeight();
        f = c.getPositionForView(e);
        i = true;
      }
    }
    m = j;
    int n = h;
    int i1 = g;
    int i2 = c.getHeight();
    c.a(f, n - (m - paramInt) - (i1 - i2));
    b.requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.MessageListItemWrapperView.WatermarkGalleryStateTransition
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */