package com.google.android.apps.hangouts.peoplelistv2.impl;

import aal;
import aen;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import axe;
import axi;
import axq;
import axs;
import axt;
import bfd;
import bhh;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.views.AvatarView;
import dac;
import dak;
import dal;
import dam;
import dao;
import dap;
import daq;
import dar;
import dtw;
import ezc;
import ezi;
import imx;
import java.util.Iterator;
import java.util.List;

public class EditParticipantsView
  extends FrameLayout
{
  public static final boolean a = false;
  public axq b;
  public ScrollViewCustom c;
  public ViewGroup d;
  public DeleteOnEmptyEditText e;
  public boolean f;
  public View g = null;
  public bfd h;
  public View.OnClickListener i = new daq(this);
  public Animator.AnimatorListener j = new dar(this);
  private int k;
  private TextWatcher l = new dao(this);
  private axs m = new dap(this);
  
  static
  {
    imx localimx = ezi.u;
  }
  
  public EditParticipantsView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public EditParticipantsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public EditParticipantsView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public static void a(View paramView)
  {
    paramView = ObjectAnimator.ofPropertyValuesHolder(paramView, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(SCALE_X, new float[] { 0.0F, 1.0F }) });
    paramView.setInterpolator(new axe(axi.a));
    paramView.setDuration(200L);
    paramView.start();
  }
  
  public void a()
  {
    if ((h != null) && (!aal.a(h, bhh.g))) {}
    for (int i1 = 0;; i1 = 1)
    {
      Object localObject1 = b.c();
      int n = 0;
      Object localObject2;
      Object localObject3;
      Object localObject4;
      if (n < d.getChildCount() - 1)
      {
        localObject2 = d.getChildAt(n);
        localObject3 = ((View)localObject2).getTag();
        if (((List)localObject1).contains(localObject3))
        {
          a((View)localObject2, (axt)localObject3);
          ((List)localObject1).remove(localObject3);
        }
        for (;;)
        {
          n += 1;
          break;
          if (i1 != 0)
          {
            ((View)localObject2).setOnClickListener(null);
            localObject3 = (AvatarView)((View)localObject2).findViewById(StressMode.tQ);
            localObject4 = (TextView)((View)localObject2).findViewById(StressMode.tT);
            ((AvatarView)localObject3).setVisibility(4);
            ((TextView)localObject4).setVisibility(4);
            localObject2 = ObjectAnimator.ofPropertyValuesHolder(localObject2, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(SCALE_X, new float[] { 1.0F, 0.0F }) });
            ((ValueAnimator)localObject2).setInterpolator(new axe(axi.a));
            ((ValueAnimator)localObject2).setDuration(200L);
            ((ValueAnimator)localObject2).addListener(j);
            ((ValueAnimator)localObject2).start();
          }
          else
          {
            d.removeView((View)localObject2);
            n -= 1;
          }
        }
      }
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (axt)((Iterator)localObject1).next();
        localObject3 = new dal(this, (axt)localObject2);
        localObject4 = LayoutInflater.from(getContext()).inflate(aal.os, this, false);
        ((View)localObject4).setOnClickListener(new dam(this, (View.OnClickListener)localObject3));
        ((View)localObject4).setScaleX(0.0F);
        d.addView((View)localObject4, d.getChildCount() - 1);
        a((View)localObject4, (axt)localObject2);
        localObject2 = ObjectAnimator.ofPropertyValuesHolder(localObject4, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(SCALE_X, new float[] { 0.0F, 1.0F }) });
        ((ValueAnimator)localObject2).setInterpolator(new axe(axi.a));
        ((ValueAnimator)localObject2).setDuration(200L);
        ((ValueAnimator)localObject2).start();
      }
      if ((!ezc.a(getContext())) && (d.getChildCount() > 1)) {
        e.setHint("");
      }
      for (;;)
      {
        requestLayout();
        return;
        e.setHint(aen.jL);
      }
    }
  }
  
  public void a(View paramView, axt paramaxt)
  {
    Resources localResources = getResources();
    String str1 = "";
    if (paramaxt.c())
    {
      str1 = paramaxt.d();
      if (!TextUtils.isEmpty(str1)) {
        break label480;
      }
      str1 = localResources.getString(17039374);
    }
    label219:
    label273:
    label290:
    label454:
    label463:
    label470:
    label477:
    label480:
    for (;;)
    {
      String str2 = paramaxt.g();
      if (a)
      {
        str3 = String.valueOf(paramaxt.i());
        new StringBuilder(String.valueOf(str1).length() + 36 + String.valueOf(str3).length()).append("Displaying chip text '").append(str1).append("' for person: ").append(str3);
      }
      String str3 = localResources.getString(aen.jD, new Object[] { str1 });
      boolean bool1 = b.c(paramaxt);
      localResources = getResources();
      boolean bool2 = paramView.equals(g);
      paramView.setContentDescription(str3);
      paramView.setVisibility(0);
      paramView.setTag(paramaxt);
      paramaxt = (AvatarView)paramView.findViewById(StressMode.tQ);
      paramaxt.a(str2, str1, h);
      paramaxt.a(0);
      paramaxt = (ImageView)paramView.findViewById(StressMode.tI);
      int n;
      if (bool1)
      {
        n = 0;
        paramaxt.setVisibility(n);
        paramaxt = (ImageView)paramView.findViewById(StressMode.tR);
        if ((!bool2) || (bool1)) {
          break label454;
        }
        paramaxt.setVisibility(0);
        paramaxt.setContentDescription(getResources().getString(aen.jO, new Object[] { str1 }));
        paramaxt = paramView.findViewById(StressMode.tJ);
        if (!bool2) {
          break label463;
        }
        n = aal.oh;
        ((GradientDrawable)paramaxt.getBackground()).setColor(getResources().getColor(n));
        paramaxt = (TextView)paramView.findViewById(StressMode.tT);
        paramaxt.setTextColor(localResources.getColor(aal.oi));
        if ((bool2) || (b.c().size() < k)) {
          break label470;
        }
        paramView = str1.substring(0, 1);
        if (str1.length() <= 1) {
          break label477;
        }
        paramView = String.valueOf(paramView);
        paramView = String.valueOf(paramView).length() + 1 + paramView + "…";
      }
      for (;;)
      {
        paramaxt.setText(paramView);
        return;
        if (paramaxt.e())
        {
          str1 = paramaxt.f();
          break;
        }
        if (!paramaxt.a()) {
          break;
        }
        str1 = bd;
        break;
        n = 8;
        break label219;
        paramaxt.setVisibility(8);
        break label273;
        n = aal.og;
        break label290;
        paramaxt.setText(str1);
        return;
      }
    }
  }
  
  public void a(axq paramaxq)
  {
    b = paramaxq;
    paramaxq.a(m);
  }
  
  public void a(bfd parambfd)
  {
    h = parambfd;
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    c = ((ScrollViewCustom)findViewById(StressMode.tM));
    d = ((ViewGroup)findViewById(StressMode.tO));
    d.setOnClickListener(i);
    e = ((DeleteOnEmptyEditText)d.findViewById(StressMode.tL));
    e.addTextChangedListener(l);
    e.setOnFocusChangeListener(new dak(this));
    e.a(new dac(this));
    e.requestFocus();
    e.sendAccessibilityEvent(32);
    k = getResources().getInteger(aal.on);
    if ((h != null) && (!aal.a(h, bhh.g))) {}
    for (int i1 = 0;; i1 = 1)
    {
      Object localObject1 = b.c();
      int n = 0;
      Object localObject2;
      Object localObject3;
      Object localObject4;
      if (n < d.getChildCount() - 1)
      {
        localObject2 = d.getChildAt(n);
        localObject3 = ((View)localObject2).getTag();
        if (((List)localObject1).contains(localObject3))
        {
          a((View)localObject2, (axt)localObject3);
          ((List)localObject1).remove(localObject3);
        }
        for (;;)
        {
          n += 1;
          break;
          if (i1 != 0)
          {
            ((View)localObject2).setOnClickListener(null);
            localObject3 = (AvatarView)((View)localObject2).findViewById(StressMode.tQ);
            localObject4 = (TextView)((View)localObject2).findViewById(StressMode.tT);
            ((AvatarView)localObject3).setVisibility(4);
            ((TextView)localObject4).setVisibility(4);
            localObject2 = ObjectAnimator.ofPropertyValuesHolder(localObject2, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(SCALE_X, new float[] { 1.0F, 0.0F }) });
            ((ValueAnimator)localObject2).setInterpolator(new axe(axi.a));
            ((ValueAnimator)localObject2).setDuration(200L);
            ((ValueAnimator)localObject2).addListener(j);
            ((ValueAnimator)localObject2).start();
          }
          else
          {
            d.removeView((View)localObject2);
            n -= 1;
          }
        }
      }
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (axt)((Iterator)localObject1).next();
        localObject3 = new dal(this, (axt)localObject2);
        localObject4 = LayoutInflater.from(getContext()).inflate(aal.os, this, false);
        ((View)localObject4).setOnClickListener(new dam(this, (View.OnClickListener)localObject3));
        ((View)localObject4).setScaleX(0.0F);
        d.addView((View)localObject4, d.getChildCount() - 1);
        a((View)localObject4, (axt)localObject2);
        localObject2 = ObjectAnimator.ofPropertyValuesHolder(localObject4, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(SCALE_X, new float[] { 0.0F, 1.0F }) });
        ((ValueAnimator)localObject2).setInterpolator(new axe(axi.a));
        ((ValueAnimator)localObject2).setDuration(200L);
        ((ValueAnimator)localObject2).start();
      }
      if ((!ezc.a(getContext())) && (d.getChildCount() > 1)) {
        e.setHint("");
      }
      for (;;)
      {
        requestLayout();
        return;
        e.setHint(aen.jL);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.peoplelistv2.impl.EditParticipantsView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */