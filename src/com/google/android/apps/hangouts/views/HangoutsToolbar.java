package com.google.android.apps.hangouts.views;

import aal;
import aen;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class HangoutsToolbar
  extends Toolbar
{
  private ViewGroup g;
  private View h;
  private TextView i;
  private TextView j;
  private int k = 0;
  private float l;
  private CharSequence m;
  
  public HangoutsToolbar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public HangoutsToolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public HangoutsToolbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void y()
  {
    if (TextUtils.isEmpty(j.getText()))
    {
      i.setTextSize(0, getResources().getDimension(aal.ez));
      j.setVisibility(8);
      return;
    }
    i.setTextSize(0, getResources().getDimension(aal.ei));
    j.setTextSize(0, getResources().getDimension(aal.eA));
    j.setVisibility(0);
  }
  
  private void z()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(i.getText());
    if (!TextUtils.isEmpty(m))
    {
      localStringBuilder.append(", ");
      localStringBuilder.append(m);
    }
    h.setContentDescription(localStringBuilder.toString());
  }
  
  public void a(float paramFloat)
  {
    setElevation(paramFloat);
  }
  
  public void a(View paramView)
  {
    g.addView(paramView);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    i.setText(paramCharSequence);
    z();
    y();
  }
  
  public void c(CharSequence paramCharSequence)
  {
    j.setText(paramCharSequence);
    e(paramCharSequence);
    y();
  }
  
  public void e(CharSequence paramCharSequence)
  {
    m = paramCharSequence;
    z();
  }
  
  public void f(int paramInt)
  {
    int n = getChildCount() - 1;
    while (n >= 0)
    {
      getChildAt(n).setVisibility(paramInt);
      n -= 1;
    }
  }
  
  public int getVisibility()
  {
    return k;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    g = ((ViewGroup)findViewById(aen.bc));
    h = findViewById(aen.gO);
    i = ((TextView)findViewById(aen.gM));
    j = ((TextView)findViewById(aen.gy));
    if (Build.VERSION.SDK_INT >= 21) {
      l = x();
    }
  }
  
  public void setVisibility(int paramInt)
  {
    if (paramInt == getVisibility()) {
      return;
    }
    if (paramInt == 8)
    {
      setScaleY(0.0F);
      if (Build.VERSION.SDK_INT >= 21) {
        a(0.0F);
      }
      k = paramInt;
      return;
    }
    f(paramInt);
    setScaleY(1.0F);
    if (Build.VERSION.SDK_INT >= 21) {
      a(l);
    }
    k = paramInt;
  }
  
  public TextView v()
  {
    return i;
  }
  
  public TextView w()
  {
    return j;
  }
  
  public float x()
  {
    return getElevation();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.HangoutsToolbar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */