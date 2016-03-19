package com.google.android.apps.hangouts.fragments;

import aal;
import aen;
import android.animation.LayoutTransition;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import axj;
import bfb;
import bfd;
import bxq;
import bxr;
import cae;
import caf;
import cag;
import cah;
import caj;
import cam;
import can;
import cao;
import cbo;
import ceq;
import cj;
import ck;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.listui.SwipeableListView;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import cqr;
import cqs;
import crq;
import crr;
import cuj;
import czb;
import dhq;
import dkv;
import dkx;
import dls;
import dvd;
import eou;
import eww;
import ezc;
import ezi;
import ezv;
import fe;
import hbs;
import hpu;
import hpz;
import hqb;
import hqg;
import ilh;
import imx;
import iog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;

public class ConversationListFragment
  extends cbo<SwipeableListView, cam>
  implements AdapterView.OnItemClickListener, bxr, ck<Cursor>
{
  public static final boolean a = false;
  private static final ezv ap = ezv.a("ConversationListFragment");
  private long aA = -1L;
  private long aB = -2L;
  private cqr aC;
  private cqr aD;
  private crr aE = new crr(this);
  private final hqg aF = new cae(this);
  private boolean aG;
  private dls aH;
  private dkx aI;
  public int aj = -1;
  public fe<Cursor> ak;
  public crq al;
  public final Handler am = new Handler();
  public final Runnable an = new caf(this);
  public dkv ao;
  private Uri aq;
  private Uri ar;
  private View as;
  private int at = 1;
  private boolean au;
  private boolean av;
  private View aw;
  private LinearLayout ax;
  private ImageView ay;
  private TextView az;
  public hpu b;
  public hpz c;
  public bfd d;
  public String[] e;
  public Long[] f;
  public boolean g;
  public caj h;
  public cao i;
  
  static
  {
    imx localimx = ezi.f;
  }
  
  public static long a(Cursor paramCursor)
  {
    int k = 0;
    paramCursor = paramCursor.getString(35);
    long l1;
    int j;
    if (paramCursor != null)
    {
      l1 = -1L;
      paramCursor = paramCursor.split("\\|");
      int n = paramCursor.length;
      int i1 = paramCursor.length;
      int m = 0;
      k = 0;
      j = 0;
      for (;;)
      {
        if (m >= i1) {
          break label89;
        }
        String str = paramCursor[m];
        try
        {
          long l2 = Long.parseLong(str);
          if (l2 <= l1) {
            break;
          }
          j = k;
          l1 = l2;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;) {}
        }
        k += 1;
        m += 1;
      }
      label89:
      k = n;
    }
    for (;;)
    {
      l1 = j;
      return k << 32 | l1;
      j = 0;
    }
  }
  
  private void a(long paramLong, boolean paramBoolean)
  {
    if (a)
    {
      int j = at;
      long l1 = aA;
      long l2 = aB;
      new StringBuilder(122).append("Updating continuation end timestamp for ").append(j).append(" from ").append(l1).append("/").append(l2).append(" to ").append(paramLong);
    }
    aA = paramLong;
    aB = -2L;
    if (paramBoolean) {
      q();
    }
  }
  
  public static long b(Cursor paramCursor)
  {
    int n = 0;
    paramCursor = aal.f(paramCursor.getString(29)).iterator();
    int j = 0;
    for (k = -1; paramCursor.hasNext(); k = m)
    {
      String str = (String)paramCursor.next();
      m = k;
      if (k == -1) {}
      try
      {
        int i1 = Integer.parseInt(str);
        m = k;
        if (i1 == 1) {
          m = j;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        for (;;)
        {
          long l;
          m = k;
        }
      }
      j += 1;
    }
    if (k == -1)
    {
      k = n;
      l = k;
      return j << 32 | l;
    }
  }
  
  public static View b(View paramView)
  {
    return paramView.findViewById(aen.bi);
  }
  
  public static String c(int paramInt)
  {
    if (paramInt <= 99) {
      return String.valueOf(paramInt);
    }
    return String.valueOf("99").concat("+");
  }
  
  public static String c(Cursor paramCursor)
  {
    return EsProvider.b(paramCursor.getString(1), (int)a(paramCursor));
  }
  
  public bfb a(String paramString)
  {
    if (bA == null) {
      return null;
    }
    Cursor localCursor = ((cam)bA).a();
    if ((localCursor != null) && (localCursor.moveToFirst())) {
      do
      {
        if (TextUtils.equals(c(localCursor), paramString)) {
          return new bfb(localCursor.getString(24));
        }
      } while (localCursor.moveToNext());
    }
    return null;
  }
  
  public Object a(int paramInt)
  {
    ListAdapter localListAdapter = b();
    if (localListAdapter == null) {
      return null;
    }
    return localListAdapter.getItem(paramInt);
  }
  
  public void a(Bundle paramBundle, String paramString)
  {
    int k = 0;
    int j = 0;
    if (paramString.equals("leave_conversation"))
    {
      paramBundle = e;
      k = paramBundle.length;
      while (j < k)
      {
        paramString = paramBundle[j];
        RealTimeChatService.g(d, paramString);
        j += 1;
      }
    }
    if (paramString.equals("delete_conversation"))
    {
      paramBundle = getAccountForConversationDeletion(paramBundle);
      if (paramBundle != null)
      {
        j = k;
        while (j < e.length)
        {
          RealTimeChatService.a(paramBundle, e[j], aal.a(f[j], 0L));
          j += 1;
        }
      }
    }
    if (ao != null) {
      ao.c();
    }
  }
  
  public void a(View paramView)
  {
    boolean bool1 = a();
    boolean bool2 = isEmpty();
    ezi.a("Babel_ConvListFragment", 40 + "updateView isLoading=" + bool1 + " isEmpty=" + bool2, new Object[0]);
    if ((isEmpty()) && (a()))
    {
      showEmptyViewProgress(paramView);
      as.setVisibility(8);
      if (!aG)
      {
        aD.a("conversation_list_fragment_ui_loading_spinner");
        aG = true;
      }
    }
    for (;;)
    {
      return;
      if ((isEmpty()) && (aj != 3))
      {
        showEmptyView(paramView);
        as.setVisibility(8);
      }
      while (aG)
      {
        aD.a(d.g(), "conversation_list_fragment_ui_loading_spinner", SystemClock.elapsedRealtime(), 1);
        aG = false;
        return;
        showContent(paramView);
        if (u()) {
          as.setVisibility(8);
        } else {
          as.setVisibility(0);
        }
      }
    }
  }
  
  public void a(cao paramcao)
  {
    i = paramcao;
  }
  
  public void a(fe<Cursor> paramfe, Cursor paramCursor)
  {
    boolean bool = true;
    bfd localbfd = ((dhq)paramfe).D();
    if ((localbfd == null) || (d == null) || (!TextUtils.equals(localbfd.a(), d.a()))) {
      ezi.d("Babel", "onLoadFinished called for mismatched account", new Object[0]);
    }
    do
    {
      return;
      if (paramCursor == null)
      {
        ezi.d("Babel", "onLoadFinished returned with null data", new Object[0]);
        return;
      }
    } while (paramfe.o() != 1);
    int j = paramCursor.getCount();
    ezi.c("Babel", 63 + "ConversationListFragment load finished with " + j + " results", new Object[0]);
    aD.a(localbfd.g(), "conversation_list_fragment_loader", SystemClock.elapsedRealtime(), 1);
    ap.b("onLoadFinished");
    g = true;
    ((cam)bA).a(paramCursor);
    if (isEmpty()) {
      q();
    }
    a(getView());
    aw();
    if (ao != null) {
      ao.b();
    }
    h.a(paramCursor);
    long l1;
    long l2;
    if ((((dhq)paramfe).l().equals(ar)) && (paramCursor.moveToFirst()))
    {
      l1 = 0L;
      do
      {
        l2 = Math.max(l1, paramCursor.getLong(4));
        l1 = l2;
      } while (paramCursor.moveToNext());
      l1 = aal.b(context, localbfd.g());
      if (a) {
        if (l2 <= l1) {
          break label390;
        }
      }
    }
    for (;;)
    {
      new StringBuilder(84).append("new invite timestamp: ").append(l2).append("; old ").append(l1).append("; greater? ").append(bool);
      if (l2 > l1) {
        aal.a(context, localbfd.g(), aal.a(Long.valueOf(l2), 0L));
      }
      ap.c("onLoadFinished");
      s();
      return;
      label390:
      bool = false;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    boolean bool = true;
    SwipeableListView localSwipeableListView;
    if (bB != null)
    {
      localSwipeableListView = (SwipeableListView)bB;
      if ((!paramBoolean) || (aj != 0) || (binder.a("show_dialer_in_tab", true))) {
        break label50;
      }
    }
    label50:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      localSwipeableListView.a(paramBoolean);
      return;
    }
  }
  
  protected boolean a()
  {
    return (t()) || (!g);
  }
  
  public ListAdapter b()
  {
    if ((bB == null) || (((SwipeableListView)bB).getAdapter() == null))
    {
      if (bB == null)
      {
        str = "ListView";
        str = String.valueOf(str);
        if (str.length() == 0) {
          break label71;
        }
      }
      label71:
      for (String str = "Null:".concat(str);; str = new String("Null:"))
      {
        ezi.d("Babel", str, new Object[0]);
        return null;
        str = "Adapter";
        break;
      }
    }
    return ((SwipeableListView)bB).getAdapter();
  }
  
  public void b(int paramInt)
  {
    boolean bool = false;
    Object localObject;
    if (a)
    {
      int j = aj;
      localObject = String.valueOf(d);
      new StringBuilder(String.valueOf(localObject).length() + 70).append("setDisplayMode: displayMode=").append(j).append(", newMode=").append(paramInt).append(", account=").append((String)localObject);
    }
    if (paramInt == aj) {
      return;
    }
    aj = paramInt;
    switch (aj)
    {
    case 1: 
    default: 
      paramInt = aj;
      hbs.a(52 + "setDisplayMode called with unknown mode: " + paramInt);
      bool = true;
    }
    for (;;)
    {
      a(true);
      a(-1L, bool);
      return;
      au = false;
      if (aH == null)
      {
        localObject = lifecycle;
        paramInt = aen.aK;
        aH = new dls((iog)localObject, new Class[] { ceq.class, eou.class, cuj.class }, paramInt);
      }
      at = 1;
      continue;
      at = 2;
      au = false;
      bool = true;
    }
  }
  
  public void b(String paramString)
  {
    if ((paramString.equals("leave_conversation")) && (ao != null)) {
      ao.c();
    }
  }
  
  public void b(boolean paramBoolean)
  {
    au = paramBoolean;
  }
  
  public void c()
  {
    if (aw != null)
    {
      aw.setSelected(false);
      aw = null;
    }
  }
  
  public void c(String paramString)
  {
    if ((paramString.equals("leave_conversation")) && (ao != null)) {
      ao.c();
    }
  }
  
  public void c(boolean paramBoolean)
  {
    av = paramBoolean;
  }
  
  public boolean d()
  {
    return ao != null;
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
      paramView.findViewById(aen.dP).setVisibility(0);
    }
  }
  
  public void e()
  {
    bxq localbxq = bxq.a(getString(StressMode.im), getString(StressMode.il), getString(StressMode.ik), getString(StressMode.iH));
    localbxq.setTargetFragment(this, 0);
    localbxq.a(getFragmentManager(), "leave_conversation");
  }
  
  public boolean f()
  {
    switch (aj)
    {
    case 0: 
    case 1: 
    case 3: 
    default: 
      return false;
    }
    b(0);
    return true;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getLoaderManager().b(1, null, this);
  }
  
  public void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    b = ((hpu)binder.a(hpu.class));
    c = ((hpz)binder.a(hpz.class));
    paramBundle = (cqs)binder.a(cqs.class);
    aC = paramBundle.a(17);
    aD = paramBundle.a(18);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    ap.b("onCreate");
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    aI = new dkx(this);
    d = ((bfd)aen.a(dvd.e(b.a()), "Fragment should not be instantiated unless there's a valid account."));
    if (a)
    {
      paramBundle = String.valueOf(d);
      new StringBuilder(String.valueOf(paramBundle).length() + 37).append("ConversationListFragment setAccount: ").append(paramBundle);
    }
    if ((d != null) && (getActivity() != null))
    {
      aq = EsProvider.a(EsProvider.g, d.g());
      ar = EsProvider.a(EsProvider.i, d.g());
      h = new caj(this, d);
    }
    ap.c("onCreate");
  }
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    if (d == null) {
      return null;
    }
    switch (paramInt)
    {
    default: 
      hbs.a(42 + "Loader created for unknown id: " + paramInt);
      return null;
    }
    paramInt = aj;
    ezi.c("Babel", 66 + "ConversationListFragment load started for display mode " + paramInt, new Object[0]);
    aD.a("conversation_list_fragment_loader");
    switch (aj)
    {
    case 1: 
    default: 
      paramInt = aj;
      hbs.a(51 + "Loader created for unknown displayMode: " + paramInt);
      return null;
    case 0: 
      paramBundle = new dhq(getActivity(), d, aq, can.a, String.format(Locale.US, "(%s >= 0 OR %s IS NULL) AND %s = %d AND %s > 0", new Object[] { "is_pending_leave", "is_pending_leave", "view", Integer.valueOf(1), "sort_timestamp" }), null, "invite_time_aggregate DESC,call_media_type DESC, sort_timestamp DESC");
      ak = paramBundle;
      return paramBundle;
    case 2: 
      paramBundle = new dhq(getActivity(), d, aq, can.a, String.format(Locale.US, "(%s >= 0 OR %s IS NULL) AND %s = %d AND %s > 0 AND %s != %s", new Object[] { "is_pending_leave", "is_pending_leave", "view", Integer.valueOf(2), "sort_timestamp", "status", Integer.valueOf(1) }), null, "call_media_type DESC, sort_timestamp DESC");
      ak = paramBundle;
      return paramBundle;
    }
    String str1 = String.format(Locale.US, "(%s >= 0 OR %s IS NULL) AND %s = %d AND %s > 0 AND %s == %d", new Object[] { "is_pending_leave", "is_pending_leave", "view", Integer.valueOf(1), "sort_timestamp", "status", Integer.valueOf(2) });
    paramBundle = str1;
    if (au)
    {
      paramBundle = String.valueOf(str1);
      str1 = String.valueOf(EsProvider.a("transport_type", "3"));
      String str2 = String.valueOf(EsProvider.a("transport_type", "2"));
      paramBundle = String.valueOf(paramBundle).length() + 12 + String.valueOf(str1).length() + String.valueOf(str2).length() + paramBundle + " AND (" + str1 + " OR " + str2 + ") ";
    }
    if (av)
    {
      paramBundle = String.valueOf(paramBundle);
      str1 = String.valueOf(EsProvider.a("transport_type", "1"));
      paramBundle = String.valueOf(paramBundle).length() + 6 + String.valueOf(str1).length() + paramBundle + " AND " + str1 + " ";
    }
    for (;;)
    {
      paramBundle = new dhq(getActivity(), d, aq, can.a, paramBundle, null, "call_media_type DESC, sort_timestamp DESC");
      ak = paramBundle;
      return paramBundle;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramViewGroup = (ViewGroup)paramLayoutInflater.inflate(aal.fk, paramViewGroup, false);
    if (h != null)
    {
      caj localcaj = h;
      if (paramBundle != null) {
        b = ((HashMap)paramBundle.getSerializable("last_archived"));
      }
    }
    bB = ((SwipeableListView)paramViewGroup.findViewById(16908298));
    a(true);
    ((SwipeableListView)bB).setAccessibilityDelegate(new eww());
    paramBundle = paramLayoutInflater.inflate(aal.gm, bB, false);
    ((SwipeableListView)bB).addHeaderView(paramBundle, null, false);
    paramLayoutInflater = paramLayoutInflater.inflate(aal.gk, bB, false);
    as = paramLayoutInflater.findViewById(aen.dS);
    ((SwipeableListView)bB).addFooterView(paramLayoutInflater);
    as.setVisibility(8);
    ((SwipeableListView)bB).setOnItemClickListener(this);
    bA = new cam(this, getActivity(), d, this);
    ax = ((LinearLayout)paramViewGroup.findViewById(aen.hn));
    ay = null;
    az = ((TextView)paramViewGroup.findViewById(aen.ho));
    ((SwipeableListView)bB).setAdapter(bA);
    ((SwipeableListView)bB).setOnScrollListener(new cah(this));
    if (r() != 3)
    {
      ((SwipeableListView)bB).setChoiceMode(3);
      ((SwipeableListView)bB).setMultiChoiceModeListener(aI.b());
    }
    paramViewGroup.setLayoutTransition(new LayoutTransition());
    return paramViewGroup;
  }
  
  public void onDestroy()
  {
    if (ao != null) {
      ao.c();
    }
    super.onDestroy();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = a(paramInt);
    if (paramAdapterView == null) {}
    for (;;)
    {
      return;
      Object localObject;
      String str1;
      if ((paramAdapterView instanceof Cursor))
      {
        localObject = (Cursor)paramAdapterView;
        c();
        paramAdapterView = paramView.findViewById(aen.bi);
        if (paramAdapterView != null)
        {
          paramAdapterView.setSelected(true);
          aw = paramAdapterView;
        }
        str1 = c((Cursor)localObject);
        new czb(((Cursor)localObject).getString(16), ((Cursor)localObject).getString(17));
        if ((((Cursor)localObject).getInt(21) <= 1) && (((Cursor)localObject).getInt(14) != 1)) {
          break label154;
        }
        startActivity(aal.d(context, b.a()));
        aal.a(d, 1557);
      }
      while (ao != null)
      {
        ao.c();
        return;
        label154:
        if (i != null)
        {
          aC.a("click_conversation_list");
          paramInt = ((Cursor)localObject).getInt(3);
          paramView = ((Cursor)localObject).getString(24);
          paramAdapterView = paramView;
          if (paramView == null) {
            paramAdapterView = "";
          }
          paramLong = ((Cursor)localObject).getLong(27);
          paramView = ((Cursor)localObject).getString(6);
          ((Cursor)localObject).getString(7);
          String str2 = ((Cursor)localObject).getString(37);
          String str3 = ((Cursor)localObject).getString(38);
          localObject = new axj(str1, paramInt, Integer.parseInt(EsProvider.b(((Cursor)localObject).getString(29), (int)a((Cursor)localObject))));
          f = new bfb(paramAdapterView);
          g = paramView;
          h = paramLong;
          i = str2;
          j = str3;
          k = 1634;
          i.a((axj)localObject);
        }
      }
    }
  }
  
  public void onLoaderReset(fe<Cursor> paramfe)
  {
    if (paramfe.o() == 1)
    {
      if (bA != null) {
        ((cam)bA).b(null);
      }
      paramfe = getView();
      if (paramfe != null) {
        showContent(paramfe);
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (h != null) {
      h.a(paramBundle);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    ((cam)bA).d();
    an.run();
    if (isEmpty()) {
      q();
    }
    c.a(aF);
    a(getView());
    ((SwipeableListView)getView().findViewById(16908298)).a(aE);
  }
  
  public void onStop()
  {
    super.onStop();
    am.removeCallbacks(an);
    ((cam)bA).c();
    c.b(aF);
  }
  
  public boolean q()
  {
    if (!b.b()) {}
    do
    {
      do
      {
        return false;
      } while (u());
      if (a)
      {
        long l1 = aA;
        long l2 = aB;
        new StringBuilder(81).append("Requesting more conversations at ").append(l1).append(" (last ").append(l2).append(")");
      }
    } while (aB == aA);
    aB = aA;
    RealTimeChatService.c(b.a(), at);
    return true;
  }
  
  public int r()
  {
    return aj;
  }
  
  public void s()
  {
    if (!c.c(d.g())) {
      return;
    }
    long l2 = ((hpz)binder.a(hpz.class)).a(d.g()).a(EsProvider.a(at), -1L);
    long l1 = l2;
    if (l2 == -3L) {
      l1 = -2L;
    }
    a(l1, isEmpty());
    a(getView());
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    super.setUserVisibleHint(paramBoolean);
    if ((!paramBoolean) && (ao != null)) {
      ao.c();
    }
  }
  
  protected void showContent(View paramView)
  {
    if (ay != null)
    {
      ax.removeView(ay);
      ay = null;
    }
    super.showContent(paramView);
    paramView.findViewById(aen.dP).setVisibility(8);
  }
  
  protected void showEmptyView(View paramView)
  {
    Object localObject;
    boolean bool;
    int j;
    int k;
    int m;
    int n;
    switch (aj)
    {
    case 1: 
    default: 
      localObject = null;
      bool = false;
      j = 0;
      k = 0;
      m = 0;
      n = 0;
    }
    for (;;)
    {
      ezc.a(az, null, n, m, k);
      if (ay == null)
      {
        ay = new ImageView(ax.getContext());
        ay.setImageResource(j);
        ax.addView(ay, 0);
        ax.setClickable(bool);
        ax.setOnClickListener((View.OnClickListener)localObject);
      }
      super.showEmptyView(paramView);
      return;
      aal.a(d, 2137);
      n = StressMode.gD;
      m = StressMode.gC;
      k = StressMode.gB;
      j = R.drawable.aw;
      bool = true;
      localObject = new cag(this);
      continue;
      n = StressMode.gz;
      j = R.drawable.av;
      k = 0;
      m = 0;
      localObject = null;
      bool = false;
    }
  }
  
  public boolean t()
  {
    return aB != -2L;
  }
  
  public boolean u()
  {
    return (d == null) || (!b.b()) || (!d.o()) || (aA == -2L);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.ConversationListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */