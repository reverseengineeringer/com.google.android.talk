package android.support.v7.widget;

import aaz;
import abb;
import abc;
import abd;
import abe;
import aen;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import iy;
import java.util.ArrayList;
import java.util.List;
import jn;
import jo;
import jr;
import jx;
import ks;
import lc;
import qf;
import sb;
import tl;
import tm;
import tp;
import ua;
import vf;
import vm;
import vv;
import vw;
import vz;
import we;
import wp;

public class Toolbar
  extends ViewGroup
{
  private boolean A;
  private boolean B;
  private final ArrayList<View> C = new ArrayList();
  private final ArrayList<View> D = new ArrayList();
  private final int[] E = new int[2];
  private final wp F = new wp(this);
  private vf G;
  private we H;
  private abb I;
  private ua J;
  private tm K;
  private boolean L;
  private final Runnable M = new aaz(this);
  private final vv N;
  public Drawable a;
  public CharSequence b;
  public ImageButton c;
  public View d;
  public int e;
  public abd f;
  private ActionMenuView g;
  private TextView h;
  private TextView i;
  private ImageButton j;
  private ImageView k;
  private Context l;
  private int m;
  private int n;
  private int o;
  private int p;
  private int q;
  private int r;
  private int s;
  private int t;
  private final vm u = new vm();
  private int v = 8388627;
  private CharSequence w;
  private CharSequence x;
  private int y;
  private int z;
  
  public Toolbar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Toolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aen.ah);
  }
  
  public Toolbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = vw.a(getContext(), paramAttributeSet, sb.cG, paramInt);
    n = paramContext.f(sb.dd, 0);
    o = paramContext.f(sb.cV, 0);
    v = paramContext.b(sb.cH, v);
    e = 48;
    paramInt = paramContext.c(sb.dc, 0);
    t = paramInt;
    s = paramInt;
    r = paramInt;
    q = paramInt;
    paramInt = paramContext.c(sb.da, -1);
    if (paramInt >= 0) {
      q = paramInt;
    }
    paramInt = paramContext.c(sb.cZ, -1);
    if (paramInt >= 0) {
      r = paramInt;
    }
    paramInt = paramContext.c(sb.db, -1);
    if (paramInt >= 0) {
      s = paramInt;
    }
    paramInt = paramContext.c(sb.cY, -1);
    if (paramInt >= 0) {
      t = paramInt;
    }
    p = paramContext.d(sb.cQ, -1);
    paramInt = paramContext.c(sb.cN, Integer.MIN_VALUE);
    int i1 = paramContext.c(sb.cK, Integer.MIN_VALUE);
    int i2 = paramContext.d(sb.cL, 0);
    int i3 = paramContext.d(sb.cM, 0);
    u.b(i2, i3);
    if ((paramInt != Integer.MIN_VALUE) || (i1 != Integer.MIN_VALUE)) {
      u.a(paramInt, i1);
    }
    a = paramContext.a(sb.cJ);
    b = paramContext.c(sb.cI);
    paramAttributeSet = paramContext.c(sb.cX);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      b(paramAttributeSet);
    }
    paramAttributeSet = paramContext.c(sb.cU);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      c(paramAttributeSet);
    }
    l = getContext();
    a(paramContext.f(sb.cT, 0));
    paramAttributeSet = paramContext.a(sb.cS);
    if (paramAttributeSet != null) {
      b(paramAttributeSet);
    }
    paramAttributeSet = paramContext.c(sb.cR);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      d(paramAttributeSet);
    }
    paramAttributeSet = paramContext.a(sb.cO);
    if (paramAttributeSet != null) {
      a(paramAttributeSet);
    }
    paramAttributeSet = paramContext.c(sb.cP);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      a(paramAttributeSet);
    }
    if (paramContext.g(sb.de)) {
      b(paramContext.f(sb.de));
    }
    if (paramContext.g(sb.cW)) {
      c(paramContext.f(sb.cW));
    }
    paramContext.a();
    N = paramContext.b();
  }
  
  private int a(View paramView, int paramInt)
  {
    abc localabc = (abc)paramView.getLayoutParams();
    int i3 = paramView.getMeasuredHeight();
    int i2;
    int i1;
    int i4;
    if (paramInt > 0)
    {
      paramInt = (i3 - paramInt) / 2;
      i2 = a & 0x70;
      i1 = i2;
      switch (i2)
      {
      default: 
        i1 = v & 0x70;
      }
      switch (i1)
      {
      default: 
        i1 = getPaddingTop();
        i2 = getPaddingBottom();
        i4 = getHeight();
        paramInt = (i4 - i1 - i2 - i3) / 2;
        if (paramInt < topMargin) {
          paramInt = topMargin;
        }
        break;
      }
    }
    for (;;)
    {
      return paramInt + i1;
      paramInt = 0;
      break;
      return getPaddingTop() - paramInt;
      return getHeight() - getPaddingBottom() - i3 - bottomMargin - paramInt;
      i2 = i4 - i2 - i3 - paramInt - i1;
      if (i2 < bottomMargin) {
        paramInt = Math.max(0, paramInt - (bottomMargin - i2));
      }
    }
  }
  
  private int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = leftMargin - paramArrayOfInt[0];
    int i2 = rightMargin - paramArrayOfInt[1];
    int i3 = Math.max(0, i1) + Math.max(0, i2);
    paramArrayOfInt[0] = Math.max(0, -i1);
    paramArrayOfInt[1] = Math.max(0, -i2);
    paramView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + i3 + paramInt2, width), getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin + paramInt4, height));
    return paramView.getMeasuredWidth() + i3;
  }
  
  private int a(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    abc localabc = (abc)paramView.getLayoutParams();
    int i1 = leftMargin - paramArrayOfInt[0];
    paramInt1 = Math.max(0, i1) + paramInt1;
    paramArrayOfInt[0] = Math.max(0, -i1);
    paramInt2 = a(paramView, paramInt2);
    i1 = paramView.getMeasuredWidth();
    paramView.layout(paramInt1, paramInt2, paramInt1 + i1, paramView.getMeasuredHeight() + paramInt2);
    return rightMargin + i1 + paramInt1;
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin + paramInt2, width);
    paramInt2 = getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin, height);
    paramInt3 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = paramInt2;
    if (paramInt3 != 1073741824)
    {
      paramInt1 = paramInt2;
      if (paramInt4 >= 0)
      {
        paramInt1 = paramInt4;
        if (paramInt3 != 0) {
          paramInt1 = Math.min(View.MeasureSpec.getSize(paramInt2), paramInt4);
        }
        paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
      }
    }
    paramView.measure(i1, paramInt1);
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    Object localObject = paramView.getLayoutParams();
    if (localObject == null) {
      localObject = r();
    }
    for (;;)
    {
      b = 1;
      if ((!paramBoolean) || (d == null)) {
        break;
      }
      paramView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      D.add(paramView);
      return;
      if (!checkLayoutParams((ViewGroup.LayoutParams)localObject)) {
        localObject = a((ViewGroup.LayoutParams)localObject);
      } else {
        localObject = (abc)localObject;
      }
    }
    addView(paramView, (ViewGroup.LayoutParams)localObject);
  }
  
  private void a(List<View> paramList, int paramInt)
  {
    int i1 = 1;
    int i2 = 0;
    if (ks.a.u(this) == 1) {}
    int i4;
    int i3;
    View localView;
    abc localabc;
    for (;;)
    {
      i4 = getChildCount();
      i3 = iy.a(paramInt, ks.a.u(this));
      paramList.clear();
      paramInt = i2;
      if (i1 == 0) {
        break;
      }
      paramInt = i4 - 1;
      while (paramInt >= 0)
      {
        localView = getChildAt(paramInt);
        localabc = (abc)localView.getLayoutParams();
        if ((b == 0) && (a(localView)) && (f(a) == i3)) {
          paramList.add(localView);
        }
        paramInt -= 1;
      }
      i1 = 0;
    }
    while (paramInt < i4)
    {
      localView = getChildAt(paramInt);
      localabc = (abc)localView.getLayoutParams();
      if ((b == 0) && (a(localView)) && (f(a) == i3)) {
        paramList.add(localView);
      }
      paramInt += 1;
    }
  }
  
  private boolean a(View paramView)
  {
    return (paramView != null) && (paramView.getParent() == this) && (paramView.getVisibility() != 8);
  }
  
  private static int b(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = jn.a.a(paramView);
    return jn.a.b(paramView) + i1;
  }
  
  private int b(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    abc localabc = (abc)paramView.getLayoutParams();
    int i1 = rightMargin - paramArrayOfInt[1];
    paramInt1 -= Math.max(0, i1);
    paramArrayOfInt[1] = Math.max(0, -i1);
    paramInt2 = a(paramView, paramInt2);
    i1 = paramView.getMeasuredWidth();
    paramView.layout(paramInt1 - i1, paramInt2, paramInt1, paramView.getMeasuredHeight() + paramInt2);
    return paramInt1 - (leftMargin + i1);
  }
  
  private static int c(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = topMargin;
    return bottomMargin + i1;
  }
  
  private boolean d(View paramView)
  {
    return (paramView.getParent() == this) || (D.contains(paramView));
  }
  
  private int f(int paramInt)
  {
    int i2 = ks.a.u(this);
    int i1 = iy.a(paramInt, i2) & 0x7;
    paramInt = i1;
    switch (i1)
    {
    case 2: 
    case 4: 
    default: 
      if (i2 == 1) {
        paramInt = 5;
      }
      break;
    case 1: 
    case 3: 
    case 5: 
      return paramInt;
    }
    return 3;
  }
  
  private void v()
  {
    if (k == null) {
      k = new ImageView(getContext());
    }
  }
  
  private void w()
  {
    if (g == null)
    {
      g = new ActionMenuView(getContext());
      g.a(m);
      g.a(F);
      g.a(J, K);
      abc localabc = r();
      a = (0x800005 | e & 0x70);
      g.setLayoutParams(localabc);
      a(g, false);
    }
  }
  
  private void x()
  {
    if (j == null)
    {
      j = new ImageButton(getContext(), null, aen.ag);
      abc localabc = r();
      a = (0x800003 | e & 0x70);
      j.setLayoutParams(localabc);
    }
  }
  
  public abc a(AttributeSet paramAttributeSet)
  {
    return new abc(getContext(), paramAttributeSet);
  }
  
  protected abc a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof abc)) {
      return new abc((abc)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof qf)) {
      return new abc((qf)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new abc((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new abc(paramLayoutParams);
  }
  
  public void a(int paramInt)
  {
    if (m != paramInt)
    {
      m = paramInt;
      if (paramInt == 0) {
        l = getContext();
      }
    }
    else
    {
      return;
    }
    l = new ContextThemeWrapper(getContext(), paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    u.a(paramInt1, paramInt2);
  }
  
  public void a(abd paramabd)
  {
    f = paramabd;
  }
  
  public void a(Context paramContext, int paramInt)
  {
    n = paramInt;
    if (h != null) {
      h.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public void a(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      v();
      if (!d(k)) {
        a(k, true);
      }
    }
    for (;;)
    {
      if (k != null) {
        k.setImageDrawable(paramDrawable);
      }
      return;
      if ((k != null) && (d(k)))
      {
        removeView(k);
        D.remove(k);
      }
    }
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    x();
    j.setOnClickListener(paramOnClickListener);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      v();
    }
    if (k != null) {
      k.setContentDescription(paramCharSequence);
    }
  }
  
  public void a(tl paramtl, we paramwe)
  {
    if ((paramtl == null) && (g == null)) {}
    tl localtl;
    do
    {
      return;
      w();
      localtl = g.e();
    } while (localtl == paramtl);
    if (localtl != null)
    {
      localtl.b(H);
      localtl.b(I);
    }
    if (I == null) {
      I = new abb(this);
    }
    paramwe.c(true);
    if (paramtl != null)
    {
      paramtl.a(paramwe, l);
      paramtl.a(I, l);
    }
    for (;;)
    {
      g.a(m);
      g.a(paramwe);
      H = paramwe;
      return;
      paramwe.a(l, null);
      I.a(l, null);
      paramwe.b(true);
      I.b(true);
    }
  }
  
  public void a(ua paramua, tm paramtm)
  {
    J = paramua;
    K = paramtm;
  }
  
  public void a(boolean paramBoolean)
  {
    L = paramBoolean;
    requestLayout();
  }
  
  public boolean a()
  {
    return (getVisibility() == 0) && (g != null) && (g.a());
  }
  
  public void b(int paramInt)
  {
    y = paramInt;
    if (h != null) {
      h.setTextColor(paramInt);
    }
  }
  
  public void b(Context paramContext, int paramInt)
  {
    o = paramInt;
    if (i != null) {
      i.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public void b(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      x();
      if (!d(j)) {
        a(j, true);
      }
    }
    for (;;)
    {
      if (j != null) {
        j.setImageDrawable(paramDrawable);
      }
      return;
      if ((j != null) && (d(j)))
      {
        removeView(j);
        D.remove(j);
      }
    }
  }
  
  public void b(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (h == null)
      {
        Context localContext = getContext();
        h = new TextView(localContext);
        h.setSingleLine();
        h.setEllipsize(TextUtils.TruncateAt.END);
        if (n != 0) {
          h.setTextAppearance(localContext, n);
        }
        if (y != 0) {
          h.setTextColor(y);
        }
      }
      if (!d(h)) {
        a(h, true);
      }
    }
    for (;;)
    {
      if (h != null) {
        h.setText(paramCharSequence);
      }
      w = paramCharSequence;
      return;
      if ((h != null) && (d(h)))
      {
        removeView(h);
        D.remove(h);
      }
    }
  }
  
  public boolean b()
  {
    return (g != null) && (g.h());
  }
  
  public void c(int paramInt)
  {
    z = paramInt;
    if (i != null) {
      i.setTextColor(paramInt);
    }
  }
  
  public void c(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (i == null)
      {
        Context localContext = getContext();
        i = new TextView(localContext);
        i.setSingleLine();
        i.setEllipsize(TextUtils.TruncateAt.END);
        if (o != 0) {
          i.setTextAppearance(localContext, o);
        }
        if (z != 0) {
          i.setTextColor(z);
        }
      }
      if (!d(i)) {
        a(i, true);
      }
    }
    for (;;)
    {
      if (i != null) {
        i.setText(paramCharSequence);
      }
      x = paramCharSequence;
      return;
      if ((i != null) && (d(i)))
      {
        removeView(i);
        D.remove(i);
      }
    }
  }
  
  public boolean c()
  {
    return (g != null) && (g.i());
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (super.checkLayoutParams(paramLayoutParams)) && ((paramLayoutParams instanceof abc));
  }
  
  public void d(int paramInt)
  {
    if (paramInt != 0) {}
    for (CharSequence localCharSequence = getContext().getText(paramInt);; localCharSequence = null)
    {
      d(localCharSequence);
      return;
    }
  }
  
  public void d(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      x();
    }
    if (j != null) {
      j.setContentDescription(paramCharSequence);
    }
  }
  
  public boolean d()
  {
    return (g != null) && (g.f());
  }
  
  public void e(int paramInt)
  {
    b(N.a(paramInt));
  }
  
  public boolean e()
  {
    return (g != null) && (g.g());
  }
  
  public void f()
  {
    if (g != null) {
      g.j();
    }
  }
  
  public boolean g()
  {
    return (I != null) && (I.b != null);
  }
  
  public void h()
  {
    if (I == null) {}
    for (tp localtp = null;; localtp = I.b)
    {
      if (localtp != null) {
        localtp.collapseActionView();
      }
      return;
    }
  }
  
  public CharSequence i()
  {
    return w;
  }
  
  public CharSequence j()
  {
    return x;
  }
  
  public CharSequence k()
  {
    if (j != null) {
      return j.getContentDescription();
    }
    return null;
  }
  
  public Drawable l()
  {
    if (j != null) {
      return j.getDrawable();
    }
    return null;
  }
  
  public Menu m()
  {
    w();
    if (g.e() == null)
    {
      tl localtl = (tl)g.d();
      if (I == null) {
        I = new abb(this);
      }
      g.k();
      localtl.a(I, l);
    }
    return g.d();
  }
  
  public int n()
  {
    return u.c();
  }
  
  public int o()
  {
    return u.d();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(M);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i1 = jx.a(paramMotionEvent);
    if (i1 == 9) {
      B = false;
    }
    if (!B)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i1 == 9) && (!bool)) {
        B = true;
      }
    }
    if ((i1 == 10) || (i1 == 3)) {
      B = false;
    }
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i3;
    int i6;
    int i9;
    int i1;
    int i7;
    int i8;
    int i10;
    int[] arrayOfInt;
    int i5;
    if (ks.a.u(this) == 1)
    {
      i3 = 1;
      i6 = getWidth();
      i9 = getHeight();
      i1 = getPaddingLeft();
      i7 = getPaddingRight();
      i8 = getPaddingTop();
      i10 = getPaddingBottom();
      paramInt4 = i6 - i7;
      arrayOfInt = E;
      arrayOfInt[1] = 0;
      arrayOfInt[0] = 0;
      i5 = ks.a.q(this);
      if (!a(j)) {
        break label1717;
      }
      if (i3 == 0) {
        break label884;
      }
      paramInt4 = b(j, paramInt4, arrayOfInt, i5);
      paramInt1 = i1;
    }
    for (;;)
    {
      label117:
      paramInt2 = paramInt4;
      paramInt3 = paramInt1;
      if (a(c))
      {
        if (i3 != 0)
        {
          paramInt2 = b(c, paramInt4, arrayOfInt, i5);
          paramInt3 = paramInt1;
        }
      }
      else
      {
        label157:
        paramInt1 = paramInt2;
        paramInt4 = paramInt3;
        if (a(g))
        {
          if (i3 == 0) {
            break label923;
          }
          paramInt4 = a(g, paramInt3, arrayOfInt, i5);
          paramInt1 = paramInt2;
        }
        label197:
        arrayOfInt[0] = Math.max(0, p() - paramInt4);
        arrayOfInt[1] = Math.max(0, q() - (i6 - i7 - paramInt1));
        paramInt3 = Math.max(paramInt4, p());
        paramInt4 = Math.min(paramInt1, i6 - i7 - q());
        paramInt2 = paramInt4;
        paramInt1 = paramInt3;
        if (a(d))
        {
          if (i3 == 0) {
            break label944;
          }
          paramInt2 = b(d, paramInt4, arrayOfInt, i5);
          paramInt1 = paramInt3;
        }
        label299:
        if (!a(k)) {
          break label1711;
        }
        if (i3 == 0) {
          break label965;
        }
        paramInt2 = b(k, paramInt2, arrayOfInt, i5);
        paramInt3 = paramInt1;
      }
      for (;;)
      {
        label332:
        paramBoolean = a(h);
        boolean bool = a(i);
        paramInt1 = 0;
        Object localObject1;
        if (paramBoolean)
        {
          localObject1 = (abc)h.getLayoutParams();
          paramInt1 = topMargin;
          paramInt4 = h.getMeasuredHeight();
          paramInt1 = bottomMargin + (paramInt1 + paramInt4) + 0;
        }
        int i2;
        if (bool)
        {
          localObject1 = (abc)i.getLayoutParams();
          paramInt4 = topMargin;
          i2 = i.getMeasuredHeight();
        }
        for (int i4 = bottomMargin + (paramInt4 + i2) + paramInt1;; i4 = paramInt1)
        {
          label470:
          Object localObject2;
          if (!paramBoolean)
          {
            paramInt4 = paramInt2;
            paramInt1 = paramInt3;
            if (!bool) {}
          }
          else
          {
            if (!paramBoolean) {
              break label983;
            }
            localObject1 = h;
            if (!bool) {
              break label992;
            }
            localObject2 = i;
            label481:
            localObject1 = (abc)((View)localObject1).getLayoutParams();
            localObject2 = (abc)((View)localObject2).getLayoutParams();
            if (((!paramBoolean) || (h.getMeasuredWidth() <= 0)) && ((!bool) || (i.getMeasuredWidth() <= 0))) {
              break label1001;
            }
            i2 = 1;
            label533:
            switch (v & 0x70)
            {
            default: 
              paramInt1 = (i9 - i8 - i10 - i4) / 2;
              if (paramInt1 < topMargin + s) {
                paramInt1 = topMargin + s;
              }
              break;
            }
          }
          label607:
          label612:
          label628:
          label884:
          label923:
          label944:
          label965:
          label983:
          label992:
          label1001:
          label1121:
          label1679:
          label1696:
          label1702:
          for (;;)
          {
            paramInt1 = i8 + paramInt1;
            if (i3 != 0) {
              if (i2 != 0)
              {
                paramInt4 = q;
                paramInt4 -= arrayOfInt[1];
                paramInt2 -= Math.max(0, paramInt4);
                arrayOfInt[1] = Math.max(0, -paramInt4);
                if (!paramBoolean) {
                  break label1696;
                }
                localObject1 = (abc)h.getLayoutParams();
                paramInt4 = paramInt2 - h.getMeasuredWidth();
                i3 = h.getMeasuredHeight() + paramInt1;
                h.layout(paramInt4, paramInt1, paramInt2, i3);
                i4 = r;
                paramInt1 = i3 + bottomMargin;
                paramInt4 -= i4;
              }
            }
            for (;;)
            {
              if (bool)
              {
                localObject1 = (abc)i.getLayoutParams();
                paramInt1 = topMargin + paramInt1;
                i3 = i.getMeasuredWidth();
                i4 = i.getMeasuredHeight();
                i.layout(paramInt2 - i3, paramInt1, paramInt2, i4 + paramInt1);
                paramInt1 = r;
                i3 = bottomMargin;
              }
              for (paramInt1 = paramInt2 - paramInt1;; paramInt1 = paramInt2)
              {
                if (i2 != 0) {}
                for (paramInt1 = Math.min(paramInt4, paramInt1);; paramInt1 = paramInt2)
                {
                  paramInt4 = paramInt1;
                  paramInt1 = paramInt3;
                  a(C, 3);
                  paramInt3 = C.size();
                  paramInt2 = 0;
                  for (;;)
                  {
                    if (paramInt2 < paramInt3)
                    {
                      paramInt1 = a((View)C.get(paramInt2), paramInt1, arrayOfInt, i5);
                      paramInt2 += 1;
                      continue;
                      i3 = 0;
                      break;
                      paramInt1 = a(j, i1, arrayOfInt, i5);
                      break label117;
                      paramInt3 = a(c, paramInt1, arrayOfInt, i5);
                      paramInt2 = paramInt4;
                      break label157;
                      paramInt1 = b(g, paramInt2, arrayOfInt, i5);
                      paramInt4 = paramInt3;
                      break label197;
                      paramInt1 = a(d, paramInt3, arrayOfInt, i5);
                      paramInt2 = paramInt4;
                      break label299;
                      paramInt3 = a(k, paramInt1, arrayOfInt, i5);
                      break label332;
                      localObject1 = i;
                      break label470;
                      localObject2 = h;
                      break label481;
                      i2 = 0;
                      break label533;
                      paramInt1 = getPaddingTop();
                      paramInt1 = topMargin + paramInt1 + s;
                      break label612;
                      paramInt4 = i9 - i10 - i4 - paramInt1 - i8;
                      if (paramInt4 >= bottomMargin + t) {
                        break label1702;
                      }
                      paramInt1 = Math.max(0, paramInt1 - (bottomMargin + t - paramInt4));
                      break label607;
                      paramInt1 = i9 - i10 - bottomMargin - t - i4;
                      break label612;
                      paramInt4 = 0;
                      break label628;
                      if (i2 != 0)
                      {
                        paramInt4 = q;
                        paramInt4 -= arrayOfInt[0];
                        paramInt3 += Math.max(0, paramInt4);
                        arrayOfInt[0] = Math.max(0, -paramInt4);
                        if (!paramBoolean) {
                          break label1679;
                        }
                        localObject1 = (abc)h.getLayoutParams();
                        i3 = h.getMeasuredWidth() + paramInt3;
                        paramInt4 = h.getMeasuredHeight() + paramInt1;
                        h.layout(paramInt3, paramInt1, i3, paramInt4);
                        i4 = r;
                        paramInt1 = bottomMargin;
                        i3 += i4;
                        paramInt1 += paramInt4;
                      }
                    }
                  }
                  for (;;)
                  {
                    if (bool)
                    {
                      localObject1 = (abc)i.getLayoutParams();
                      paramInt4 = paramInt1 + topMargin;
                      paramInt1 = i.getMeasuredWidth() + paramInt3;
                      i4 = i.getMeasuredHeight();
                      i.layout(paramInt3, paramInt4, paramInt1, i4 + paramInt4);
                      paramInt4 = r;
                      i4 = bottomMargin;
                    }
                    for (i4 = paramInt4 + paramInt1;; i4 = paramInt3)
                    {
                      paramInt4 = paramInt2;
                      paramInt1 = paramInt3;
                      if (i2 == 0) {
                        break;
                      }
                      paramInt1 = Math.max(i3, i4);
                      paramInt4 = paramInt2;
                      break;
                      paramInt4 = 0;
                      break label1121;
                      a(C, 5);
                      i2 = C.size();
                      paramInt3 = 0;
                      paramInt2 = paramInt4;
                      while (paramInt3 < i2)
                      {
                        paramInt2 = b((View)C.get(paramInt3), paramInt2, arrayOfInt, i5);
                        paramInt3 += 1;
                      }
                      a(C, 1);
                      localObject1 = C;
                      i3 = arrayOfInt[0];
                      i2 = arrayOfInt[1];
                      i4 = ((List)localObject1).size();
                      paramInt4 = 0;
                      paramInt3 = 0;
                      while (paramInt4 < i4)
                      {
                        localObject2 = (View)((List)localObject1).get(paramInt4);
                        abc localabc = (abc)((View)localObject2).getLayoutParams();
                        i3 = leftMargin - i3;
                        i2 = rightMargin - i2;
                        i8 = Math.max(0, i3);
                        i9 = Math.max(0, i2);
                        i3 = Math.max(0, -i3);
                        i2 = Math.max(0, -i2);
                        i10 = ((View)localObject2).getMeasuredWidth();
                        paramInt4 += 1;
                        paramInt3 += i10 + i8 + i9;
                      }
                      paramInt4 = (i6 - i1 - i7) / 2 + i1 - paramInt3 / 2;
                      paramInt3 = paramInt4 + paramInt3;
                      if (paramInt4 < paramInt1) {}
                      for (;;)
                      {
                        paramInt4 = C.size();
                        paramInt3 = 0;
                        paramInt2 = paramInt1;
                        paramInt1 = paramInt3;
                        while (paramInt1 < paramInt4)
                        {
                          paramInt2 = a((View)C.get(paramInt1), paramInt2, arrayOfInt, i5);
                          paramInt1 += 1;
                        }
                        paramInt1 = paramInt4;
                        if (paramInt3 > paramInt2) {
                          paramInt1 = paramInt4 - (paramInt3 - paramInt2);
                        }
                      }
                      C.clear();
                      return;
                    }
                    i3 = paramInt3;
                  }
                }
              }
              paramInt4 = paramInt2;
            }
          }
        }
        label1711:
        paramInt3 = paramInt1;
      }
      label1717:
      paramInt1 = i1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Object localObject1 = E;
    int i5;
    int i6;
    int i1;
    int i4;
    Object localObject2;
    int i3;
    if (vz.a(this))
    {
      i5 = 0;
      i6 = 1;
      i1 = 0;
      if (!a(j)) {
        break label1060;
      }
      a(j, paramInt1, 0, paramInt2, p);
      i1 = j.getMeasuredWidth() + b(j);
      i4 = Math.max(0, j.getMeasuredHeight() + c(j));
      localObject2 = j;
      i3 = vz.a(0, ks.a.e((View)localObject2));
    }
    for (;;)
    {
      int i7 = i1;
      i1 = i3;
      int i2 = i4;
      if (a(c))
      {
        a(c, paramInt1, 0, paramInt2, p);
        i7 = c.getMeasuredWidth() + b(c);
        i2 = Math.max(i4, c.getMeasuredHeight() + c(c));
        localObject2 = c;
        i1 = vz.a(i3, ks.a.e((View)localObject2));
      }
      i3 = n();
      int i8 = Math.max(i3, i7) + 0;
      localObject1[i6] = Math.max(0, i3 - i7);
      i6 = 0;
      i3 = i1;
      i4 = i2;
      if (a(g))
      {
        a(g, paramInt1, i8, paramInt2, p);
        i6 = g.getMeasuredWidth() + b(g);
        i4 = Math.max(i2, g.getMeasuredHeight() + c(g));
        localObject2 = g;
        i3 = vz.a(i1, ks.a.e((View)localObject2));
      }
      i1 = o();
      i7 = i8 + Math.max(i1, i6);
      localObject1[i5] = Math.max(0, i1 - i6);
      i5 = i7;
      i1 = i3;
      i2 = i4;
      if (a(d))
      {
        i5 = i7 + a(d, paramInt1, i7, paramInt2, 0, (int[])localObject1);
        i2 = Math.max(i4, d.getMeasuredHeight() + c(d));
        localObject2 = d;
        i1 = vz.a(i3, ks.a.e((View)localObject2));
      }
      i3 = i5;
      i6 = i1;
      i4 = i2;
      if (a(k))
      {
        i3 = i5 + a(k, paramInt1, i5, paramInt2, 0, (int[])localObject1);
        i4 = Math.max(i2, k.getMeasuredHeight() + c(k));
        localObject2 = k;
        i6 = vz.a(i1, ks.a.e((View)localObject2));
      }
      i7 = getChildCount();
      i5 = 0;
      i1 = i6;
      i2 = i4;
      i4 = i5;
      i6 = i3;
      label547:
      if (i4 < i7)
      {
        localObject2 = getChildAt(i4);
        if ((getLayoutParamsb != 0) || (!a((View)localObject2))) {
          break label1047;
        }
        i6 += a((View)localObject2, paramInt1, i6, paramInt2, 0, (int[])localObject1);
        i3 = Math.max(i2, ((View)localObject2).getMeasuredHeight() + c((View)localObject2));
        i2 = vz.a(i1, ks.a.e((View)localObject2));
      }
      for (i1 = i3;; i1 = i3)
      {
        i4 += 1;
        i3 = i1;
        i1 = i2;
        i2 = i3;
        break label547;
        i5 = 1;
        i6 = 0;
        break;
        i5 = 0;
        i4 = 0;
        int i9 = s + t;
        int i10 = q + r;
        i3 = i1;
        if (a(h))
        {
          a(h, paramInt1, i6 + i10, paramInt2, i9, (int[])localObject1);
          i3 = h.getMeasuredWidth();
          i5 = b(h) + i3;
          i4 = h.getMeasuredHeight() + c(h);
          localObject2 = h;
          i3 = vz.a(i1, ks.a.e((View)localObject2));
        }
        i8 = i4;
        i7 = i5;
        i1 = i3;
        if (a(i))
        {
          i7 = Math.max(i5, a(i, paramInt1, i6 + i10, paramInt2, i9 + i4, (int[])localObject1));
          i8 = i4 + (i.getMeasuredHeight() + c(i));
          localObject1 = i;
          i1 = vz.a(i3, ks.a.e((View)localObject1));
        }
        i3 = Math.max(i2, i8);
        i2 = getPaddingLeft();
        i8 = getPaddingRight();
        i4 = getPaddingTop();
        i5 = getPaddingBottom();
        i2 = ks.a(Math.max(i7 + i6 + (i2 + i8), getSuggestedMinimumWidth()), paramInt1, 0xFF000000 & i1);
        paramInt2 = ks.a(Math.max(i3 + (i4 + i5), getSuggestedMinimumHeight()), paramInt2, i1 << 16);
        if (!L) {
          paramInt1 = 0;
        }
        for (;;)
        {
          if (paramInt1 != 0) {
            paramInt2 = 0;
          }
          setMeasuredDimension(i2, paramInt2);
          return;
          i1 = getChildCount();
          paramInt1 = 0;
          for (;;)
          {
            if (paramInt1 >= i1) {
              break label1042;
            }
            localObject1 = getChildAt(paramInt1);
            if ((a((View)localObject1)) && (((View)localObject1).getMeasuredWidth() > 0) && (((View)localObject1).getMeasuredHeight() > 0))
            {
              paramInt1 = 0;
              break;
            }
            paramInt1 += 1;
          }
          label1042:
          paramInt1 = 1;
        }
        label1047:
        i3 = i2;
        i2 = i1;
      }
      label1060:
      i3 = 0;
      i4 = 0;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    abe localabe = (abe)paramParcelable;
    super.onRestoreInstanceState(localabe.getSuperState());
    if (g != null) {}
    for (paramParcelable = g.e();; paramParcelable = null)
    {
      if ((a != 0) && (I != null) && (paramParcelable != null))
      {
        paramParcelable = paramParcelable.findItem(a);
        if (paramParcelable != null) {
          jr.b(paramParcelable);
        }
      }
      if (b)
      {
        removeCallbacks(M);
        post(M);
      }
      return;
    }
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    boolean bool = true;
    if (Build.VERSION.SDK_INT >= 17) {
      super.onRtlPropertiesChanged(paramInt);
    }
    vm localvm = u;
    if (paramInt == 1) {}
    for (;;)
    {
      localvm.a(bool);
      return;
      bool = false;
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    abe localabe = new abe(super.onSaveInstanceState());
    if ((I != null) && (I.b != null)) {
      a = I.b.getItemId();
    }
    b = b();
    return localabe;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = jx.a(paramMotionEvent);
    if (i1 == 0) {
      A = false;
    }
    if (!A)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i1 == 0) && (!bool)) {
        A = true;
      }
    }
    if ((i1 == 1) || (i1 == 3)) {
      A = false;
    }
    return true;
  }
  
  public int p()
  {
    return u.a();
  }
  
  public int q()
  {
    return u.b();
  }
  
  public abc r()
  {
    return new abc();
  }
  
  public vf s()
  {
    if (G == null) {
      G = new vf(this, true);
    }
    return G;
  }
  
  public void t()
  {
    int i1 = getChildCount() - 1;
    while (i1 >= 0)
    {
      View localView = getChildAt(i1);
      if ((getLayoutParamsb != 2) && (localView != g))
      {
        removeViewAt(i1);
        D.add(localView);
      }
      i1 -= 1;
    }
  }
  
  public void u()
  {
    int i1 = D.size() - 1;
    while (i1 >= 0)
    {
      addView((View)D.get(i1));
      i1 -= 1;
    }
    D.clear();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.Toolbar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */