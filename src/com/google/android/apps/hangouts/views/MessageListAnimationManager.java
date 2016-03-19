package com.google.android.apps.hangouts.views;

import aal;
import android.content.res.Resources;
import android.os.Handler;
import android.widget.AbsListView;
import ezi;
import fcx;
import fcy;
import imx;
import java.util.PriorityQueue;
import java.util.Queue;

public final class MessageListAnimationManager
{
  public static final boolean a = false;
  static int f;
  final Queue<MessageListAnimationManager.AnimateInNewMessageRunnable> b = new PriorityQueue();
  boolean c = false;
  final fcx d;
  fcy e;
  private AbsListView g;
  private Handler h;
  private MessageListItemWrapperView i;
  
  static
  {
    imx localimx = ezi.u;
  }
  
  public MessageListAnimationManager(AbsListView paramAbsListView, fcx paramfcx, Handler paramHandler)
  {
    g = paramAbsListView;
    d = paramfcx;
    h = paramHandler;
    f = paramAbsListView.getResources().getInteger(aal.eN);
  }
  
  public fcx a()
  {
    return d;
  }
  
  public void a(MessageListItemWrapperView paramMessageListItemWrapperView)
  {
    i = paramMessageListItemWrapperView;
  }
  
  public void a(fcy paramfcy)
  {
    e = paramfcy;
  }
  
  void a(Runnable paramRunnable)
  {
    if (paramRunnable != null)
    {
      c = true;
      h.post(paramRunnable);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (d != null) {
      d.a();
    }
    MessageListItemWrapperView.c(paramBoolean);
    if ((i != null) && (i.getParent() == g)) {
      i.h();
    }
    if (d != null) {
      d.b();
    }
  }
  
  public MessageListItemWrapperView b()
  {
    return i;
  }
  
  public void b(MessageListItemWrapperView paramMessageListItemWrapperView)
  {
    if (a)
    {
      String str = String.valueOf(paramMessageListItemWrapperView);
      new StringBuilder(String.valueOf(str).length() + 20).append("enqueueForAnimation ").append(str);
    }
    paramMessageListItemWrapperView = new MessageListAnimationManager.AnimateInNewMessageRunnable(this, paramMessageListItemWrapperView, g);
    if (c)
    {
      b.offer(paramMessageListItemWrapperView);
      return;
    }
    a(paramMessageListItemWrapperView);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.MessageListAnimationManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */