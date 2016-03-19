package com.google.android.libraries.social.avatars.ui;

import aal;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import huy;
import igp;
import igr;
import iky;
import ilh;

public final class AvatarView
  extends View
  implements igr
{
  private static boolean a;
  private static Paint b;
  private static huy c;
  private final RectF d = new RectF();
  private final RectF e = new RectF();
  private final RectF f = new RectF();
  private final Matrix g = new Matrix();
  private final Matrix h = new Matrix();
  private final Paint i = new Paint(2);
  private Drawable j;
  private igp k;
  private int l;
  private int m;
  private int n;
  private int o;
  private boolean p;
  private int q;
  private boolean r;
  private boolean s = true;
  private String t;
  private String u;
  private String v;
  private String w;
  
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
    Resources localResources = paramContext.getResources();
    if (!a)
    {
      c = (huy)ilh.a(paramContext, huy.class);
      paramContext = new Paint();
      b = paramContext;
      paramContext.setAntiAlias(true);
      b.setStrokeWidth(4.0F);
      b.setColor(localResources.getColor(aal.tS));
      b.setStyle(Paint.Style.STROKE);
      a = true;
    }
    j = localResources.getDrawable(aal.tU);
    j.setCallback(this);
    l = 2;
    q = 2;
    if (paramAttributeSet != null)
    {
      paramContext = paramAttributeSet.getAttributeValue(null, "size");
      if (paramContext != null)
      {
        if (!"tiny".equals(paramContext)) {
          break label344;
        }
        paramInt = 0;
        label217:
        l = paramInt;
      }
      paramContext = paramAttributeSet.getAttributeValue(null, "shape");
      if (paramContext != null)
      {
        if (!"normal".equals(paramContext)) {
          break label427;
        }
        paramInt = 0;
      }
    }
    for (;;)
    {
      q = paramInt;
      paramContext = paramAttributeSet.getAttributeValue(null, "selectable");
      if (paramContext != null) {
        s = Boolean.parseBoolean(paramContext);
      }
      p = paramAttributeSet.getAttributeBooleanValue(null, "allowNonSquare", false);
      l = l;
      switch (l)
      {
      case 2: 
      default: 
        m = aal.D(getContext());
        return;
        label344:
        if ("small".equals(paramContext))
        {
          paramInt = 1;
          break label217;
        }
        if ("medium".equals(paramContext))
        {
          paramInt = 2;
          break label217;
        }
        if ("large".equals(paramContext))
        {
          paramInt = 3;
          break label217;
        }
        paramContext = String.valueOf(paramContext);
        if (paramContext.length() != 0) {}
        for (paramContext = "Invalid avatar size: ".concat(paramContext);; paramContext = new String("Invalid avatar size: ")) {
          throw new IllegalArgumentException(paramContext);
        }
        label427:
        paramInt = i1;
        if (!"round".equals(paramContext))
        {
          if (!"rounded_corners".equals(paramContext)) {
            break label453;
          }
          paramInt = 2;
        }
        break;
      }
    }
    label453:
    paramContext = String.valueOf(paramContext);
    if (paramContext.length() != 0) {}
    for (paramContext = "Invalid avatar shape: ".concat(paramContext);; paramContext = new String("Invalid avatar shape: ")) {
      throw new IllegalArgumentException(paramContext);
    }
    m = aal.z(getContext());
    return;
    m = aal.B(getContext());
    return;
    m = aal.F(getContext());
  }
  
  private void a()
  {
    if (getWindowToken() != null) {}
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0)
      {
        if (u == null) {
          break;
        }
        k = c.a(getContext(), u, l, q, this);
      }
      return;
    }
    invalidate();
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    g.reset();
    h.reset();
    if ((paramInt1 == 0) || (paramInt3 == 0)) {}
    do
    {
      return;
      e.set(0.0F, 0.0F, paramInt2, paramInt4);
      f.set(getPaddingLeft(), getPaddingTop(), paramInt1 - getPaddingRight(), paramInt3 - getPaddingBottom());
      g.setRectToRect(e, f, Matrix.ScaleToFit.START);
    } while (g.invert(h));
    h.reset();
  }
  
  private void b()
  {
    if (k != null)
    {
      k.b(this);
      k = null;
    }
  }
  
  public void a(igp paramigp)
  {
    if (paramigp.m() == 1)
    {
      n = ((Bitmap)paramigp.o()).getWidth();
      o = ((Bitmap)paramigp.o()).getHeight();
      a(getMeasuredWidth(), n, getMeasuredHeight(), o);
    }
    invalidate();
  }
  
  public void a(String paramString1, String paramString2)
  {
    if ((!TextUtils.equals(t, paramString1)) || (!TextUtils.equals(u, paramString2)))
    {
      b();
      t = paramString1;
      u = paramString2;
      w = null;
      v = null;
      a();
    }
  }
  
  protected void drawableStateChanged()
  {
    j.setState(getDrawableState());
    invalidate();
    super.drawableStateChanged();
  }
  
  public CharSequence getContentDescription()
  {
    if (!TextUtils.isEmpty(w)) {
      return w;
    }
    if (!TextUtils.isEmpty(v))
    {
      if (isClickable()) {
        return getResources().getString(aal.tY, new Object[] { v });
      }
      return getResources().getString(aal.tX);
    }
    if (isClickable()) {
      return getResources().getString(aal.tW);
    }
    return getResources().getString(aal.tV);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    a();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    b();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    Object localObject1 = null;
    Object localObject2 = localObject1;
    if (k != null)
    {
      localObject2 = localObject1;
      if (k.m() == 1) {
        localObject2 = (Bitmap)k.o();
      }
    }
    localObject1 = localObject2;
    if (localObject2 == null) {
      switch (l)
      {
      default: 
        localObject1 = localObject2;
      }
    }
    for (;;)
    {
      if (r)
      {
        d.set(0.0F, 0.0F, getWidth(), getHeight());
        paramCanvas.saveLayerAlpha(d, 105, 31);
      }
      paramCanvas.concat(g);
      paramCanvas.drawBitmap((Bitmap)localObject1, 0.0F, 0.0F, i);
      paramCanvas.concat(h);
      if (r) {
        paramCanvas.restore();
      }
      if ((s) && ((isPressed()) || (isFocused())) && (!r))
      {
        d.set(0.0F, 0.0F, n, o);
        g.mapRect(d);
      }
      switch (q)
      {
      default: 
        return;
        localObject1 = getContext();
        switch (q)
        {
        default: 
          localObject1 = aal.A((Context)localObject1);
          break;
        case 1: 
          if (aal.tG == null) {
            aal.tG = iky.a(aal.A((Context)localObject1));
          }
          localObject1 = aal.tG;
          break;
        case 2: 
          if (aal.tH == null) {
            aal.tH = iky.a(aal.A((Context)localObject1), aal.H((Context)localObject1));
          }
          localObject1 = aal.tH;
          continue;
          localObject1 = getContext();
          switch (q)
          {
          default: 
            localObject1 = aal.C((Context)localObject1);
            break;
          case 1: 
            if (aal.tJ == null) {
              aal.tJ = iky.a(aal.C((Context)localObject1));
            }
            localObject1 = aal.tJ;
            break;
          case 2: 
            if (aal.tK == null) {
              aal.tK = iky.a(aal.C((Context)localObject1), aal.H((Context)localObject1));
            }
            localObject1 = aal.tK;
            continue;
            localObject1 = getContext();
            switch (q)
            {
            default: 
              localObject1 = aal.E((Context)localObject1);
              break;
            case 1: 
              if (aal.tM == null) {
                aal.tM = iky.a(aal.E((Context)localObject1));
              }
              localObject1 = aal.tM;
              break;
            case 2: 
              if (aal.tN == null) {
                aal.tN = iky.a(aal.E((Context)localObject1), aal.H((Context)localObject1));
              }
              localObject1 = aal.tN;
              continue;
              localObject1 = getContext();
              switch (q)
              {
              default: 
                localObject1 = aal.G((Context)localObject1);
                break;
              case 1: 
                if (aal.tP == null) {
                  aal.tP = iky.a(aal.G((Context)localObject1));
                }
                localObject1 = aal.tP;
                break;
              case 2: 
                if (aal.tQ == null) {
                  aal.tQ = iky.a(aal.G((Context)localObject1), aal.H((Context)localObject1));
                }
                localObject1 = aal.tQ;
              }
              break;
            }
            break;
          }
          break;
        }
        break;
      }
    }
    j.setBounds((int)d.left, (int)d.top, (int)d.right, (int)d.bottom);
    j.draw(paramCanvas);
    return;
    d.set(d.left + 2.0F, d.top + 2.0F, d.right - 2.0F, d.bottom - 2.0F);
    paramCanvas.drawOval(d, b);
    return;
    d.set(d.left + 2.0F, d.top + 2.0F, d.right - 2.0F, d.bottom - 2.0F);
    float f1 = aal.H(getContext());
    paramCanvas.drawRoundRect(d, f1, f1, b);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = m + getPaddingLeft() + getPaddingRight();
    int i3 = View.MeasureSpec.getMode(paramInt1);
    int i1;
    if (i3 == 1073741824)
    {
      i1 = View.MeasureSpec.getSize(paramInt1);
      paramInt1 = m;
      i2 = getPaddingTop() + paramInt1 + getPaddingBottom();
      i3 = View.MeasureSpec.getMode(paramInt2);
      if (!p) {
        break label187;
      }
      if ((i3 != 1073741824) && (i3 != Integer.MIN_VALUE)) {
        break label244;
      }
      paramInt1 = Math.min(i2, View.MeasureSpec.getSize(paramInt2));
      paramInt2 = i1;
    }
    for (;;)
    {
      Bitmap localBitmap;
      if ((k != null) && (k.m() == 1))
      {
        localBitmap = (Bitmap)k.o();
        n = localBitmap.getWidth();
      }
      for (o = localBitmap.getHeight();; o = m)
      {
        a(paramInt2, n, paramInt1, o);
        setMeasuredDimension(paramInt2, paramInt1);
        return;
        i1 = i2;
        if (i3 != Integer.MIN_VALUE) {
          break;
        }
        i1 = Math.min(i2, View.MeasureSpec.getSize(paramInt1));
        break;
        label187:
        if (i3 == 1073741824) {}
        for (paramInt1 = Math.min(i1, View.MeasureSpec.getSize(paramInt2));; paramInt1 = Math.min(i1, i2))
        {
          paramInt2 = paramInt1;
          i1 = paramInt1;
          paramInt1 = paramInt2;
          paramInt2 = i1;
          break;
        }
        n = m;
      }
      label244:
      paramInt2 = i1;
    }
  }
  
  public void setContentDescription(CharSequence paramCharSequence)
  {
    super.setContentDescription(paramCharSequence);
    w = ((String)paramCharSequence);
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    if (paramDrawable == j) {
      return true;
    }
    return super.verifyDrawable(paramDrawable);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.avatars.ui.AvatarView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */