package com.google.android.apps.hangouts.peoplelistv2.impl;

import aad;
import aal;
import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityNodeInfo;

public class FastScrollingRecyclerView
  extends RecyclerView
{
  public int A;
  public int B;
  public int C;
  
  public FastScrollingRecyclerView(Context paramContext)
  {
    super(paramContext);
    a(new aad(this));
    A = getResources().getDimensionPixelSize(aal.oj);
  }
  
  public FastScrollingRecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(new aad(this));
    A = getResources().getDimensionPixelSize(aal.oj);
  }
  
  public FastScrollingRecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(new aad(this));
    A = getResources().getDimensionPixelSize(aal.oj);
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName("android.support.v7.widget.RecyclerView");
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    B = paramInt1;
    C = paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.peoplelistv2.impl.FastScrollingRecyclerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */