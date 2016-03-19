package com.google.android.apps.hangouts.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ListView;
import fdn;

public class MessageListView
  extends ListView
{
  fdn a = new fdn(this);
  
  public MessageListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (paramInt1 >= a.a)
    {
      a.a = paramInt1;
      a.b = paramInt2;
      a.c = true;
    }
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(View paramView, int paramInt, AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    if ((paramInt == -1) || (paramInt >= getCount())) {
      return;
    }
    super.onInitializeAccessibilityNodeInfoForItem(paramView, paramInt, paramAccessibilityNodeInfo);
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (a.c)
    {
      if (getLastVisiblePosition() > getCount() - 3) {
        setSelectionFromTop(a.a, a.b);
      }
      a.c = false;
    }
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.MessageListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */