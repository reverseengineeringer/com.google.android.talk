package com.google.android.apps.hangouts.views;

import aal;
import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;
import bzr;
import bzs;
import bzt;
import bzv;
import com.google.android.apps.hangouts.hangout.StressMode;
import ezi;
import gw;
import hh;
import java.util.Locale;

public class ContactDetailItemView
  extends TextView
{
  private static boolean a;
  private static String b;
  private static String c;
  private static String d;
  private static String e;
  private static String f;
  private static StyleSpan g = new StyleSpan(1);
  private static ForegroundColorSpan h;
  private static AccessibilityManager i;
  
  public ContactDetailItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ContactDetailItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (!a)
    {
      paramContext = paramContext.getApplicationContext().getResources();
      b = paramContext.getString(StressMode.s);
      c = paramContext.getString(StressMode.u);
      d = paramContext.getString(StressMode.v);
      e = paramContext.getString(StressMode.t);
      f = paramContext.getString(StressMode.w);
      g = new StyleSpan(1);
      h = new ForegroundColorSpan(paramContext.getColor(aal.db));
      i = (AccessibilityManager)getContext().getSystemService("accessibility");
      a = true;
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)) || (i.isEnabled()))
    {
      setText(paramString1);
      return;
    }
    int j = paramString1.toUpperCase(Locale.getDefault()).indexOf(paramString2.toUpperCase(Locale.getDefault()));
    if (j == -1)
    {
      setText(paramString1);
      return;
    }
    int k = paramString2.length() + j;
    paramString1 = new SpannableStringBuilder(paramString1);
    paramString1.setSpan(g, j, k, 0);
    paramString1.setSpan(h, j, k, 0);
    setText(paramString1);
  }
  
  public void a(bzs parambzs, String paramString)
  {
    if ((parambzs instanceof bzt))
    {
      a(a, paramString);
      return;
    }
    if ((parambzs instanceof bzv))
    {
      parambzs = (bzv)parambzs;
      a(gw.a().a(parambzs.a(), hh.a), paramString);
      return;
    }
    if ((parambzs instanceof bzr))
    {
      a(((bzr)parambzs).a(), null);
      return;
    }
    ezi.e("Babel", "Invalid contact detail item", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.ContactDetailItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */