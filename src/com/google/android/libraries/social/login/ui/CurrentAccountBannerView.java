package com.google.android.libraries.social.login.ui;

import aal;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import icp;
import mv;
import mx;

public final class CurrentAccountBannerView
  extends LinearLayout
{
  public String a;
  private TextView b;
  private TextView c;
  private boolean d;
  private boolean e;
  
  public CurrentAccountBannerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public CurrentAccountBannerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    d = true;
    boolean bool;
    if (e)
    {
      e = false;
      if (a != null)
      {
        Object localObject = getContext();
        if (Build.VERSION.SDK_INT < 16) {
          break label93;
        }
        if (localObject == null) {
          break label88;
        }
        localObject = (AccessibilityManager)((Context)localObject).getSystemService("accessibility");
        bool = mv.a.a((AccessibilityManager)localObject);
        if (!bool) {
          break label93;
        }
      }
    }
    label88:
    label93:
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        aal.a(new icp(this), 2000L);
      }
      return;
      bool = false;
      break;
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    d = false;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    b = ((TextView)findViewById(aal.uH));
    c = ((TextView)findViewById(aal.uG));
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.login.ui.CurrentAccountBannerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */