package com.google.android.apps.hangouts.views;

import aal;
import aen;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import cbr;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import czb;
import dns;
import ezc;
import ezi;
import fbq;
import feh;
import hbs;
import ill;
import imx;

public class RichStatusView
  extends LinearLayout
{
  private static final boolean b = false;
  private static int c = -1;
  private static int d = -1;
  public final feh[] a = new feh[3];
  private AnimationDrawable e;
  private czb f;
  private dns g;
  
  static
  {
    imx localimx = ezi.u;
  }
  
  public RichStatusView(Context paramContext)
  {
    super(paramContext);
    if (c < 0) {
      c = getResources().getDimensionPixelSize(aal.ex);
    }
    if (d < 0) {
      d = getResources().getDimensionPixelSize(aal.ew);
    }
  }
  
  public RichStatusView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (c < 0) {
      c = getResources().getDimensionPixelSize(aal.ex);
    }
    if (d < 0) {
      d = getResources().getDimensionPixelSize(aal.ew);
    }
  }
  
  public String a(Context paramContext)
  {
    switch (g.b())
    {
    default: 
      return null;
    case 1: 
      return paramContext.getString(StressMode.j);
    case 2: 
      return paramContext.getString(StressMode.k);
    }
    return paramContext.getString(StressMode.i);
  }
  
  public void a()
  {
    a[1].a(false);
    a[2].a(false);
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 1) {}
    for (paramInt = getResources().getColor(aal.dd);; paramInt = getResources().getColor(aal.dc))
    {
      a[0].b(paramInt);
      a[1].b(paramInt);
      a[2].b(paramInt);
      return;
    }
  }
  
  public void a(czb paramczb)
  {
    f = paramczb;
  }
  
  public void a(dns paramdns)
  {
    g = paramdns;
  }
  
  public void a(StringBuilder paramStringBuilder)
  {
    if (g == null) {}
    Object localObject;
    do
    {
      return;
      localObject = getContext();
      if (a[2].a)
      {
        String str = a((Context)localObject);
        if (str != null) {
          ezc.a(paramStringBuilder, str);
        }
      }
    } while (!a[1].a);
    switch (g.c())
    {
    default: 
      localObject = null;
    }
    while (localObject != null)
    {
      ezc.a(paramStringBuilder, (CharSequence)localObject);
      return;
      localObject = ((Context)localObject).getString(StressMode.g);
      continue;
      localObject = ((Context)localObject).getString(StressMode.h);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    feh localfeh = a[0];
    if (a != paramBoolean)
    {
      localfeh.a(paramBoolean);
      if (paramBoolean) {
        e.start();
      }
    }
    else
    {
      return;
    }
    e.stop();
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (float f1 = 0.4F;; f1 = 1.0F)
    {
      int i = 0;
      while (i < 3)
      {
        a[i].c.setAlpha(f1);
        i += 1;
      }
    }
  }
  
  public boolean b()
  {
    boolean bool = false;
    int j = 0;
    int i;
    if (g != null)
    {
      if (b)
      {
        String str1 = String.valueOf(f);
        String str2 = String.valueOf(g);
        new StringBuilder(String.valueOf(str1).length() + 44 + String.valueOf(str2).length()).append("Showing presence: mParticipantId=").append(str1).append(", presence=").append(str2);
      }
      switch (g.c())
      {
      default: 
        i = 0;
        bool = a[1].a(i, getResources().getColor(aal.dC));
        switch (g.b())
        {
        default: 
          i = j;
        }
        break;
      }
    }
    for (;;)
    {
      bool = a[2].a(i, getResources().getColor(aal.dC)) | bool | false;
      return bool;
      i = R.drawable.bt;
      break;
      i = R.drawable.bw;
      break;
      i = R.drawable.bs;
      continue;
      i = R.drawable.bu;
      continue;
      i = R.drawable.bj;
    }
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
    a[0] = new feh(this, aen.fN, aen.bO, d);
    a[1] = new feh(this, aen.fL, aen.fK, c);
    a[2] = new feh(this, aen.fJ, aen.fI, c);
    ImageView localImageView = a[0].c;
    hbs.b("Expected non-null", localImageView);
    Object localObject = getContext();
    if ((localObject instanceof cbr)) {
      localObject = (cbr)localObject;
    }
    for (;;)
    {
      e = fbq.b((cbr)localObject);
      localImageView.setBackgroundDrawable(e);
      return;
      if ((localObject instanceof ill))
      {
        localObject = (cbr)((ill)localObject).getBaseContext();
      }
      else
      {
        hbs.a("Unknown type of context");
        localObject = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.RichStatusView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */