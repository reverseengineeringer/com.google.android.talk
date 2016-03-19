package com.google.android.apps.hangouts.hangout;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import cfc;
import cio;
import cip;
import cjb;
import com.google.android.apps.common.proguard.UsedByReflection;
import hbs;
import hkx;
import ilh;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@UsedByReflection
public class ParticipantOverlays
  extends LinearLayout
{
  public hkx a;
  public List<cio> b;
  private final cip c = new cip(this);
  private final cfc d = cfc.a();
  
  @UsedByReflection
  public ParticipantOverlays(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a()
  {
    hbs.b("Expected non-null", b);
    d.b(c);
    removeAllViews();
    b = null;
  }
  
  public void a(hkx paramhkx)
  {
    hbs.a("Expected null", b);
    a = paramhkx;
    b = new ArrayList();
    Context localContext = getContext();
    Iterator localIterator = ilh.c(localContext, cjb.class).iterator();
    while (localIterator.hasNext())
    {
      cio localcio = ((cjb)localIterator.next()).a(localContext, paramhkx);
      b.add(localcio);
    }
    paramhkx = b.iterator();
    while (paramhkx.hasNext()) {
      addView(((cio)paramhkx.next()).a());
    }
    d.a(c);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.ParticipantOverlays
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */