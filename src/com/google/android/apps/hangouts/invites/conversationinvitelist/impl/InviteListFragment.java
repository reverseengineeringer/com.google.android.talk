package com.google.android.apps.hangouts.invites.conversationinvitelist.impl;

import aal;
import aen;
import android.animation.LayoutTransition;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import cbo;
import cj;
import ck;
import com.google.android.apps.hangouts.listui.SwipeableListView;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import cpa;
import cpc;
import cpd;
import cpe;
import cpf;
import cpl;
import eww;
import ezi;
import ezv;
import haw;
import hax;
import hba;
import hpu;
import hpz;
import hqg;
import iku;
import ilh;
import imx;

public class InviteListFragment
  extends cbo<SwipeableListView, cpa>
  implements AdapterView.OnItemClickListener, iku
{
  public static final boolean a = false;
  private static final ezv g = ezv.a("InviteListFragment");
  private View aj;
  private boolean ak;
  private LinearLayout al;
  private ImageView am;
  private TextView an;
  private final hqg ao = new cpe(this);
  public hpu b;
  public hpz c;
  public cpc d;
  public final Handler e = new Handler();
  public final Runnable f = new cpd(this);
  private hba h;
  private cpl i;
  
  static
  {
    imx localimx = ezi.f;
  }
  
  public ListView a()
  {
    return (ListView)bB;
  }
  
  public void a(int paramInt)
  {
    h.a(b.a()).a(paramInt).d();
  }
  
  public void a(View paramView)
  {
    if (a)
    {
      boolean bool1 = ((cpa)bA).o();
      boolean bool2 = isEmpty();
      new StringBuilder(40).append("updateView isLoading=").append(bool1).append(" isEmpty=").append(bool2);
    }
    if ((isEmpty()) && (((cpa)bA).o()))
    {
      showEmptyViewProgress(paramView);
      aj.setVisibility(8);
    }
    for (;;)
    {
      return;
      if (isEmpty())
      {
        showEmptyView(paramView);
        return;
      }
      showContent(paramView);
      if (((cpa)bA).l()) {
        aj.setVisibility(8);
      }
      while (!ak)
      {
        a(1548);
        ak = true;
        return;
        aj.setVisibility(0);
      }
    }
  }
  
  public void aw()
  {
    super.aw();
  }
  
  public View b(View paramView)
  {
    return paramView.findViewById(aal.mw);
  }
  
  public void b(String paramString)
  {
    if ("dismiss_high_affinity".equals(paramString))
    {
      RealTimeChatService.b(b.a(), 1);
      a(2727);
    }
    do
    {
      return;
      if (!"dismiss_low_affinity".equals(paramString)) {
        break;
      }
    } while (b == null);
    RealTimeChatService.b(b.a(), 2);
    a(2728);
    ((cpa)bA).p();
    return;
    ezi.e("Babel_InviteListFrag", "Attempted to decline all invites of an unknown affinity.", new Object[0]);
  }
  
  protected void doShowEmptyViewProgress(View paramView)
  {
    boolean bool = isEmpty();
    if (a) {
      new StringBuilder(43).append("doShowEmptyViewProgress cursorIsEmpty=").append(bool);
    }
    if (bool)
    {
      paramView.findViewById(16908292).setVisibility(8);
      paramView.findViewById(aal.mH).setVisibility(0);
    }
  }
  
  public void f() {}
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getLoaderManager().b(1, null, (ck)bA);
  }
  
  public void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    b = ((hpu)binder.a(hpu.class));
    c = ((hpz)binder.a(hpz.class));
    h = ((hba)binder.a(hba.class));
    i = ((cpl)binder.b(cpl.class));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    String str = g.b("onCreate");
    super.onCreate(paramBundle);
    g.c(str);
    ak = false;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramViewGroup = (ViewGroup)paramLayoutInflater.inflate(aal.mP, paramViewGroup, false);
    bB = ((SwipeableListView)paramViewGroup.findViewById(16908298));
    ((SwipeableListView)bB).a(false);
    ((SwipeableListView)bB).setAccessibilityDelegate(new eww());
    View localView = paramLayoutInflater.inflate(aal.mT, bB, false);
    ((SwipeableListView)bB).addHeaderView(localView);
    paramLayoutInflater = paramLayoutInflater.inflate(aal.mR, bB, false);
    aj = paramLayoutInflater.findViewById(aal.mI);
    ((SwipeableListView)bB).addFooterView(paramLayoutInflater);
    aj.setVisibility(8);
    ((SwipeableListView)bB).setOnItemClickListener(this);
    bA = new cpa(getActivity(), this);
    if (paramBundle == null) {
      ((cpa)bA).p();
    }
    al = ((LinearLayout)paramViewGroup.findViewById(aal.mK));
    an = ((TextView)paramViewGroup.findViewById(aal.mL));
    ((SwipeableListView)bB).setAdapter(bA).o);
    ((SwipeableListView)bB).setOnScrollListener(new cpf(this));
    paramViewGroup.setLayoutTransition(new LayoutTransition());
    if ((paramBundle == null) && (i != null)) {
      i.a(getFragmentManager(), b.a());
    }
    return paramViewGroup;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = ((SwipeableListView)bB).getAdapter().getItem(paramInt);
    if (paramAdapterView == null) {}
    while (!(paramAdapterView instanceof Cursor)) {
      return;
    }
    ((cpa)bA).d((Cursor)paramAdapterView);
  }
  
  public void onStart()
  {
    super.onStart();
    ((cpa)bA).d();
    f.run();
    if (isEmpty()) {
      ((cpa)bA).k();
    }
    ((hpz)binder.a(hpz.class)).a(ao);
    a(getView());
  }
  
  public void onStop()
  {
    super.onStop();
    e.removeCallbacks(f);
    ((cpa)bA).c();
    ((hpz)binder.a(hpz.class)).b(ao);
  }
  
  public void q() {}
  
  public void r() {}
  
  public void s() {}
  
  public void showContent(View paramView)
  {
    if (am != null)
    {
      al.removeView(am);
      am = null;
    }
    super.showContent(paramView);
    paramView.findViewById(aal.mH).setVisibility(8);
  }
  
  protected void showEmptyView(View paramView)
  {
    int j = aen.iZ;
    int k = aal.mt;
    if (!ak)
    {
      a(1549);
      ak = true;
    }
    an.setText(j);
    if (am == null)
    {
      am = new ImageView(al.getContext());
      am.setImageResource(k);
      al.addView(am, 0);
    }
    super.showEmptyView(paramView);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.invites.conversationinvitelist.impl.InviteListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */