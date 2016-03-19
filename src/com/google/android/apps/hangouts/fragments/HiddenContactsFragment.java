package com.google.android.apps.hangouts.fragments;

import aal;
import aen;
import android.app.Activity;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import bfd;
import bff;
import cbp;
import cbx;
import cby;
import cbz;
import cj;
import ck;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import dhq;
import dvd;
import eap;
import fcq;
import fe;
import hpu;
import ilh;

public class HiddenContactsFragment
  extends cbp
  implements ck<Cursor>
{
  public hpu a;
  public cby b;
  public int c = -1;
  public SparseArray<String> d;
  public SparseArray<String> e;
  public final fcq f = new fcq(this);
  private ListView g;
  private boolean h = false;
  private final eap i = new cbx(this);
  
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
    boolean bool2 = false;
    boolean bool1;
    if ((b != null) && (b.a() != null))
    {
      bool1 = bool2;
      if (c <= 0) {
        break label62;
      }
      if (bff.a(getContext(), a.a(), "last_suggested_contacts_time", 0L) != 0L) {
        break label64;
      }
    }
    label62:
    label64:
    for (int j = 1;; j = 0)
    {
      bool1 = bool2;
      if (j != 0) {
        bool1 = true;
      }
      return bool1;
    }
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
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    paramActivity.getIntent();
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((hpu)binder.a(hpu.class));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    d = new SparseArray();
    e = new SparseArray();
    super.onCreate(paramBundle);
  }
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    paramBundle = dvd.e(a.a());
    Object localObject = EsProvider.m.buildUpon();
    ((Uri.Builder)localObject).appendQueryParameter("account_id", Integer.toString(paramBundle.g()));
    localObject = ((Uri.Builder)localObject).build();
    return new dhq(getActivity(), paramBundle, (Uri)localObject, cbz.a, null, null, "name ASC");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(aal.ga, paramViewGroup, false);
    g = ((ListView)paramLayoutInflater.findViewById(aen.dU));
    b = new cby(this, getActivity());
    g.setAdapter(b);
    getLoaderManager().a(1027, new Bundle(), this).s();
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    b();
    g.setAdapter(null);
    d = null;
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
    a();
    c = RealTimeChatService.a(a.a(), true);
    a(getView());
  }
  
  public void onStop()
  {
    super.onStop();
    b();
    e.clear();
    d.clear();
  }
  
  protected void showContent(View paramView)
  {
    super.showContent(paramView);
    paramView.findViewById(aen.dP).setVisibility(8);
    paramView.findViewById(aen.dU).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.HiddenContactsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */