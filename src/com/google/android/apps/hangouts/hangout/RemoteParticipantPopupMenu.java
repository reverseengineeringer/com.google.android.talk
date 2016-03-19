package com.google.android.apps.hangouts.hangout;

import aal;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import cfc;
import cgn;
import cgp;
import cgw;
import cin;
import cjj;
import com.google.android.apps.common.proguard.UsedByReflection;
import hkx;
import ilh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@UsedByReflection
public class RemoteParticipantPopupMenu
  extends LinearLayout
{
  public final cfc a = cfc.a();
  public List<cgp> b;
  private boolean c;
  private final cjj d = new cjj(this);
  
  @UsedByReflection
  public RemoteParticipantPopupMenu(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(cgn paramcgn, hkx paramhkx, cgw paramcgw)
  {
    removeAllViews();
    Object localObject = ilh.c(getContext(), cin.class);
    Collections.sort((List)localObject);
    b = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      cin localcin = (cin)((Iterator)localObject).next();
      b.addAll(localcin.a(getContext(), paramcgn, paramhkx, paramcgw));
    }
    paramcgn = b.iterator();
    while (paramcgn.hasNext()) {
      addView(((cgp)paramcgn.next()).a(LayoutInflater.from(getContext()), aal.fS, (ViewGroup)getParent()));
    }
    c = true;
    a.a(d);
  }
  
  public boolean a()
  {
    return c;
  }
  
  public void b()
  {
    a.b(d);
    removeAllViews();
    b = null;
    c = false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.RemoteParticipantPopupMenu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */