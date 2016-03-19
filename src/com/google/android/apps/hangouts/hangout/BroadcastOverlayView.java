package com.google.android.apps.hangouts.hangout;

import aen;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import cfb;
import cfc;
import cgm;
import cgn;
import hku;

public final class BroadcastOverlayView
  extends LinearLayout
  implements cgm
{
  public final cfc a = cfc.a();
  public TextView b;
  private final hku c = new cfb(this);
  private TextView d;
  
  public BroadcastOverlayView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(int paramInt) {}
  
  public void a(cgn paramcgn)
  {
    a.a(c);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    b = ((TextView)findViewById(aen.cx));
    d = ((TextView)findViewById(aen.cz));
  }
  
  public void r_()
  {
    a.b(c);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.BroadcastOverlayView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */