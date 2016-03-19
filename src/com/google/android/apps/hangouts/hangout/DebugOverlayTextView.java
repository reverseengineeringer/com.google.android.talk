package com.google.android.apps.hangouts.hangout;

import android.content.Context;
import android.text.method.ScrollingMovementMethod;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.widget.TextView;
import cfc;
import cfu;
import hku;
import hkx;
import ios;
import iov;
import ioz;
import jun;

public final class DebugOverlayTextView
  extends TextView
  implements ios, iov, ioz
{
  public final cfc a = cfc.a();
  public final StringBuilder b = new StringBuilder();
  public hkx c;
  public jun d;
  public jun e;
  public final SparseArray<jun> f = new SparseArray();
  private final hku g = new cfu(this);
  
  public DebugOverlayTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void X_()
  {
    setMovementMethod(new ScrollingMovementMethod());
    a.a(g);
  }
  
  public void a()
  {
    a.b(g);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.DebugOverlayTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */