package com.google.android.apps.hangouts.views;

import android.animation.ObjectAnimator;
import android.widget.AbsListView;
import axc;
import fcw;
import fcx;
import fcy;
import java.util.Queue;

public class MessageListAnimationManager$AnimateInNewMessageRunnable
  implements Comparable<AnimateInNewMessageRunnable>, Runnable
{
  public MessageListItemWrapperView a;
  private int c;
  private MessageListView d;
  private ObjectAnimator e;
  private boolean f;
  
  public MessageListAnimationManager$AnimateInNewMessageRunnable(MessageListAnimationManager paramMessageListAnimationManager, MessageListItemWrapperView paramMessageListItemWrapperView, AbsListView paramAbsListView)
  {
    a = paramMessageListItemWrapperView;
    d = ((MessageListView)paramAbsListView);
    f = false;
  }
  
  public int a(AnimateInNewMessageRunnable paramAnimateInNewMessageRunnable)
  {
    if (a.g() > a.g()) {
      return 1;
    }
    return -1;
  }
  
  public void a()
  {
    if (b.d != null) {
      b.d.b();
    }
    b.c = false;
    a.d();
    if (b.e != null) {
      b.e.a(a);
    }
    MessageListAnimationManager localMessageListAnimationManager = b;
    localMessageListAnimationManager.a((Runnable)b.poll());
  }
  
  public void run()
  {
    e = ObjectAnimator.ofFloat(this, "percentage", new float[] { 0.0F, 1.0F });
    e.setDuration(MessageListAnimationManager.f);
    e.setInterpolator(new axc((byte)0));
    e.addListener(new fcw(this));
    if (b.d != null) {
      b.d.a();
    }
    if (a.getParent() == d)
    {
      c = d.getPositionForView(a);
      e.start();
      return;
    }
    a();
  }
  
  public void setPercentage(float paramFloat)
  {
    if (f) {}
    do
    {
      return;
      if (a.getParent() == null)
      {
        f = true;
        e.cancel();
      }
      int i = a.a(paramFloat);
      d.a(c, a.getTop() - i);
      a.requestLayout();
    } while (!f);
    a.a(1.0F);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.MessageListAnimationManager.AnimateInNewMessageRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */