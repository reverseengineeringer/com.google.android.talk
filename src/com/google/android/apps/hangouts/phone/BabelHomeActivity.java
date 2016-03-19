package com.google.android.apps.hangouts.phone;

import aal;
import aen;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.Toast;
import av;
import awo;
import axj;
import axy;
import axz;
import ayn;
import bbg;
import bdp;
import bfb;
import bfd;
import bff;
import bfw;
import bg;
import bkw;
import bwp;
import bwr;
import bzg;
import cao;
import cbr;
import cfc;
import cob;
import com.google.android.apps.hangouts.fragments.CallContactPickerFragment;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.navigation.NavigationDrawerFragment;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.service.BootReceiver;
import com.google.android.apps.hangouts.util.TabHostEx;
import com.google.android.apps.hangouts.views.BalanceView;
import com.google.android.apps.hangouts.views.HangoutsToolbar;
import com.google.android.apps.hangouts.views.MainViewPager;
import com.google.android.gms.common.ConnectionResult;
import csr;
import css;
import cva;
import cyi;
import czb;
import ddo;
import ddp;
import ddq;
import ddr;
import dds;
import ddu;
import ddv;
import ddw;
import ddx;
import ddy;
import ddz;
import dea;
import deb;
import dfq;
import dhm;
import diu;
import djm;
import djn;
import dlj;
import dma;
import dnv;
import dty;
import dvd;
import dvi;
import dvv;
import dvx;
import dwb;
import ebi;
import ecj;
import edt;
import eea;
import enn;
import eok;
import eot;
import epa;
import epb;
import epc;
import epi;
import ewz;
import ezc;
import ezi;
import ezv;
import fcn;
import fif;
import fih;
import haw;
import hax;
import hba;
import hpv;
import hpw;
import hpz;
import hqb;
import hwj;
import hzy;
import iaj;
import iap;
import iaq;
import ilh;
import imx;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import lt;

public class BabelHomeActivity
  extends cbr
  implements bzg, cao, cva, dvx, ecj, fif, fih, hpw
{
  public static LinkedList<deb> t = new LinkedList();
  private static final boolean u;
  private static final ezv v;
  private boolean C;
  private boolean D;
  private BalanceView E;
  private DrawerLayout F;
  private NavigationDrawerFragment G;
  private diu H;
  private TabHostEx I;
  private String J;
  private String K;
  private String L;
  private lt M;
  private Menu N;
  private dty O;
  private long P = -1L;
  private long Q;
  private long R = -1L;
  private long S = -1L;
  private boolean T;
  private hwj U;
  private awo V;
  private hba W;
  private final hzy X = new hzy(this, B).a("active-hangouts-account").a(A).b(this);
  private final epc Y = new epc(this, B).b(A);
  private final epi Z = new epi(this);
  public boolean n;
  public boolean o;
  public MainViewPager p;
  public bwp q;
  public dlj r;
  public epa s;
  private ConversationListFragment w;
  private CallContactPickerFragment x;
  private boolean y;
  private boolean z;
  
  static
  {
    imx localimx = ezi.k;
    u = false;
    v = ezv.a("HomeActivity");
  }
  
  public BabelHomeActivity()
  {
    new ayn(this, B);
    new dma(B);
    new eok(B);
    new edt(B);
    new cyi(B);
    new bbg(B);
  }
  
  private void A()
  {
    if ((D) || (!X.b())) {}
    for (boolean bool = true;; bool = false)
    {
      aen.b(bool);
      if (p != null) {
        n();
      }
      return;
    }
  }
  
  public static void a(PrintWriter paramPrintWriter)
  {
    Iterator localIterator = t.iterator();
    int i = 0;
    long l = 0L;
    while (localIterator.hasNext())
    {
      deb localdeb = (deb)localIterator.next();
      localdeb.a(i, paramPrintWriter, l);
      l = a;
      i += 1;
    }
  }
  
  private static void c(String paramString)
  {
    if (ezi.A)
    {
      t.add(new deb(paramString));
      while (t.size() > 40) {
        t.remove(0);
      }
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if ((!X.b()) || (((eot)A.a(eot.class)).a(X.a()))) {}
    label138:
    for (;;)
    {
      return;
      b(paramBoolean);
      NetworkInfo localNetworkInfo = ((ConnectivityManager)getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnected())) {}
      for (int i = 1;; i = 0)
      {
        if (i == 0) {
          break label138;
        }
        long l1 = aal.a(this, "babel_request_voice_account_data_delay_ms", 30000L);
        long l2 = System.currentTimeMillis();
        if (l1 + Q > l2) {
          break;
        }
        Q = l2;
        aal.a(X.a(), this, false, new ddx(this, paramBoolean));
        return;
      }
    }
  }
  
  private static boolean c(Intent paramIntent)
  {
    if (paramIntent == null) {}
    do
    {
      do
      {
        return false;
        if ("android.intent.action.RESPOND_VIA_MESSAGE".equals(paramIntent.getAction())) {
          return true;
        }
        paramIntent = paramIntent.getData();
      } while (paramIntent == null);
      paramIntent = paramIntent.toString();
    } while ((paramIntent == null) || ((!paramIntent.startsWith("sms:")) && (!paramIntent.startsWith("smsto:")) && (!paramIntent.startsWith("mms:")) && (!paramIntent.startsWith("mmsto:"))));
    return true;
  }
  
  private void d(boolean paramBoolean)
  {
    int j = 1;
    if (D) {}
    label146:
    label149:
    for (;;)
    {
      return;
      long l = ((bdp)A.a(bdp.class)).a("babel_account_snackbar_reshow", eea.n);
      if ((paramBoolean) || (P == -1L) || (SystemClock.elapsedRealtime() - P > l))
      {
        i = 1;
        if (((hpz)A.a(hpz.class)).a(new String[] { "logged_in" }).size() <= 1) {
          break label146;
        }
      }
      for (;;)
      {
        if ((i & j) == 0) {
          break label149;
        }
        P = SystemClock.elapsedRealtime();
        if (!X.c().d("sms_only")) {
          break label151;
        }
        b(null);
        return;
        i = 0;
        break;
        j = 0;
      }
    }
    label151:
    if (r != null) {
      r.a(null);
    }
    int i = X.a();
    r = new ddp(this, this, B, i, cl);
    bfd localbfd = dvd.e(i);
    r.a(ba);
  }
  
  private static boolean d(Intent paramIntent)
  {
    return (TextUtils.equals(paramIntent.getAction(), "com.google.android.apps.hangouts.phone.recentcalls")) || (TextUtils.equals(paramIntent.getAction(), "com.google.android.apps.hangouts.phone.dialpad"));
  }
  
  private void s()
  {
    if (C) {}
    Intent localIntent;
    Object localObject2;
    do
    {
      return;
      C = true;
      localIntent = getIntent();
      if (c(localIntent))
      {
        localObject1 = new bfb(localIntent.getStringExtra("sms_body"));
        localObject2 = enn.b(localIntent.getData());
        int j = X.a();
        if (TextUtils.isEmpty((CharSequence)localObject2))
        {
          localIntent = aal.a(dvd.e(j), null, null, dhm.a, bkw.b);
          localObject2 = new Intent();
          ((Intent)localObject2).putExtra("android.intent.extra.TEXT", a);
          localIntent.putExtra("share_intent", (Parcelable)localObject2);
          startActivity(localIntent);
          overridePendingTransition(aal.ch, aal.ci);
          finish();
          return;
        }
        HashSet localHashSet = new HashSet();
        Object localObject3 = ((String)localObject2).split(";");
        int k = localObject3.length;
        i = 0;
        while (i < k)
        {
          String str = localObject3[i];
          localHashSet.add(aal.a(getApplicationContext(), str, null, null));
          i += 1;
        }
        i = localIntent.getIntExtra("transport_type", 3);
        localObject3 = ebi.b();
        RealTimeChatService.a((ebi)localObject3, new dwb(getApplicationContext()).a(j).a(aal.b(localHashSet)).a(bfw.c).b(i).a());
        RealTimeChatService.a(new ddy(this, (ebi)localObject3, (String)localObject2, (bfb)localObject1, localIntent.getIntExtra("opened_from_impression", 0), j));
        return;
      }
      localObject1 = localIntent.getAction();
      y = TextUtils.equals((CharSequence)localObject1, "android.intent.action.MAIN");
      localObject2 = localIntent.getStringExtra("conversation_id");
      L = null;
      K = null;
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        break;
      }
      if (TextUtils.equals((CharSequence)localObject1, "android.intent.action.INSERT"))
      {
        a(localIntent);
        return;
      }
    } while (!d(localIntent));
    if (localIntent.getBooleanExtra("use_dialer_activity", true))
    {
      startActivity(aal.d(localIntent));
      finish();
      return;
    }
    K = localIntent.getAction();
    if (TextUtils.equals(K, "com.google.android.apps.hangouts.phone.dialpad")) {
      L = localIntent.getStringExtra("number_to_call");
    }
    if (!dvd.v())
    {
      ezi.d("Babel_HomeActivity", "[BabelHomeActivity.onNewIntent] Adding account from dialer intent.", new Object[0]);
      q();
    }
    r();
    return;
    int i = localIntent.getIntExtra("client_conversation_type", 0);
    Object localObject1 = aal.b(localIntent.getExtras());
    if (localObject1 != null)
    {
      a((czb)localObject1, (String)localObject2, i, localIntent.getLongExtra("invite_timestamp", 0L));
      return;
    }
    if (w != null) {}
    for (localObject1 = w.a((String)localObject2);; localObject1 = null)
    {
      localObject2 = new axj((String)localObject2, i);
      d = true;
      f = ((bfb)localObject1);
      k = localIntent.getIntExtra("opened_from_impression", 0);
      a((axj)localObject2, null, localIntent.getIntExtra("account_id", X.a()));
      return;
    }
  }
  
  private void t()
  {
    if ((T) && (S > 0L))
    {
      String str = v.b("reportStartup");
      T = false;
      ((axz)A.a(axz.class)).a(R, S, X.a());
      aal.a(new djn(getApplicationContext()), 1000L);
      v.c(str);
    }
  }
  
  private void u()
  {
    if (N == null) {}
    fcn localfcn;
    MenuItem localMenuItem;
    do
    {
      return;
      if (p == null) {
        break;
      }
      localfcn = p.i();
      localMenuItem = N.findItem(aen.fy);
    } while (localMenuItem == null);
    if (localfcn == MainViewPager.d) {}
    for (boolean bool = true;; bool = false)
    {
      localMenuItem.setVisible(bool);
      return;
      localfcn = MainViewPager.d;
      break;
    }
  }
  
  private void v()
  {
    if ((w != null) && (w.d())) {}
    do
    {
      ViewGroup localViewGroup;
      do
      {
        do
        {
          return;
        } while (q == null);
        localViewGroup = (ViewGroup)findViewById(aen.dX);
      } while (localViewGroup == null);
      q.a();
      q.a(this, localViewGroup, N);
      if (p == null) {
        break;
      }
      if (M == null)
      {
        M = q.b();
        if (M != null) {
          p.b(M);
        }
      }
    } while (M == null);
    int i = p.c();
    M.a(i);
    M.a(i, 0.0F, 0);
    return;
    q.a(0);
  }
  
  private void w()
  {
    w.a(false);
    p.b(false);
    if (I != null) {
      I.a(true);
    }
    F.a(1);
  }
  
  private void x()
  {
    w.a(true);
    p.b(z());
    if (I != null) {
      I.a(false);
    }
    F.a(0);
  }
  
  private boolean y()
  {
    if ((F == null) || (G == null) || (G.getView() == null)) {
      return false;
    }
    return F.j(G.getView());
  }
  
  private boolean z()
  {
    return A.a("show_dialer_in_tab", true);
  }
  
  public int a()
  {
    return 1;
  }
  
  public void a(int paramInt) {}
  
  public void a(Intent paramIntent)
  {
    aal.b(paramIntent);
    if (p != null) {
      p.a(MainViewPager.d);
    }
    if (q != null) {
      q.f();
    }
    if (w != null) {
      w.c();
    }
  }
  
  protected void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    ((cob)A.a(cob.class)).a(B);
    paramBundle = (bwr)A.b(bwr.class);
    if (paramBundle != null)
    {
      q = paramBundle.a(this);
      A.a(bwp.class, q);
    }
    O = ((dty)A.a(dty.class));
    U = ((hwj)A.a(hwj.class));
    V = ((awo)A.a(awo.class));
    W = ((hba)A.a(hba.class));
  }
  
  public void a(av paramav)
  {
    String str = String.valueOf(paramav.getClass().getSimpleName());
    if (str.length() != 0)
    {
      str = "onAttachFragment ".concat(str);
      c(str);
      super.a(paramav);
      if (!(paramav instanceof ConversationListFragment)) {
        break label111;
      }
      w = ((ConversationListFragment)paramav);
      w.a(this);
      w.b(0);
      label66:
      paramav = String.valueOf(paramav.getClass().getSimpleName());
      if (paramav.length() == 0) {
        break label137;
      }
    }
    label111:
    label137:
    for (paramav = "/onAttachFragment ".concat(paramav);; paramav = new String("/onAttachFragment "))
    {
      c(paramav);
      return;
      str = new String("onAttachFragment ");
      break;
      if (!(paramav instanceof CallContactPickerFragment)) {
        break label66;
      }
      x = ((CallContactPickerFragment)paramav);
      x.a(this);
      break label66;
    }
  }
  
  public void a(axj paramaxj)
  {
    a(paramaxj, null, X.a());
  }
  
  public void a(axj paramaxj, Intent paramIntent, int paramInt)
  {
    if (u)
    {
      localObject = a;
      int i = b;
      new StringBuilder(String.valueOf(localObject).length() + 51).append("openConversation conversationId: ").append((String)localObject).append(" type: ").append(i);
    }
    Object localObject = aal.a(paramInt, a, b);
    ((Intent)localObject).putExtra("conversation_parameters", paramaxj);
    ((Intent)localObject).putExtra("opened_from_impression", k);
    if (paramIntent != null)
    {
      ezi.a("Babel_HomeActivity", "Injecting share intent.", new Object[0]);
      ((Intent)localObject).putExtra("share_intent", paramIntent);
    }
    startActivity((Intent)localObject);
    paramaxj = String.valueOf(a);
    if (paramaxj.length() != 0) {}
    for (paramaxj = "openConversation ".concat(paramaxj);; paramaxj = new String("openConversation "))
    {
      c(paramaxj);
      return;
    }
  }
  
  public void a(ConnectionResult paramConnectionResult) {}
  
  public void a(czb paramczb, String paramString, int paramInt, long paramLong)
  {
    if (u)
    {
      String str = String.valueOf(paramString);
      if (str.length() == 0) {
        break label49;
      }
      "openInvite ".concat(str);
    }
    for (;;)
    {
      startActivity(aal.a(X.a(), paramString, paramczb, paramInt, paramLong));
      return;
      label49:
      new String("openInvite ");
    }
  }
  
  public void a(dvv paramdvv)
  {
    aal.a(paramdvv, dvd.e(X.a()), this, this);
  }
  
  public void a(epa paramepa)
  {
    Y.a(paramepa);
  }
  
  public void a(epa paramepa1, epa paramepa2)
  {
    Y.a(paramepa1, paramepa2);
  }
  
  public void a(iaj paramiaj)
  {
    D = true;
    A();
    X.a(paramiaj);
  }
  
  public void a(String paramString1, String paramString2)
  {
    int i = ((hpz)A.a(hpz.class)).b(paramString1, paramString2);
    if (X.a() == i) {
      return;
    }
    if ((paramString2 != null) && (i == -1))
    {
      a(new iaj().a(csr.class, new css().a(paramString1).b(paramString2).a()).b());
      return;
    }
    W.a(i).a(1561).d();
    a(new iaj().a(paramString1, paramString2).b());
  }
  
  public void a(String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    c("openHangout");
    new djm(this, dvd.e(X.a()), paramString, paramBoolean, paramInt1, paramInt2).a(new Void[0]);
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    String str1 = String.valueOf(paramhpv1);
    String str2 = String.valueOf(paramhpv2);
    ezi.c("Babel_HomeActivity", String.valueOf(str1).length() + 41 + String.valueOf(str2).length() + "oAHST " + paramBoolean + ", " + str1 + ", " + str2 + ", " + paramInt1 + ", " + paramInt2, new Object[0]);
    switch (ddt.a[paramhpv2.ordinal()])
    {
    }
    while (o)
    {
      aal.a(new dea(this));
      return;
      D = false;
      continue;
      finish();
      return;
      A();
      aal.a(new ddz(this));
      return;
    }
    if (paramhpv1 == hpv.c)
    {
      paramInt1 = 1;
      s();
      U.a(new ddo(this));
      paramhpv1 = dvd.e(paramInt2);
      if ((paramInt1 != 0) && (!((eot)A.a(eot.class)).a(paramInt2))) {
        RealTimeChatService.e(paramhpv1);
      }
      v();
      if (q != null)
      {
        paramhpv2 = q;
        if (p == null) {
          break label321;
        }
        paramInt2 = p.c();
        label287:
        paramhpv2.a(paramInt2);
      }
      if (paramInt1 == 0) {
        break label327;
      }
      c(false);
    }
    for (;;)
    {
      d(true);
      t();
      return;
      paramInt1 = 0;
      break;
      label321:
      paramInt2 = 0;
      break label287;
      label327:
      if (d(getIntent()))
      {
        if (!dvd.v())
        {
          q();
          ezi.d("Babel_HomeActivity", "[BabelHomeActivity.onCreate] Adding account from dialer intent.", new Object[0]);
          return;
        }
        if (!O.a(paramhpv1)) {
          new AlertDialog.Builder(this).setMessage(StressMode.cl).setCancelable(true).setPositiveButton(StressMode.gZ, new dds(this)).create().show();
        }
      }
    }
  }
  
  protected boolean a(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == aen.bw)
    {
      W.a(X.a()).a(1615).d();
      new dfq(this).a(H).a(C_()).a().show();
    }
    return super.a(paramMenuItem);
  }
  
  public boolean a(String paramString)
  {
    return cfc.a(dvd.e(X.a()), paramString);
  }
  
  public void a_(Bundle paramBundle)
  {
    if (isFinishing()) {
      ezi.a("Babel_HomeActivity", "People client connected but home activity is finishing.", new Object[0]);
    }
  }
  
  public void b(dvv paramdvv)
  {
    switch (paramdvv.b())
    {
    default: 
      ezi.e("Babel_HomeActivity", "Unsupported call action type for BabelHomeActivity!", new Object[0]);
      return;
    case 1: 
      r();
      return;
    }
    int i = X.a();
    aal.a(this, paramdvv, i, V.a(i));
  }
  
  public void b(String paramString)
  {
    int i;
    if (s != null)
    {
      i = 1;
      epb localepb = new epb(this);
      int j = X.a();
      localepb.a(getString(StressMode.kb, new Object[] { V.c(j) }));
      localepb.b(paramString);
      localepb.a(TimeUnit.SECONDS.toMillis(5L));
      localepb.a(new ddq(this));
      paramString = localepb.b();
      if (i == 0) {
        break label126;
      }
      Y.a(s, paramString);
    }
    for (;;)
    {
      s = paramString;
      return;
      i = 0;
      break;
      label126:
      Y.a(paramString);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    int i = X.a();
    bfd localbfd = dvd.e(i);
    if ((O.b(localbfd)) && (!V.f(i)))
    {
      if (E == null)
      {
        E = ((BalanceView)getLayoutInflater().inflate(aal.gN, null));
        ((HangoutsToolbar)m).a(E);
      }
      if (paramBoolean) {
        E.a(true);
      }
    }
    while (E == null) {
      return;
    }
    E.a(false);
  }
  
  public void c()
  {
    K = null;
  }
  
  public String d()
  {
    return L;
  }
  
  public void e()
  {
    L = null;
  }
  
  public boolean h()
  {
    return (p != null) && (p.i() == MainViewPager.e);
  }
  
  public void j()
  {
    x();
    v();
  }
  
  public void m()
  {
    if (D)
    {
      o = true;
      return;
    }
    o = false;
    Object localObject = getIntent();
    if ((c((Intent)localObject)) && (!((Intent)localObject).hasExtra("account_id")))
    {
      localObject = dvd.d;
      if (dvi.a())
      {
        int i = dvd.l().g();
        a(new iaj().a(i).b());
        return;
      }
      Toast.makeText(this, StressMode.jv, 0).show();
      finish();
      return;
    }
    a(new iaj().a().c().a(iap.class, new iaq().b().c()));
  }
  
  public void n()
  {
    boolean bool2 = true;
    boolean bool1;
    int i;
    label41:
    Object localObject;
    if (p != null)
    {
      bool1 = true;
      aen.b(bool1, "View pager is null");
      if ((!z) && (n))
      {
        if (!D) {
          break label150;
        }
        i = -1;
        localObject = dvd.e(i);
        if ((D) || (!O.a(this, (bfd)localObject))) {
          break label161;
        }
        bool1 = true;
        label71:
        if (p.a(i, C_(), bool1))
        {
          if (p == null) {
            break label166;
          }
          bool1 = bool2;
          label96:
          aen.b(bool1, "View pager is null");
          if (!p.a(J)) {
            break label171;
          }
          J = null;
        }
      }
    }
    for (;;)
    {
      if (I != null) {
        I.a(getLayoutInflater());
      }
      p();
      return;
      bool1 = false;
      break;
      label150:
      i = X.a();
      break label41;
      label161:
      bool1 = false;
      break label71;
      label166:
      bool1 = false;
      break label96;
      label171:
      localObject = PreferenceManager.getDefaultSharedPreferences(this).getString("last_selected_tab", null);
      p.a((String)localObject);
    }
  }
  
  public void o()
  {
    if ((!X.b()) || (p == null) || (!p.j())) {
      return;
    }
    n();
  }
  
  public void onBackPressed()
  {
    if ((q != null) && (q.g())) {}
    do
    {
      do
      {
        return;
        if (!y()) {
          break;
        }
      } while (F == null);
      F.b();
      return;
      c("onBackPressed");
    } while (((x != null) && (x.isVisible()) && (x.d())) || ((w != null) && (w.f())));
    super.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    y_();
    v();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    for (;;)
    {
      Object localObject;
      try
      {
        R = SystemClock.elapsedRealtime();
        setTheme(aal.hR);
        v.b("onCreate");
        c("onCreate");
        if (u)
        {
          localObject = String.valueOf("onCreate  savedInstanceState: ");
          String str = String.valueOf(paramBundle);
          new StringBuilder(String.valueOf(localObject).length() + 0 + String.valueOf(str).length()).append((String)localObject).append(str);
        }
        super.onCreate(paramBundle);
        localObject = getIntent();
        y = TextUtils.equals(((Intent)localObject).getAction(), "android.intent.action.MAIN");
        ewz.a("BabelHomeActivity.onCreate", (Intent)localObject);
        if (!isTaskRoot())
        {
          ezi.d("Babel_HomeActivity", "BabelHomeActivity was not the root task in onCreate", new Object[0]);
          if ((((Intent)localObject).hasCategory("android.intent.category.LAUNCHER")) && (y))
          {
            ezi.d("Babel_HomeActivity", "Finishing instead of re-launching from the launcher", new Object[0]);
            finish();
            return;
          }
        }
        if (aal.a(false, false, true) != 0)
        {
          boolean bool = y;
          paramBundle = new Intent(aal.oJ, GmsInstallActivity.class);
          paramBundle.putExtra("from_main_launcher", bool);
          paramBundle.setAction(((Intent)localObject).getAction());
          startActivity(paramBundle);
          finish();
          return;
        }
        if ((paramBundle == null) && (!TextUtils.equals(((Intent)localObject).getAction(), "com.google.android.apps.hangouts.phone.conversationlist")) && (d((Intent)localObject)) && (((Intent)localObject).getBooleanExtra("use_dialer_activity", true)))
        {
          startActivity(aal.d((Intent)localObject));
          finish();
          return;
        }
        if ((!ewz.c()) && (z())) {
          setRequestedOrientation(1);
        }
        BootReceiver.a(this);
        new ddu(this).execute(new Void[0]);
        if (paramBundle == null)
        {
          m();
          if (z())
          {
            i = aal.eV;
            v.b("setContentView");
            setContentView(i);
            v.c("setContentView");
            p = ((MainViewPager)findViewById(aen.hi));
            p.b(new ddv(this));
            p.b(z());
            I = ((TabHostEx)findViewById(16908306));
            if (I != null)
            {
              I.a(p);
              I.setup();
            }
            if (paramBundle == null)
            {
              if (!TextUtils.equals(((Intent)localObject).getAction(), "com.google.android.apps.hangouts.phone.conversationlist")) {
                break label801;
              }
              J = dd;
              aal.b((Intent)localObject);
            }
            ezi.c("Babel_HomeActivity", "[BabelHomeActivity.onCreate] setContentView called", new Object[0]);
            F = ((DrawerLayout)findViewById(aen.bJ));
            G = ((NavigationDrawerFragment)C_().a(aen.es));
            F.d(getResources().getColor(aal.dh));
            H = new diu(this, B);
            if ((paramBundle == null) && (((Intent)localObject).hasCategory("android.intent.category.LAUNCHER")) && (y)) {
              T = true;
            }
          }
        }
        else
        {
          C = paramBundle.getBoolean("handled_intent_for_action");
          D = paramBundle.getBoolean("is_logging_in");
          o = paramBundle.getBoolean("pending_login_from_intent");
          continue;
        }
        int i = aal.eW;
      }
      finally
      {
        new ddw(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        c("/onCreate");
        v.c("onCreate");
      }
      continue;
      label801:
      if (d((Intent)localObject)) {
        J = ed;
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(aal.hc, paramMenu);
    N = paramMenu;
    if (X.e()) {
      v();
    }
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy()
  {
    c("onDestroy");
    super.onDestroy();
    if ((q != null) && ((ViewGroup)findViewById(aen.dX) != null)) {
      q.a();
    }
    c("/onDestroy");
  }
  
  /* Error */
  protected void onNewIntent(Intent paramIntent)
  {
    // Byte code:
    //   0: ldc_w 1451
    //   3: invokestatic 812	com/google/android/apps/hangouts/phone/BabelHomeActivity:c	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: aload_1
    //   8: invokespecial 1453	cbr:onNewIntent	(Landroid/content/Intent;)V
    //   11: aload_1
    //   12: invokestatic 803	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   15: astore_2
    //   16: ldc_w 577
    //   19: new 835	java/lang/StringBuilder
    //   22: dup
    //   23: aload_2
    //   24: invokestatic 803	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   27: invokevirtual 806	java/lang/String:length	()I
    //   30: bipush 12
    //   32: iadd
    //   33: invokespecial 837	java/lang/StringBuilder:<init>	(I)V
    //   36: ldc_w 1455
    //   39: invokevirtual 843	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: aload_2
    //   43: invokevirtual 843	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: invokevirtual 946	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   49: iconst_0
    //   50: anewarray 581	java/lang/Object
    //   53: invokestatic 948	ezi:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   56: ldc_w 1457
    //   59: aload_1
    //   60: invokestatic 1285	ewz:a	(Ljava/lang/String;Landroid/content/Intent;)V
    //   63: aload_0
    //   64: iconst_0
    //   65: putfield 414	com/google/android/apps/hangouts/phone/BabelHomeActivity:C	Z
    //   68: aload_1
    //   69: invokevirtual 305	android/content/Intent:getAction	()Ljava/lang/String;
    //   72: ldc_w 1335
    //   75: invokestatic 410	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   78: ifeq +24 -> 102
    //   81: aload_0
    //   82: getstatic 671	com/google/android/apps/hangouts/views/MainViewPager:d	Lfcn;
    //   85: getfield 1378	fcn:d	Ljava/lang/String;
    //   88: putfield 1221	com/google/android/apps/hangouts/phone/BabelHomeActivity:J	Ljava/lang/String;
    //   91: aload_0
    //   92: invokevirtual 1354	com/google/android/apps/hangouts/phone/BabelHomeActivity:m	()V
    //   95: ldc_w 1459
    //   98: invokestatic 812	com/google/android/apps/hangouts/phone/BabelHomeActivity:c	(Ljava/lang/String;)V
    //   101: return
    //   102: aload_1
    //   103: invokestatic 562	com/google/android/apps/hangouts/phone/BabelHomeActivity:d	(Landroid/content/Intent;)Z
    //   106: ifeq -15 -> 91
    //   109: aload_0
    //   110: getstatic 1159	com/google/android/apps/hangouts/views/MainViewPager:e	Lfcn;
    //   113: getfield 1378	fcn:d	Ljava/lang/String;
    //   116: putfield 1221	com/google/android/apps/hangouts/phone/BabelHomeActivity:J	Ljava/lang/String;
    //   119: goto -28 -> 91
    //   122: astore_1
    //   123: ldc_w 1459
    //   126: invokestatic 812	com/google/android/apps/hangouts/phone/BabelHomeActivity:c	(Ljava/lang/String;)V
    //   129: aload_1
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	BabelHomeActivity
    //   0	131	1	paramIntent	Intent
    //   15	28	2	str	String
    // Exception table:
    //   from	to	target	type
    //   6	91	122	finally
    //   91	95	122	finally
    //   102	119	122	finally
  }
  
  public void onPause()
  {
    c("onPause");
    n = false;
    super.onPause();
    c("/onPause");
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    if (y())
    {
      paramMenu.clear();
      return false;
    }
    u();
    Object localObject;
    if (p != null)
    {
      localObject = p.i();
      if (localObject != MainViewPager.e) {
        break label91;
      }
      c(true);
    }
    for (;;)
    {
      localObject = paramMenu.findItem(aen.bw);
      if (localObject != null)
      {
        boolean bool = ezc.a();
        ((MenuItem)localObject).setVisible(bool).setEnabled(bool);
      }
      return super.onPrepareOptionsMenu(paramMenu);
      localObject = MainViewPager.d;
      break;
      label91:
      if (E != null) {
        E.a(false);
      }
    }
  }
  
  public void onResume()
  {
    v.b("onResume");
    c("onResume");
    try
    {
      super.onResume();
      n = true;
      int i = X.a();
      if (u) {
        new StringBuilder(29).append("onResume account: ").append(i);
      }
      if (dvd.e(i) != null)
      {
        c(false);
        d(false);
      }
      z = false;
      if (p != null) {
        n();
      }
      u();
      return;
    }
    finally
    {
      c("/onResume");
      if (S < 0L) {
        S = SystemClock.elapsedRealtime();
      }
      t();
      ((axy)A.a(axy.class)).a();
      v.c("onResume");
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("handled_intent_for_action", C);
    paramBundle.putBoolean("is_logging_in", D);
    paramBundle.putBoolean("pending_login_from_intent", o);
    z = true;
  }
  
  protected void onStart()
  {
    v.b("onStart");
    c("onStart");
    super.onStart();
    int i;
    if (X.e())
    {
      if ((p != null) && (!p.j())) {
        n();
      }
      v();
      if (q != null)
      {
        localObject = q;
        if (p == null) {
          break label173;
        }
        i = p.c();
      }
    }
    for (;;)
    {
      ((bwp)localObject).a(i);
      localObject = bff.e(this);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        bff.a(this, "");
      }
      try
      {
        startActivity(Intent.parseUri((String)localObject, 1));
        W.a(X.a()).a(1869).d();
        Y.a(Z);
        c("/onStart");
        v.c("onStart");
        return;
        label173:
        i = 0;
      }
      catch (URISyntaxException localURISyntaxException)
      {
        localObject = String.valueOf(localObject);
        if (((String)localObject).length() != 0) {}
        for (localObject = "Failed to parse refererr url: ".concat((String)localObject);; localObject = new String("Failed to parse refererr url: "))
        {
          ezi.d("Babel_HomeActivity", (String)localObject, new Object[0]);
          break;
        }
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        localObject = String.valueOf(localObject);
        if (((String)localObject).length() == 0) {}
      }
    }
    for (Object localObject = "Failed to find activity for refererr url: ".concat((String)localObject);; localObject = new String("Failed to find activity for refererr url: "))
    {
      ezi.d("Babel_HomeActivity", (String)localObject, new Object[0]);
      break;
    }
  }
  
  protected void onStop()
  {
    c("onStop");
    super.onStop();
    Y.b(Z);
    c("/onStop");
  }
  
  public void p()
  {
    fcn localfcn;
    if (p != null)
    {
      localfcn = p.i();
      if (localfcn == null) {
        break label37;
      }
    }
    label37:
    for (int i = a;; i = StressMode.eL)
    {
      setTitle(i);
      return;
      localfcn = MainViewPager.d;
      break;
    }
  }
  
  public void q()
  {
    W.a(X.a()).a(1628).d();
    ezi.c("Babel_HomeActivity", "Adding a new account", new Object[0]);
    aal.a(new ddr(this));
  }
  
  public void r()
  {
    if (p != null) {}
    for (boolean bool = true;; bool = false)
    {
      aen.b(bool, "View pager is null");
      p.a(MainViewPager.e);
      return;
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    m.b(paramCharSequence);
  }
  
  public void u_()
  {
    w();
    if ((q != null) && ((ViewGroup)findViewById(aen.dX) != null)) {
      q.a();
    }
  }
  
  public String v_()
  {
    return K;
  }
  
  public void w_()
  {
    w();
  }
  
  public void x_()
  {
    x();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.BabelHomeActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */