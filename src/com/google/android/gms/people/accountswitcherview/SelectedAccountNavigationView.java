package com.google.android.gms.people.accountswitcherview;

import a;
import aal;
import aen;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import fic;
import fii;
import gmd;
import gme;
import gmh;
import gmt;
import gmv;
import gmw;
import gmx;
import gmy;
import gmz;
import gna;
import gnb;
import gnc;
import gnd;
import gne;
import gnf;
import gpt;
import java.util.ArrayList;
import ks;

public class SelectedAccountNavigationView
  extends FrameLayout
{
  private int A;
  private boolean B;
  private int C;
  private float D;
  private int E;
  private int F;
  private int G;
  private int H;
  private boolean I;
  private int J;
  private gpt K;
  private int L;
  private int M;
  public ArrayList<gpt> a = new ArrayList(2);
  public gpt b;
  public gna c;
  public gne d;
  public float e;
  public float f;
  public boolean g = gmd.a(21);
  public boolean h;
  public Interpolator i;
  public AnimatorSet j;
  public gpt k;
  public gpt l;
  public gpt m;
  private gnc n;
  private int o = 0;
  private gnf p;
  private fic q;
  private gmh r;
  private gme s;
  private a t;
  private int u = -1;
  private gnd v;
  private float w;
  private float x;
  private int y;
  private VelocityTracker z;
  
  public SelectedAccountNavigationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    y = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    z = VelocityTracker.obtain();
    A = ViewConfiguration.getMinimumFlingVelocity();
    paramAttributeSet = paramContext.getResources();
    e = paramAttributeSet.getDimensionPixelSize(aal.sI);
    int i1;
    if (Build.VERSION.SDK_INT >= 17)
    {
      if (getResources().getConfiguration().getLayoutDirection() == 1) {
        h = bool;
      }
    }
    else
    {
      if (!gmd.a(21)) {
        break label167;
      }
      i1 = 17563661;
      label121:
      if (i1 == -1) {
        break label172;
      }
    }
    label167:
    label172:
    for (paramContext = AnimationUtils.loadInterpolator(paramContext, 17563661);; paramContext = new DecelerateInterpolator())
    {
      i = paramContext;
      M = paramAttributeSet.getDimensionPixelSize(aal.sJ);
      L = paramAttributeSet.getDimensionPixelSize(aal.sH);
      return;
      bool = false;
      break;
      i1 = -1;
      break label121;
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i1) == C) {
      if (i1 != 0) {
        break label33;
      }
    }
    label33:
    for (i1 = 1;; i1 = 0)
    {
      C = paramMotionEvent.getPointerId(i1);
      return;
    }
  }
  
  private static void a(View paramView)
  {
    if (paramView != null)
    {
      ks.a(paramView, 0.0F);
      ks.b(paramView, 0.0F);
      ks.d(paramView, 1.0F);
      ks.e(paramView, 1.0F);
      ks.c(paramView, 1.0F);
    }
  }
  
  private void a(View paramView, int paramInt)
  {
    if (paramView != null)
    {
      ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
      topMargin = (L + paramInt);
      paramView.setLayoutParams(localMarginLayoutParams);
    }
  }
  
  private void a(ImageView paramImageView, gpt paramgpt)
  {
    if ((paramImageView != null) && (s != null) && (aal.a(paramgpt)))
    {
      paramImageView.setImageBitmap(gme.a(paramImageView.getContext()));
      if (TextUtils.isEmpty(paramgpt.T_())) {
        break label92;
      }
      s.a(paramImageView);
      s.a(paramImageView, paramgpt, 2);
    }
    for (;;)
    {
      paramImageView.setVisibility(0);
      paramImageView.setContentDescription(getContext().getString(fii.s, new Object[] { paramgpt.a() }));
      return;
      label92:
      s.a(paramImageView);
    }
  }
  
  private static void a(TextView paramTextView1, TextView paramTextView2, gpt paramgpt)
  {
    int i1;
    if ((paramTextView1 != null) && (aal.a(paramgpt))) {
      if (TextUtils.isEmpty(paramgpt.V_()))
      {
        paramTextView1.setText(paramgpt.a());
        i1 = 0;
      }
    }
    for (;;)
    {
      if (paramTextView2 != null)
      {
        if ((i1 != 0) && (aal.a(paramgpt)))
        {
          paramTextView2.setVisibility(0);
          paramTextView2.setText(paramgpt.a());
        }
      }
      else
      {
        return;
        i1 = 1;
        paramTextView1.setText(paramgpt.V_());
        continue;
      }
      paramTextView2.setVisibility(8);
      return;
      i1 = 0;
    }
  }
  
  private void e()
  {
    Context localContext = getContext();
    int i1;
    if (u == -1)
    {
      if (!I) {
        break label147;
      }
      i1 = aen.jZ;
    }
    for (;;)
    {
      u = i1;
      if (p == null) {
        p = new gnb(this);
      }
      LayoutInflater.from(localContext).inflate(u, this);
      d = p.a(this);
      if (g)
      {
        d.s.setOnClickListener(new gmx(this));
        d.t.setOnClickListener(new gmy(this));
      }
      if (d.n != null) {
        d.n.setOnClickListener(new gmz(this));
      }
      return;
      label147:
      if (gmd.a(21)) {
        i1 = aen.jZ;
      } else {
        i1 = aen.ka;
      }
    }
  }
  
  private void f()
  {
    if (!g) {
      return;
    }
    if (d == null) {
      e();
    }
    if ((d.u != null) && (d.u.getMeasuredWidth() == 0))
    {
      forceLayout();
      return;
    }
    if (a.size() > 0)
    {
      gpt localgpt = (gpt)a.get(0);
      gne localgne = d;
      d.s.setVisibility(0);
      a(d.w, localgpt);
      a(localgne, C, localgpt);
      if (a.size() <= 1) {
        break label174;
      }
      d.t.setVisibility(0);
      a(d.x, (gpt)a.get(1));
    }
    for (;;)
    {
      D = -1.0F;
      return;
      d.s.setVisibility(8);
      break;
      label174:
      d.t.setVisibility(8);
    }
  }
  
  public void a()
  {
    if (gmd.a(11)) {}
    for (boolean bool = true;; bool = false)
    {
      I = bool;
      g = I;
      return;
    }
  }
  
  public void a(int paramInt)
  {
    if (d == null) {
      e();
    }
    int i1 = M + paramInt;
    setMinimumHeight(i1);
    ViewGroup.LayoutParams localLayoutParams = d.I.getLayoutParams();
    if (localLayoutParams == null) {
      localLayoutParams = new ViewGroup.LayoutParams(-1, i1);
    }
    for (;;)
    {
      d.I.setLayoutParams(localLayoutParams);
      a(d.p, paramInt);
      a(d.B, paramInt);
      a(d.s, paramInt);
      a(d.t, paramInt);
      a(d.D, paramInt);
      a(d.E, paramInt);
      return;
      height = i1;
    }
  }
  
  public void a(int paramInt, gnf paramgnf, gnd paramgnd)
  {
    u = paramInt;
    p = paramgnf;
    v = paramgnd;
  }
  
  public void a(fic paramfic)
  {
    q = paramfic;
    if (q != null) {
      a(new gmh(getContext(), q));
    }
  }
  
  public void a(gme paramgme)
  {
    s = paramgme;
  }
  
  public void a(gmh paramgmh)
  {
    r = paramgmh;
  }
  
  public void a(gna paramgna)
  {
    c = paramgna;
  }
  
  public void a(gnc paramgnc)
  {
    n = paramgnc;
  }
  
  public void a(gne paramgne, ImageView paramImageView, gpt paramgpt)
  {
    if ((paramImageView == null) || (!aal.a(paramgpt))) {
      return;
    }
    if (!TextUtils.isEmpty(paramgpt.g()))
    {
      r.a(paramImageView);
      r.a(paramImageView, paramgpt, u.getMeasuredWidth());
      return;
    }
    r.a(paramImageView);
    paramImageView.setImageBitmap(gmh.a(getContext()));
  }
  
  public void a(gpt paramgpt)
  {
    if (d == null) {
      e();
    }
    if (!aal.a(paramgpt))
    {
      b = null;
      return;
    }
    if ((j != null) && (j.isRunning()))
    {
      k = paramgpt;
      return;
    }
    if ((d.u != null) && (d.u.getMeasuredWidth() == 0))
    {
      K = paramgpt;
      forceLayout();
      return;
    }
    gpt localgpt1;
    int i1;
    if ((!aal.a(b)) || (!b.a().equals(paramgpt.a())))
    {
      localgpt1 = b;
      b = paramgpt;
      paramgpt = b.a();
      i1 = 0;
      if (i1 >= a.size()) {
        break label268;
      }
      gpt localgpt2 = (gpt)a.get(i1);
      if ((!aal.a(localgpt2)) || (localgpt2.a() == null) || (!localgpt2.a().equals(paramgpt))) {}
    }
    for (;;)
    {
      if (i1 >= 0) {
        a.remove(i1);
      }
      if (localgpt1 != null)
      {
        a.add(0, localgpt1);
        for (;;)
        {
          if (a.size() > 2)
          {
            a.remove(a.size() - 1);
            continue;
            i1 += 1;
            break;
          }
        }
      }
      c();
      return;
      b = paramgpt;
      c();
      return;
      label268:
      i1 = -1;
    }
  }
  
  public void a(gpt paramgpt, AnimatorSet.Builder paramBuilder, int paramInt)
  {
    a(d.z, d.A, paramgpt);
    d.y.setVisibility(0);
    paramgpt = ObjectAnimator.ofFloat(d.y, "alpha", new float[] { 1.0F });
    paramgpt.setStartDelay(paramInt);
    paramgpt.setDuration(150L);
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(d.m, "alpha", new float[] { 0.0F });
    localObjectAnimator.setStartDelay(0L);
    localObjectAnimator.setDuration(150L);
    paramBuilder.with(paramgpt).with(localObjectAnimator);
  }
  
  public void a(gpt paramgpt1, gpt paramgpt2)
  {
    if ((j != null) && (j.isRunning()))
    {
      l = paramgpt1;
      m = paramgpt2;
      return;
    }
    if (a == null) {
      a = new ArrayList();
    }
    for (;;)
    {
      if (paramgpt1 != null) {
        a.add(paramgpt1);
      }
      if (paramgpt2 != null) {
        a.add(paramgpt2);
      }
      f();
      return;
      a.clear();
    }
  }
  
  public int b()
  {
    return o;
  }
  
  public void b(int paramInt)
  {
    if (t != null) {
      getHandler().postDelayed(new gmv(this), paramInt);
    }
  }
  
  public void c()
  {
    if (d == null) {
      e();
    }
    if (g)
    {
      a(d.p);
      a(d.s);
      a(d.t);
      a(d.m);
      a(d.u);
      a(d.C);
      a(d.B);
    }
    gne localgne = d;
    gpt localgpt = b;
    if ((l != null) && (aal.a(b))) {
      l.setContentDescription(getContext().getResources().getString(fii.u, new Object[] { b.a() }));
    }
    if ((v != null) && (aal.a(localgpt)))
    {
      v.setImageBitmap(gme.a(getContext()));
      if (TextUtils.isEmpty(localgpt.T_())) {
        break label474;
      }
      s.a(v);
      s.a(v, localgpt, 2);
    }
    for (;;)
    {
      a(q, r, localgpt);
      a(localgne, u, localgpt);
      f();
      if (v != null) {
        v.a(d, b, a);
      }
      if (g)
      {
        f = d.w.getWidth();
        if (d.B != null) {
          d.B.setVisibility(8);
        }
        if (d.C != null) {
          d.C.setVisibility(8);
        }
        if (d.y != null) {
          d.y.setVisibility(8);
        }
        if (d.D != null)
        {
          ks.c(d.D, 0.0F);
          ks.d(d.D, 0.8F);
          ks.e(d.D, 0.8F);
          d.D.setVisibility(8);
        }
        if (d.E != null)
        {
          ks.c(d.E, 0.0F);
          ks.d(d.E, 0.8F);
          ks.e(d.E, 0.8F);
          d.E.setVisibility(8);
        }
      }
      return;
      label474:
      s.a(v);
    }
  }
  
  public void c(int paramInt)
  {
    boolean bool = true;
    if (o != paramInt)
    {
      o = paramInt;
      if (d == null) {
        e();
      }
      if (o != 1) {
        break label46;
      }
    }
    for (;;)
    {
      d.n.a(bool);
      return;
      label46:
      bool = false;
    }
  }
  
  public void d()
  {
    boolean bool = true;
    int i1;
    ExpanderView localExpanderView;
    if (o == 1)
    {
      i1 = 0;
      c(i1);
      if (n != null) {
        n.a(this);
      }
      localExpanderView = d.n;
      if (o != 1) {
        break label61;
      }
    }
    for (;;)
    {
      localExpanderView.a(bool);
      return;
      i1 = 1;
      break;
      label61:
      bool = false;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return B;
      B = false;
      C = paramMotionEvent.getPointerId(0);
      B = false;
      continue;
      a(paramMotionEvent);
      C = -1;
      B = false;
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    if (d == null) {
      e();
    }
    if (d.u != null) {
      d.u.measure(paramInt1, paramInt2);
    }
    if (d.k != null) {
      d.k.measure(paramInt1, paramInt2);
    }
    if (K != null)
    {
      a(K);
      K = null;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    int i1 = paramMotionEvent.getAction();
    Object localObject1 = getParent();
    switch (i1)
    {
    }
    for (;;)
    {
      bool = true;
      label290:
      label304:
      label391:
      label455:
      label622:
      label674:
      label768:
      label821:
      label1020:
      label1030:
      label1039:
      label1047:
      label1062:
      label1091:
      label1105:
      label1119:
      label1271:
      label1336:
      label1393:
      label1407:
      label1479:
      label1736:
      label1985:
      label1991:
      label1997:
      label2007:
      label2017:
      label2035:
      label2055:
      do
      {
        return bool;
        w = paramMotionEvent.getX();
        x = paramMotionEvent.getY();
        break;
        i1 = paramMotionEvent.findPointerIndex(C);
        if (i1 < 0)
        {
          Log.e("SelectedAccountNavigationView", "Got ACTION_MOVE event but have an invalid active pointer id.");
          return false;
        }
        float f1 = paramMotionEvent.getX(i1);
        float f3 = paramMotionEvent.getY(i1);
        float f2 = f1 - w;
        f3 -= x;
        if ((g) && (a.size() > 0) && (!B) && (f2 * f2 + f3 * f3 > y * y) && (Math.abs(f2) > Math.abs(f3)))
        {
          B = true;
          if (localObject1 != null) {
            ((ViewParent)localObject1).requestDisallowInterceptTouchEvent(true);
          }
        }
        if (!B) {
          break;
        }
        f1 -= w;
        Object localObject2;
        int i2;
        float f4;
        if (D == -1.0F)
        {
          localObject1 = (ViewGroup.MarginLayoutParams)d.w.getLayoutParams();
          localObject2 = (ViewGroup.MarginLayoutParams)d.x.getLayoutParams();
          if (h)
          {
            i1 = ((ViewGroup.MarginLayoutParams)localObject1).getMarginStart();
            if (!h) {
              break label1020;
            }
            i2 = ((ViewGroup.MarginLayoutParams)localObject2).getMarginStart();
            D = (i1 + d.s.getLeft());
            E = (d.t.getLeft() + i2);
            G = (d.p.getLeft() + d.p.getPaddingLeft());
            H = d.p.getWidth();
          }
        }
        else
        {
          if (!h) {
            break label1030;
          }
          f1 = Math.min(f1, 0.0F);
          if (f == 0.0F) {
            f = d.w.getWidth();
          }
          f4 = f / e;
          f3 = f;
          float f5 = e;
          if (a.size() <= 1) {
            break label1039;
          }
          f2 = E;
          float f6 = f2 - G + (f - e) * 0.5F;
          f2 = Math.min(1.0F, f1 / f6);
          f1 = Math.abs((f3 - f5) * 0.5F);
          f3 = Math.max(0.0F, 1.0F - f2);
          d.p.setTranslationX(f6 * f2);
          d.p.setTranslationY(Math.abs(f1 * f2) * -1.0F);
          f1 = Math.min(1.0F, Math.max(f4, 1.0F - f2 * f4));
          d.p.setScaleX(f1);
          d.p.setScaleY(f1);
          if (d.B != null)
          {
            if (d.B.getVisibility() == 0) {
              break label1062;
            }
            if (!h) {
              break label1047;
            }
            i1 = getWidth() - G;
            J = i1;
            d.B.setTranslationX(J);
            d.F.setImageDrawable(d.w.getDrawable());
            d.B.setVisibility(0);
          }
          if (a.size() > 1)
          {
            f1 = D;
            f4 = E;
            d.t.setTranslationX((f1 - f4) * f2);
          }
          if (a.size() > 0)
          {
            if (d.C != null)
            {
              if (d.C.getVisibility() == 0) {
                break label1091;
              }
              d.C.setAlpha(0.0F);
              d.C.setVisibility(0);
            }
            if (d.u != null) {
              d.u.setAlpha(1.0F - f2);
            }
            if (!h) {
              break label1105;
            }
            f1 = getLeft() - (d.s.getWidth() + D);
            d.s.setTranslationX(f1 * f2);
            d.s.setAlpha(f3);
            if (d.y != null)
            {
              if (d.y.getVisibility() == 0) {
                break label1119;
              }
              localObject1 = (gpt)a.get(0);
              F = J;
              d.y.setTranslationX(F);
              a(d.z, d.A, (gpt)localObject1);
              d.y.setAlpha(0.0F);
              d.y.setVisibility(0);
            }
          }
        }
        for (;;)
        {
          if (d.m != null)
          {
            d.m.setTranslationX(d.p.getTranslationX());
            f1 = Math.max(0.0F, 1.0F - 3.0F * f2);
            d.m.setAlpha(f1);
          }
          z.addMovement(paramMotionEvent);
          break;
          i1 = leftMargin;
          break label290;
          i2 = leftMargin;
          break label304;
          f1 = Math.max(f1, 0.0F);
          break label391;
          f2 = D;
          break label455;
          i1 = -H - G;
          break label622;
          f1 = -J;
          d.B.setTranslationX(f1 * f2 + J);
          break label674;
          d.C.setAlpha(f2);
          break label768;
          f1 = getWidth() - D;
          break label821;
          if (f2 > 0.33333334F)
          {
            f1 = Math.min(1.0F, (f2 - 0.33333334F) * 3.0F);
            d.y.setAlpha(f1);
          }
          d.y.setTranslationX(F + -F * f2);
        }
        int i3 = paramMotionEvent.findPointerIndex(C);
        if (i3 < 0)
        {
          Log.e("SelectedAccountNavigationView", "Got ACTION_UP event but have an invalid active pointer id.");
          return false;
        }
        Object localObject3;
        ObjectAnimator localObjectAnimator1;
        ObjectAnimator localObjectAnimator2;
        if (B) {
          if (a.size() > 1)
          {
            f1 = E;
            f3 = d.p.getTranslationX();
            f2 = f3;
            if (h) {
              f2 = Math.abs(f3);
            }
            if (f2 < f1 * 0.5F) {
              break label1985;
            }
            i1 = 1;
            i2 = i1;
            if (i1 == 0)
            {
              i2 = i1;
              if (paramMotionEvent.getX(i3) - w > y)
              {
                z.computeCurrentVelocity(1000);
                if (Math.abs(z.getXVelocity()) <= A) {
                  break label1991;
                }
                i2 = 1;
              }
            }
            if (i2 == 0) {
              break label2055;
            }
            paramMotionEvent = new AnimatorSet();
            localObject2 = (ViewGroup.MarginLayoutParams)d.w.getLayoutParams();
            localObject3 = (ViewGroup.MarginLayoutParams)d.x.getLayoutParams();
            if (!h) {
              break label1997;
            }
            i1 = ((ViewGroup.MarginLayoutParams)localObject2).getMarginStart();
            if (!h) {
              break label2007;
            }
            i2 = ((ViewGroup.MarginLayoutParams)localObject3).getMarginStart();
            if (f == 0.0F) {
              f = d.w.getWidth();
            }
            f1 = f / e;
            f3 = f;
            f4 = e;
            if (a.size() <= 1) {
              break label2017;
            }
            i1 = d.t.getLeft() + i2;
            f2 = i1 - d.p.getLeft();
            f2 = (f - e) * 0.5F + f2;
            localObject2 = ObjectAnimator.ofFloat(d.p, "translationX", new float[] { f2 });
            localObject3 = ObjectAnimator.ofFloat(d.p, "translationY", new float[] { (f3 - f4) * 0.5F });
            localObjectAnimator1 = ObjectAnimator.ofFloat(d.p, "scaleY", new float[] { f1 });
            localObjectAnimator2 = ObjectAnimator.ofFloat(d.p, "scaleX", new float[] { f1 });
            localObject2 = paramMotionEvent.play((Animator)localObject2).with((Animator)localObject3).with(localObjectAnimator2).with(localObjectAnimator1);
            if ((g) && (a.size() > 0))
            {
              if (a.size() > 1)
              {
                f1 = d.s.getLeft() - d.t.getLeft();
                ((AnimatorSet.Builder)localObject2).with(ObjectAnimator.ofFloat(d.t, "translationX", new float[] { f1 }));
              }
              if (!h) {
                break label2035;
              }
              f1 = getLeft() - (d.s.getWidth() + D);
              localObject3 = ObjectAnimator.ofFloat(d.s, "translationX", new float[] { f1 });
              localObjectAnimator1 = ObjectAnimator.ofFloat(d.s, "alpha", new float[] { 0.0F });
              ((AnimatorSet.Builder)localObject2).with((Animator)localObject3).with(localObjectAnimator1);
              if (d.B != null) {
                ((AnimatorSet.Builder)localObject2).with(ObjectAnimator.ofFloat(d.B, "translationX", new float[] { 0.0F }));
              }
              if (d.y != null) {
                a((gpt)a.get(0), (AnimatorSet.Builder)localObject2, 0);
              }
            }
            paramMotionEvent.addListener(new gmw(this));
            localObject2 = b;
            b = ((gpt)a.remove(0));
            a.add(localObject2);
            b(100);
            paramMotionEvent.setDuration(((1.0F - d.p.getTranslationX() / f2) * 450.0F));
            paramMotionEvent.setInterpolator(i);
            j = paramMotionEvent;
            j.start();
          }
        }
        for (;;)
        {
          B = false;
          if (localObject1 != null) {
            ((ViewParent)localObject1).requestDisallowInterceptTouchEvent(false);
          }
          z.clear();
          return false;
          f1 = D;
          break;
          i1 = 0;
          break label1271;
          i2 = 0;
          break label1336;
          i1 = leftMargin;
          break label1393;
          i2 = leftMargin;
          break label1407;
          i1 += d.s.getLeft();
          break label1479;
          f1 = getWidth() - d.s.getLeft();
          break label1736;
          paramMotionEvent = new AnimatorSet();
          localObject2 = paramMotionEvent.play(ObjectAnimator.ofFloat(d.p, "alpha", new float[] { 1.0F }));
          localObject3 = ObjectAnimator.ofFloat(d.p, "translationX", new float[] { 0.0F });
          localObjectAnimator1 = ObjectAnimator.ofFloat(d.p, "translationY", new float[] { 0.0F });
          localObjectAnimator2 = ObjectAnimator.ofFloat(d.p, "scaleX", new float[] { 1.0F });
          ObjectAnimator localObjectAnimator3 = ObjectAnimator.ofFloat(d.p, "scaleY", new float[] { 1.0F });
          ((AnimatorSet.Builder)localObject2).with((Animator)localObject3).with(localObjectAnimator1).with(localObjectAnimator2).with(localObjectAnimator3);
          ((AnimatorSet.Builder)localObject2).with(ObjectAnimator.ofFloat(d.B, "translationX", new float[] { J }));
          if (d.C != null) {
            ((AnimatorSet.Builder)localObject2).with(ObjectAnimator.ofFloat(d.C, "alpha", new float[] { 0.0F }));
          }
          if (d.u != null) {
            ((AnimatorSet.Builder)localObject2).with(ObjectAnimator.ofFloat(d.u, "alpha", new float[] { 1.0F }));
          }
          ((AnimatorSet.Builder)localObject2).with(ObjectAnimator.ofFloat(d.t, "translationX", new float[] { 0.0F }));
          localObjectAnimator2 = ObjectAnimator.ofFloat(d.s, "translationX", new float[] { 0.0F });
          localObject3 = ObjectAnimator.ofFloat(d.y, "translationX", new float[] { -getWidth() });
          localObjectAnimator3 = ObjectAnimator.ofFloat(d.s, "alpha", new float[] { 1.0F });
          localObjectAnimator1 = ObjectAnimator.ofFloat(d.m, "translationX", new float[] { 0.0F });
          ((AnimatorSet.Builder)localObject2).with(localObjectAnimator2).with(localObjectAnimator3);
          localObjectAnimator2 = ObjectAnimator.ofFloat(d.y, "alpha", new float[] { 0.0F });
          localObjectAnimator3 = ObjectAnimator.ofFloat(d.m, "alpha", new float[] { 1.0F });
          ((AnimatorSet.Builder)localObject2).with((Animator)localObject3).with(localObjectAnimator2).with(localObjectAnimator1).with(localObjectAnimator3);
          paramMotionEvent.setDuration(100L);
          paramMotionEvent.addListener(new gmt(this));
          paramMotionEvent.setInterpolator(i);
          j = paramMotionEvent;
          j.start();
          continue;
          d();
        }
      } while (localObject1 == null);
      ((ViewParent)localObject1).requestDisallowInterceptTouchEvent(false);
      return false;
      C = paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex());
      continue;
      a(paramMotionEvent);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.people.accountswitcherview.SelectedAccountNavigationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */