package com.google.android.apps.hangouts.views;

import aal;
import aen;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import bfd;
import czb;
import dns;
import dnv;
import ewv;
import ezi;
import fdw;
import fdx;
import gvj;
import hpu;
import ilh;
import imx;
import ino;
import iog;

public class OverlayedAvatarView
  extends RelativeLayout
{
  public static final int a = dl | el;
  private static final boolean c;
  private static final Handler d = new Handler(Looper.getMainLooper());
  private static volatile boolean e = true;
  public RichStatusView b;
  private boolean f;
  private boolean g;
  private int h = 0;
  private int i = 0;
  private AvatarView j;
  private czb k;
  private int l = -1;
  private String m;
  private fdx n;
  private ewv o;
  private Runnable p;
  
  static
  {
    imx localimx = ezi.u;
    c = false;
  }
  
  public OverlayedAvatarView(Context paramContext)
  {
    super(paramContext);
  }
  
  public OverlayedAvatarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public OverlayedAvatarView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public static OverlayedAvatarView a(LayoutInflater paramLayoutInflater, String paramString, czb paramczb, int paramInt, ewv paramewv)
  {
    paramLayoutInflater = (OverlayedAvatarView)paramLayoutInflater.inflate(aal.gx, null, false);
    paramLayoutInflater.a(paramString, paramczb, paramInt, paramewv);
    return paramLayoutInflater;
  }
  
  public static String a(int paramInt)
  {
    switch (b(paramInt))
    {
    case 3: 
    default: 
      return "UNKNOWN";
    case 0: 
      return "NULL";
    case 1: 
      return "STATE_WATERMARK";
    case 2: 
      return "STATE_FOCUSED";
    }
    return "STATE_TYPING";
  }
  
  public static int b(int paramInt)
  {
    paramInt = paramInt >> 1 | paramInt;
    paramInt |= paramInt >> 2;
    return paramInt - (paramInt >> 1);
  }
  
  private void b(boolean paramBoolean)
  {
    boolean bool2 = true;
    Object localObject = j;
    boolean bool1;
    if (!paramBoolean)
    {
      bool1 = true;
      ((AvatarView)localObject).a(bool1);
      localObject = b;
      if (paramBoolean) {
        break label44;
      }
    }
    label44:
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      ((RichStatusView)localObject).b(paramBoolean);
      return;
      bool1 = false;
      break;
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if (l == -1) {
      return;
    }
    b.a(paramBoolean);
  }
  
  private void h()
  {
    if ((!f) || (TextUtils.isEmpty(m)) || (b == null)) {
      setContentDescription(null);
    }
    for (;;)
    {
      if (o != null) {
        o.b();
      }
      return;
      StringBuilder localStringBuilder = new StringBuilder(m);
      b.a(localStringBuilder);
      setContentDescription(localStringBuilder.toString());
    }
  }
  
  public int a()
  {
    return b(h);
  }
  
  public void a(dns paramdns)
  {
    b.a(paramdns);
    if ((g) && (b.b()))
    {
      if (p == null) {
        p = new fdw(this);
      }
      d.removeCallbacks(p);
      d.postDelayed(p, 10000L);
    }
    h();
  }
  
  public void a(String paramString, czb paramczb, int paramInt, ewv paramewv)
  {
    m = paramString;
    k = paramczb;
    b.a(k);
    o = paramewv;
    g(paramInt);
    e = gvj.a(getContext().getContentResolver(), "babel_richstatus", true);
    f = true;
    h();
  }
  
  public void a(String paramString1, String paramString2, bfd parambfd)
  {
    j.a(paramString1, paramString2, parambfd);
  }
  
  public void a(boolean paramBoolean)
  {
    if (!e) {
      paramBoolean = false;
    }
    if (g != paramBoolean)
    {
      g = paramBoolean;
      if (!g) {
        break label112;
      }
    }
    label112:
    for (String str = k.a;; str = null)
    {
      if (n == null)
      {
        if (str != null)
        {
          Object localObject = ilh.b(getContext());
          int i1 = ((hpu)((ilh)localObject).a(hpu.class)).a();
          localObject = (iog)((ilh)localObject).a(ino.class);
          n = new fdx(this, getContext(), (iog)localObject, i1);
        }
      }
      else {
        n.a(str);
      }
      return;
    }
  }
  
  public int b()
  {
    return h;
  }
  
  public int c()
  {
    return i;
  }
  
  public int c(int paramInt)
  {
    return h & (paramInt ^ 0xFFFFFFFF);
  }
  
  public int d(int paramInt)
  {
    return h | paramInt;
  }
  
  public boolean d()
  {
    return (h & 0x2) == 2;
  }
  
  public void e(int paramInt)
  {
    int i1 = b(h);
    int i2 = b(paramInt);
    h = paramInt;
    if (c)
    {
      String str1 = String.valueOf(a(i2));
      String str2 = String.valueOf(k);
      new StringBuilder(String.valueOf(str1).length() + 29 + String.valueOf(str2).length()).append("[AvatarView] new state  ").append(str1).append(" for ").append(str2);
    }
    if (i2 != i1) {}
    switch (i2)
    {
    case 3: 
    default: 
      return;
    case 2: 
      b(true);
      c(false);
      return;
    case 4: 
      c(true);
      b(true);
      return;
    }
    b(false);
    c(false);
  }
  
  public boolean e()
  {
    return (h & 0x4) == 4;
  }
  
  public void f()
  {
    a(false);
  }
  
  public void f(int paramInt)
  {
    i = paramInt;
  }
  
  public czb g()
  {
    return k;
  }
  
  public void g(int paramInt)
  {
    if (l != paramInt)
    {
      l = paramInt;
      b.a(paramInt);
    }
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
    j = ((AvatarView)findViewById(aen.aC));
    j.a(true);
    b = ((RichStatusView)findViewById(aen.fM));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.OverlayedAvatarView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */