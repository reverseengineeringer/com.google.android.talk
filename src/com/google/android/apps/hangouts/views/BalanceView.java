package com.google.android.apps.hangouts.views;

import aen;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import bfd;
import com.google.android.apps.hangouts.hangout.StressMode;
import dvd;
import fax;
import fay;
import faz;
import hpu;
import hpz;
import hqg;
import ilh;

public class BalanceView
  extends LinearLayout
{
  public boolean a;
  public final hpu b = (hpu)ilh.a(getContext(), hpu.class);
  private final hqg c = new fax(this);
  private TextView d;
  private final hpz e = (hpz)ilh.a(getContext(), hpz.class);
  
  public BalanceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(false);
    setOnClickListener(new fay(this));
    post(new faz(this));
  }
  
  public BalanceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(false);
    setOnClickListener(new fay(this));
    post(new faz(this));
  }
  
  public BalanceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(false);
    setOnClickListener(new fay(this));
    post(new faz(this));
  }
  
  private void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      d.setText("");
      d.setContentDescription(getResources().getString(StressMode.df));
      return;
    }
    d.setText(paramString);
    d.setContentDescription(getResources().getString(StressMode.dk, new Object[] { paramString }));
  }
  
  public void a()
  {
    if ((b.b()) && (e.c(b.a())))
    {
      a(dvd.e(b.a()).P());
      return;
    }
    a("");
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      setVisibility(i);
      return;
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    a = true;
    e.a(c);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a = false;
    e.b(c);
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    d = ((TextView)findViewById(aen.gN));
    a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.BalanceView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */