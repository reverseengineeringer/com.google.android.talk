package com.google.android.apps.hangouts.views;

import aal;
import aen;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import awl;
import bfd;
import cyx;
import czd;
import hbs;
import java.util.Iterator;
import java.util.List;

public class FixedParticipantsView
  extends LinearLayout
{
  private static final double a = Math.sqrt(2.0D);
  private static final double b = Math.sqrt(3.0D);
  private final LinearLayout c;
  private final LinearLayout d;
  private final int e;
  private final int f;
  private final int g;
  private final TextView h;
  
  public FixedParticipantsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, awl.B, 0, 0);
    try
    {
      e = paramAttributeSet.getDimensionPixelSize(awl.D, 36);
      f = paramAttributeSet.getDimensionPixelSize(awl.F, 36);
      g = paramAttributeSet.getDimensionPixelSize(awl.E, 12);
      paramAttributeSet.recycle();
      LayoutInflater.from(paramContext).inflate(aal.fH, this, true);
      c = ((LinearLayout)findViewById(aen.cg));
      d = ((LinearLayout)findViewById(aen.ch));
      h = ((TextView)findViewById(aen.ci));
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  public void a()
  {
    c.removeAllViews();
    d.removeAllViews();
    setContentDescription(null);
  }
  
  public void a(bfd parambfd, List<cyx> paramList)
  {
    a();
    if ((paramList == null) || (paramList.size() == 0)) {
      return;
    }
    int n = paramList.size();
    int j;
    int k;
    label44:
    int m;
    label47:
    AvatarView localAvatarView;
    Object localObject;
    if (n > 4)
    {
      j = 3;
      if (n <= 3) {
        break label267;
      }
      k = 2;
      m = 0;
      if (m >= j) {
        break label456;
      }
      localAvatarView = new AvatarView(getContext());
      localObject = (cyx)paramList.get(m);
      czd localczd = a;
      switch (fca.a[localczd.ordinal()])
      {
      default: 
        i = 0;
        label122:
        localAvatarView.a(i);
        if (j == 1) {
          localAvatarView.b(4);
        }
        if (a == czd.d)
        {
          hbs.a("Expected condition to be true", ((cyx)localObject).g());
          localAvatarView.a(((cyx)localObject).f(), false, parambfd);
          label173:
          if (n != 1) {
            break label297;
          }
          i = f;
          label184:
          localObject = new LinearLayout.LayoutParams(i, i, 1.0F);
          if ((n < 4) && (n != 1) && ((m != 0) || (n != 2))) {
            break label305;
          }
          ((LinearLayout.LayoutParams)localObject).setMargins(0, 0, 0, 0);
          label228:
          localAvatarView.setLayoutParams((ViewGroup.LayoutParams)localObject);
          if (m >= k) {
            break label444;
          }
          c.addView(localAvatarView);
        }
        break;
      }
    }
    for (;;)
    {
      m += 1;
      break label47;
      j = n;
      break;
      label267:
      k = 1;
      break label44;
      i = 1;
      break label122;
      i = 2;
      break label122;
      localAvatarView.a(b, parambfd);
      break label173;
      label297:
      i = e;
      break label184;
      label305:
      if ((n == 3) && (m == 0))
      {
        ((LinearLayout.LayoutParams)localObject).setMargins(e / 2, 0, e / 2, 0);
        break label228;
      }
      if ((n == 3) && ((m == 1) || (m == 2)))
      {
        i = (int)Math.ceil(e / 2 * b);
        ((LinearLayout.LayoutParams)localObject).setMargins(0, (e - i) * -1, 0, 0);
        break label228;
      }
      if ((n == 2) && (m == 1))
      {
        i = (int)Math.abs(e / a);
        ((LinearLayout.LayoutParams)localObject).setMargins(i, (e - i) * -1, 0, 0);
        break label228;
      }
      hbs.a("Incorrect avatar margin layout being calculated");
      break label228;
      label444:
      d.addView(localAvatarView);
    }
    label456:
    if (n > 4)
    {
      h.setLayoutParams(new LinearLayout.LayoutParams(e, e, 1.0F));
      h.setTextSize(g);
      h.setText(String.valueOf(n - 3));
      h.setVisibility(0);
      d.addView(h);
    }
    parambfd = new String[paramList.size()];
    paramList = paramList.iterator();
    int i = 0;
    while (paramList.hasNext())
    {
      parambfd[i] = nexte;
      i += 1;
    }
    setContentDescription(aal.a(parambfd, j));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.FixedParticipantsView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */