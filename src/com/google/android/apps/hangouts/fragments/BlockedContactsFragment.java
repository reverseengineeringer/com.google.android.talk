package com.google.android.apps.hangouts.fragments;

import aal;
import aen;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import bfd;
import byb;
import byc;
import byd;
import bye;
import cbp;
import cj;
import ck;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import dhq;
import dvd;
import eap;
import eot;
import fbc;
import fe;
import hpu;
import if;
import ilh;

public class BlockedContactsFragment
  extends cbp
  implements ck<Cursor>
{
  public bfd a;
  public byc b;
  public int c = -1;
  public hpu d;
  public if<Integer, bye> e;
  public final fbc f = new fbc(this);
  private ListView g;
  private boolean h = false;
  private final eap i = new byb(this);
  
  public void a()
  {
    if (!h)
    {
      RealTimeChatService.a(i);
      h = true;
    }
  }
  
  public void a(View paramView)
  {
    if (c())
    {
      showEmptyViewProgress(paramView);
      return;
    }
    if (isEmpty())
    {
      showEmptyView(paramView);
      return;
    }
    showContent(paramView);
  }
  
  public void a(fe<Cursor> paramfe, Cursor paramCursor)
  {
    switch (paramfe.o())
    {
    default: 
      return;
    }
    b.a(paramCursor);
    a(getView());
  }
  
  public void b()
  {
    if (h)
    {
      RealTimeChatService.b(i);
      h = false;
    }
  }
  
  protected boolean c()
  {
    return (b == null) || (b.a() == null) || (c > 0);
  }
  
  protected void doShowEmptyViewProgress(View paramView)
  {
    if (isEmpty())
    {
      paramView.findViewById(16908292).setVisibility(8);
      paramView.findViewById(aen.dP).setVisibility(0);
      paramView.findViewById(aen.dU).setVisibility(8);
    }
  }
  
  protected boolean isEmpty()
  {
    return (b == null) || (b.a() == null) || (b.getCount() == 0);
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    d = ((hpu)binder.a(hpu.class));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    e = new if();
    super.onCreate(paramBundle);
    a = dvd.e(d.a());
  }
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    paramBundle = a;
    Uri.Builder localBuilder = EsProvider.l.buildUpon();
    localBuilder.appendQueryParameter("account_id", Integer.toString(paramBundle.g()));
    paramBundle = localBuilder.build();
    return new dhq(getActivity(), a, paramBundle, byd.a, null, null, "name ASC");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(aal.eY, paramViewGroup, false);
    g = ((ListView)paramLayoutInflater.findViewById(aen.dU));
    b = new byc(this, getActivity());
    g.setAdapter(b);
    getLoaderManager().a(1026, new Bundle(), this).s();
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    b();
    g.setAdapter(null);
    e = null;
  }
  
  public void onLoaderReset(fe<Cursor> paramfe)
  {
    switch (paramfe.o())
    {
    default: 
      return;
    }
    b.a(null);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    if (!((eot)binder.a(eot.class)).a(a.g()))
    {
      a();
      c = RealTimeChatService.d(a);
    }
    a(getView());
  }
  
  public void onStop()
  {
    super.onStop();
    b();
    e.clear();
  }
  
  protected void showContent(View paramView)
  {
    super.showContent(paramView);
    paramView.findViewById(aen.dP).setVisibility(8);
    paramView.findViewById(aen.dU).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.BlockedContactsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */