package com.google.android.apps.hangouts.views;

import aal;
import aix;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import ard;
import auk;
import auw;
import awl;
import bet;
import bfd;
import bfq;
import bhs;
import bhv;
import bip;
import ceh;
import cei;
import czb;
import ehd;
import ehg;
import ehh;
import eit;
import elz;
import emb;
import exb;
import exd;
import exs;
import eyd;
import eye;
import eys;
import ezi;
import faw;
import hav;
import hbs;
import hv;
import ilh;
import imx;

public class AvatarView
  extends View
  implements bhv, ehg, ehh
{
  public static final boolean a = false;
  public boolean b = false;
  private int c;
  private String d;
  private bet e;
  private bhs f;
  private Bitmap g;
  private Bitmap h;
  private Bitmap i;
  private final Rect j = new Rect();
  private final Rect k = new Rect();
  private final elz l = new elz();
  private boolean m = true;
  private int n = 1;
  private int o = 0;
  private final Paint p;
  private ceh q;
  private cei r;
  private final auw<Bitmap> s = new faw(this);
  
  static
  {
    imx localimx = ezi.u;
  }
  
  public AvatarView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AvatarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AvatarView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (paramAttributeSet != null)
    {
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, awl.k);
      paramAttributeSet = localTypedArray.getString(awl.m);
      paramContext = paramAttributeSet;
      if (paramAttributeSet == null) {
        paramContext = "small";
      }
      if ("tiny".equals(paramContext))
      {
        paramInt = 0;
        c = paramInt;
        paramContext = localTypedArray.getString(awl.l);
        if (paramContext != null) {
          break label263;
        }
        paramInt = i1;
        label139:
        n = paramInt;
        localTypedArray.recycle();
      }
    }
    for (;;)
    {
      p = new Paint(2);
      e();
      return;
      if ("small".equals(paramContext))
      {
        paramInt = 1;
        break;
      }
      if ("medium".equals(paramContext))
      {
        paramInt = 2;
        break;
      }
      if ("large".equals(paramContext))
      {
        paramInt = 3;
        break;
      }
      if ("xlarge".equals(paramContext))
      {
        paramInt = 4;
        break;
      }
      paramContext = String.valueOf(paramContext);
      if (paramContext.length() != 0) {}
      for (paramContext = "Invalid avatar size: ".concat(paramContext);; paramContext = new String("Invalid avatar size: ")) {
        throw new IllegalArgumentException(paramContext);
      }
      label263:
      if ("square".equals(paramContext))
      {
        paramInt = 1;
        break label139;
      }
      if ("round".equals(paramContext))
      {
        paramInt = i1;
        break label139;
      }
      paramContext = String.valueOf(paramContext);
      if (paramContext.length() != 0) {}
      for (paramContext = "Invalid avatar shape: ".concat(paramContext);; paramContext = new String("Invalid avatar shape: ")) {
        throw new IllegalArgumentException(paramContext);
      }
      c = 2;
      n = 0;
    }
  }
  
  private void a(String paramString)
  {
    int i2 = f();
    if (n == 0) {}
    for (int i1 = emb.a;; i1 = emb.b)
    {
      h = eye.a().b(i2, i2);
      if (!elz.a(getContext(), h, paramString, i2, i1, aal.dh)) {
        break;
      }
      a(h);
      return;
    }
    eye.a().a(h);
    h = null;
  }
  
  private void e()
  {
    Bitmap localBitmap = null;
    if (o == 0) {
      switch (c)
      {
      }
    }
    for (;;)
    {
      if (g != localBitmap)
      {
        g = localBitmap;
        if (!b) {
          a(g);
        }
      }
      return;
      if (n == 1)
      {
        localBitmap = bfq.c();
      }
      else
      {
        localBitmap = bfq.b();
        continue;
        if (n == 1)
        {
          localBitmap = bfq.f();
        }
        else
        {
          localBitmap = bfq.e();
          continue;
          if (o == 1)
          {
            localBitmap = bfq.k();
          }
          else if (o == 3)
          {
            switch (c)
            {
            default: 
              break;
            case 0: 
            case 1: 
            case 2: 
              if (n == 1)
              {
                localBitmap = bfq.h();
                continue;
              }
              localBitmap = bfq.g();
              break;
            case 3: 
            case 4: 
              if (n == 1)
              {
                localBitmap = bfq.j();
                continue;
              }
              localBitmap = bfq.i();
              break;
            }
          }
          else
          {
            if (o == 2) {}
            for (boolean bool = true;; bool = false)
            {
              hbs.a("Expected condition to be true", bool);
              if (n != 1) {
                break label267;
              }
              localBitmap = bfq.f();
              break;
            }
            label267:
            localBitmap = bfq.e();
          }
        }
      }
    }
  }
  
  private int f()
  {
    switch (c)
    {
    default: 
      hbs.a("Invalid avatar size");
      return 0;
    case 0: 
    case 1: 
    case 2: 
      return bfq.a();
    case 3: 
      return bfq.d();
    }
    if (bfq.b == 0) {
      bfq.b = aal.oJ.getResources().getDimensionPixelSize(aal.ea);
    }
    return bfq.b;
  }
  
  private void g()
  {
    int i1 = getMeasuredHeight();
    int i2 = getMeasuredWidth();
    if ((i1 == 0) || (i2 == 0)) {
      return;
    }
    int i3 = i.getWidth();
    int i4 = i.getHeight();
    int i5;
    if (i2 > i1)
    {
      i5 = (int)(i3 * (1.0F - i1 / i2) / 2.0F);
      k.set(0, i5, i4, i3 - i5);
    }
    for (;;)
    {
      j.set(0, 0, i2, i1);
      return;
      i5 = (int)(i4 * (1.0F - i2 / i1) / 2.0F);
      k.set(i5, 0, i4 - i5, i3);
    }
  }
  
  public void a()
  {
    n = 0;
    e();
  }
  
  public void a(int paramInt)
  {
    o = paramInt;
    e();
  }
  
  public void a(Bitmap paramBitmap)
  {
    if (i != paramBitmap)
    {
      i = paramBitmap;
      g();
      invalidate();
    }
  }
  
  public void a(bet parambet)
  {
    e = null;
  }
  
  public void a(czb paramczb, bfd parambfd)
  {
    c();
    e = ehd.a(paramczb, parambfd, this);
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    hbs.a("Expected null", paramexs);
    Object localObject;
    if (a)
    {
      if (parameys == null)
      {
        localObject = null;
        if (paramexs != null) {
          break label127;
        }
        paramexs = null;
        label26:
        paramexs = String.valueOf(paramexs);
        new StringBuilder(String.valueOf(localObject).length() + 72 + String.valueOf(paramexs).length()).append("AvatarView: setImageBitmap ").append((String)localObject).append("gifImage=").append(paramexs).append(" success=").append(paramBoolean1).append(" loadedFromCache=").append(paramBoolean2);
      }
    }
    else
    {
      if (f == parambhs) {
        break label135;
      }
      if (parameys != null) {
        parameys.b();
      }
    }
    label127:
    label135:
    do
    {
      return;
      localObject = parameys.toString();
      break;
      paramexs = paramexs.toString();
      break label26;
      f = null;
    } while ((!paramBoolean1) || (parameys == null));
    hbs.b("Expected condition to be false", b);
    b = true;
    a(parameys.e());
  }
  
  public void a(String paramString1, String paramString2, int paramInt, bip parambip, bfd parambfd)
  {
    a(paramString1, paramString2, parambip, null, parambfd);
    if (paramInt == 1) {
      a(3);
    }
  }
  
  public void a(String paramString1, String paramString2, bet parambet, String paramString3, bfd parambfd)
  {
    e = null;
    a(paramString2, paramString1, parambfd);
  }
  
  public void a(String paramString1, String paramString2, bfd parambfd)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      c();
      if (!TextUtils.isEmpty(paramString2)) {
        a(paramString2);
      }
    }
    do
    {
      do
      {
        return;
      } while (TextUtils.equals(paramString1, d));
      c();
      d = paramString1;
      r = ((cei)ilh.a(getContext(), cei.class));
      q = ((ceh)ilh.a(getContext(), ceh.class));
      if (q.a())
      {
        if (n == 0) {
          paramString2 = getContext();
        }
        for (paramString2 = (auk)r.c(f()).a(paramString2, new ard(paramString2));; paramString2 = r.c(f()))
        {
          q.a(paramString1, s, paramString2, (hav)r.b().a());
          return;
        }
      }
      paramString1 = new eyd(paramString1, parambfd.a()).a(f()).d(true);
      if (n == 0) {}
      for (boolean bool = true;; bool = false)
      {
        f = new bhs(paramString1.b(bool), this, true, null);
        if (!((eit)ilh.a(getContext(), eit.class)).a(f, false)) {
          break;
        }
        f = null;
        return;
      }
    } while (TextUtils.isEmpty(paramString2));
    a(paramString2);
  }
  
  public void a(String paramString, boolean paramBoolean, bfd parambfd)
  {
    c();
    e = ehd.a(paramString, paramBoolean, parambfd, this);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      p.setAlpha(100);
    }
    for (;;)
    {
      invalidate();
      return;
      p.setAlpha(255);
    }
  }
  
  public String b()
  {
    return d;
  }
  
  public void b(int paramInt)
  {
    c = paramInt;
    e();
  }
  
  public void c()
  {
    if (f != null)
    {
      f.b();
      f = null;
    }
    if (e != null)
    {
      e.b();
      e = null;
    }
    a(g);
    if (b) {
      b = false;
    }
    if (h != null)
    {
      eye.a().a(h);
      h = null;
    }
    d = null;
  }
  
  public void d()
  {
    m = false;
  }
  
  protected void onDetachedFromWindow()
  {
    if (m) {
      c();
    }
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if ((a) && (i.isRecycled()))
    {
      exb localexb = eye.a();
      Bitmap localBitmap = i;
      ezi.d("Babel", "Attempting to draw with a recycled bitmap", new Exception((Exception)b.d.a(localBitmap)));
    }
    paramCanvas.drawBitmap(i, k, j, p);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(View.MeasureSpec.getSize(paramInt1), View.MeasureSpec.getSize(paramInt2));
    g();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.AvatarView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */