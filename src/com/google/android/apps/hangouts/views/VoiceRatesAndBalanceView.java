package com.google.android.apps.hangouts.views;

import aal;
import aen;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import bfd;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import eap;
import ezm;
import fes;
import hbs;

public class VoiceRatesAndBalanceView
  extends LinearLayout
  implements View.OnClickListener
{
  public View a;
  public TextView b;
  public TextView c;
  public boolean d;
  public final Object e = new Object();
  public Pair<Integer, String> f;
  public int g = -1;
  private TextView h;
  private View i;
  private View j;
  private final eap k = new fes(this);
  
  public VoiceRatesAndBalanceView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public VoiceRatesAndBalanceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = LayoutInflater.from(paramContext).inflate(aal.gU, this, true);
    a = paramContext.findViewById(aen.gH);
    a.setOnClickListener(this);
    b = ((TextView)paramContext.findViewById(aen.fg));
    c = ((TextView)paramContext.findViewById(aen.fi));
    h = ((TextView)paramContext.findViewById(aen.aJ));
    i = paramContext.findViewById(aen.aI);
    j = paramContext.findViewById(aen.aH);
    d = true;
  }
  
  public static void a(Context paramContext)
  {
    paramContext.startActivity(aal.o(aal.a(paramContext, "babel_google_voice_add_balance_url", "https://www.google.com/voice/m/billing")));
  }
  
  private static boolean a(bfd parambfd)
  {
    return !parambfd.R();
  }
  
  private void d()
  {
    if ((f == null) && (g == -1)) {
      RealTimeChatService.b(k);
    }
  }
  
  public void a()
  {
    hbs.a("Expected condition to be true", Thread.holdsLock(e));
    if (f != null)
    {
      f = null;
      d();
    }
  }
  
  public void a(String arg1, bfd parambfd)
  {
    if ((d) && (!TextUtils.isEmpty(???)) && (parambfd != null) && (a(parambfd))) {}
    synchronized (e)
    {
      if (g == -1)
      {
        RealTimeChatService.a(k);
        g = RealTimeChatService.e(parambfd.g());
      }
      ??? = ezm.g(???);
      if (??? == null) {
        break label123;
      }
      if (parambfd == null) {}
    }
    synchronized (e)
    {
      RealTimeChatService.a(k);
      f = new Pair(Integer.valueOf(RealTimeChatService.c(parambfd.g(), (String)???)), ???);
      return;
      ??? = finally;
      throw ???;
    }
    label123:
    synchronized (e)
    {
      a();
      setVisibility(8);
      return;
    }
  }
  
  public boolean a(bfd parambfd, StringBuilder paramStringBuilder)
  {
    boolean bool = false;
    int m = 8;
    if (a(parambfd))
    {
      parambfd = parambfd.P();
      h.setText(parambfd);
      if (paramStringBuilder != null)
      {
        String str = String.valueOf(getResources().getString(StressMode.bl));
        paramStringBuilder.append(String.valueOf(str).length() + 2 + String.valueOf(parambfd).length() + ", " + str + parambfd);
      }
      m = 0;
    }
    h.setVisibility(m);
    i.setVisibility(m);
    j.setVisibility(m);
    if (m == 0) {
      bool = true;
    }
    return bool;
  }
  
  public void b()
  {
    hbs.a("Expected condition to be true", Thread.holdsLock(e));
    if (g != -1)
    {
      g = -1;
      d();
    }
  }
  
  public void c()
  {
    d = true;
  }
  
  public void onClick(View paramView)
  {
    a(getContext());
  }
  
  public void onDetachedFromWindow()
  {
    synchronized (e)
    {
      a();
      b();
      super.onDetachedFromWindow();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.VoiceRatesAndBalanceView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */