package com.google.android.apps.hangouts.views;

import aen;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;
import cum;
import emc;

public class OtrModificationMessageListItemView
  extends LinearLayout
  implements cum
{
  private static int[][] c;
  private TextView a;
  private long b;
  
  static
  {
    int i = StressMode.qU;
    int j = StressMode.qR;
    int k = StressMode.qT;
    int m = StressMode.qS;
    int[] arrayOfInt = { StressMode.qY, StressMode.qV, StressMode.qX, StressMode.qW };
    c = new int[][] { { i, j, k, m }, arrayOfInt };
  }
  
  public OtrModificationMessageListItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public OtrModificationMessageListItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public long a()
  {
    return b;
  }
  
  public void a(int paramInt, emc paramemc, String paramString, boolean paramBoolean)
  {
    int i = 0;
    if (paramInt == 1)
    {
      paramInt = 0;
      if (!paramBoolean) {
        break label106;
      }
      switch (fdv.a[paramemc.ordinal()])
      {
      default: 
        paramInt = i;
      }
    }
    for (;;)
    {
      if (paramInt > 0) {
        a.setText(paramInt);
      }
      return;
      paramInt = 1;
      break;
      paramInt = c[paramInt][0];
      continue;
      paramInt = c[paramInt][1];
      continue;
      paramInt = c[paramInt][2];
    }
    label106:
    paramemc = getResources();
    a.setText(paramemc.getString(c[paramInt][3], new Object[] { paramString }));
  }
  
  public void a(long paramLong)
  {
    b = paramLong;
  }
  
  public View b()
  {
    return this;
  }
  
  public void c()
  {
    setContentDescription(a.getText());
  }
  
  public void onFinishInflate()
  {
    a = ((TextView)findViewById(aen.gC));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.OtrModificationMessageListItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */