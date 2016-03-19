package com.google.android.apps.hangouts.promo.impl;

import aal;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.os.Bundle;
import android.widget.FrameLayout;
import bg;
import bz;
import dly;
import dlz;
import dme;
import dmj;
import hpu;
import hpv;
import hpw;
import ilh;

public class PromoActivity
  extends dly
  implements hpw
{
  private static final dme p = new dme();
  private dmj k;
  private int n;
  private int o;
  
  public PromoActivity()
  {
    j.a(this);
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c)
    {
      k = ((dmj)l.a(dmj.class));
      k.a(this);
      if (k.b(this) == 0) {
        finish();
      }
    }
  }
  
  public void g()
  {
    int i = n;
    n = k.a(this, i);
    if (n != -1)
    {
      int j = n;
      bz localbz = C_().a();
      if (i < j) {
        localbz.a(aal.po, aal.pp);
      }
      for (;;)
      {
        ObjectAnimator localObjectAnimator = ObjectAnimator.ofInt((FrameLayout)findViewById(aal.pr), "backgroundColor", new int[] { getResources().getColor(k.a(i).b()), getResources().getColor(k.a(j).b()) });
        localObjectAnimator.setEvaluator(p);
        localObjectAnimator.setDuration(getResources().getInteger(aal.ps));
        localObjectAnimator.start();
        localbz.b(aal.pr, k.a(j).a());
        localbz.b();
        return;
        localbz.a(aal.pn, aal.pq);
      }
    }
    finish();
  }
  
  public void onBackPressed()
  {
    k.b(n);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    k = ((dmj)l.a(dmj.class));
    if (paramBundle != null) {
      k.a(this);
    }
    for (n = k.a(this, paramBundle.getInt("current_item") - 1); n == -1; n = k.a(this, -1))
    {
      finish();
      return;
    }
    o = getResources().getColor(k.a(n).b());
    setContentView(aal.pt);
    paramBundle = C_();
    if (paramBundle.a(aal.pr) == null)
    {
      paramBundle = paramBundle.a();
      paramBundle.b(aal.pr, k.a(n).a());
      paramBundle.b();
      o = getResources().getColor(k.a(n).b());
    }
    ((FrameLayout)findViewById(aal.pr)).setBackgroundColor(o);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("current_item", n);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.promo.impl.PromoActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */