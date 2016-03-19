package com.google.android.apps.hangouts.views;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import awl;
import bfd;
import czb;
import java.util.Iterator;
import java.util.List;

public class FixedParticipantsGalleryView
  extends LinearLayout
{
  private final int a;
  private final int b;
  private final int c;
  
  public FixedParticipantsGalleryView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, awl.B, 0, 0);
    try
    {
      a = paramContext.getDimensionPixelSize(awl.D, 1);
      b = paramContext.getDimensionPixelSize(awl.C, 0);
      c = paramContext.getInt(awl.G, 100);
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public void a()
  {
    removeAllViews();
  }
  
  public void a(bfd parambfd, List<czb> paramList, czb paramczb)
  {
    removeAllViews();
    if (paramList == null) {}
    label19:
    label156:
    label157:
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      int i = 0;
      if (paramList.hasNext())
      {
        Object localObject = (czb)paramList.next();
        if ((paramczb != null) && (paramczb.a((czb)localObject))) {
          break label156;
        }
        AvatarView localAvatarView = new AvatarView(getContext());
        localAvatarView.a((czb)localObject, parambfd);
        localObject = new LinearLayout.LayoutParams(a, a, 1.0F);
        ((LinearLayout.LayoutParams)localObject).setMargins(b, b, b, b);
        gravity = 16;
        weight = 0.0F;
        localAvatarView.setLayoutParams((ViewGroup.LayoutParams)localObject);
        addView(localAvatarView);
        i += 1;
      }
      for (;;)
      {
        if (i >= c) {
          break label157;
        }
        break label19;
        break;
      }
    }
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int m = getChildCount();
    int k = Math.min((paramInt3 - paramInt1) / ((b << 1) + a), m);
    int i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= k) {
        break;
      }
      getChildAt(i).setVisibility(0);
      i += 1;
    }
    while (j < m)
    {
      getChildAt(j).setVisibility(8);
      j += 1;
    }
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.FixedParticipantsGalleryView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */