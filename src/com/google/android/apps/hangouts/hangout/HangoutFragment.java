package com.google.android.apps.hangouts.hangout;

import aal;
import aen;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.Toast;
import awm;
import ba;
import bfd;
import cfc;
import cfn;
import cfx;
import cgc;
import cge;
import cgi;
import cgj;
import cgl;
import cgm;
import cgn;
import cgo;
import cgs;
import cgw;
import chu;
import cjg;
import cmu;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.libraries.quantum.snackbar.Snackbar;
import cyx;
import dcj;
import dck;
import dco;
import dml;
import dvd;
import dvp;
import eap;
import ewz;
import ezi;
import gvj;
import haw;
import hba;
import hbs;
import hje;
import hjg;
import hjk;
import hjq;
import hjz;
import hkd;
import hke;
import hks;
import hlb;
import hpu;
import ilh;
import img;
import imx;
import inz;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public final class HangoutFragment
  extends img
{
  public static final int a = aen.hg;
  private static final boolean as;
  private static final int at;
  private chu aA;
  private ParticipantTrayView aB;
  private FocusedParticipantView aC;
  private cfn aD;
  private ProximityCoverView aE;
  private final cgn aF = new cgn(this);
  private eap aG = new cgo(this);
  private boolean aH;
  private Menu aI;
  private boolean aJ;
  private cgc aK;
  private int aL;
  private boolean aM;
  public ViewGroup aj;
  public bfd ak;
  public int al = 0;
  public hjq am;
  public boolean an;
  public boolean ao;
  public boolean ap;
  public boolean aq;
  public int ar;
  private hpu au;
  private cgs av;
  private boolean aw;
  private cgl ax;
  private final ArrayList<cgm> ay = new ArrayList();
  private boolean az;
  public dck b;
  public dcj c;
  public HangoutActivity d;
  public cgs e;
  public final cfc f = cfc.a();
  public AccessibilityManager g;
  public boolean h;
  public Button i;
  
  static
  {
    imx localimx = ezi.g;
    as = false;
    at = aen.hf;
  }
  
  private void a(String paramString)
  {
    if (ezi.a("Babel_calls", 3)) {
      ezi.a("Babel_calls", String.format("Lifecycle HangoutFragment.%s(this=%s) activity=%s hangoutRequest=%s", new Object[] { paramString, this, d, av }), new Object[0]);
    }
  }
  
  public static boolean b(int paramInt)
  {
    return (paramInt == 1004) || (paramInt == 30) || (paramInt == 1005) || (paramInt == 1011) || (paramInt == 1010);
  }
  
  private int c(boolean paramBoolean)
  {
    boolean bool1 = getActivity().getIntent().getBooleanExtra("hangout_auto_join", false);
    Object localObject1;
    if (!f.m())
    {
      if (aw)
      {
        localObject1 = d;
        localObject2 = e;
        localObject1 = ((Context)localObject1).getSharedPreferences(cfx.class.getName(), 0);
        if ((((SharedPreferences)localObject1).getBoolean("HISTORY_HAS_EVENT", false)) && (((cgs)localObject2).equals(cgs.a((SharedPreferences)localObject1)))) {
          if (localObject1 == null) {
            break label139;
          }
        }
        label139:
        for (localObject1 = new cfx(((SharedPreferences)localObject1).getInt("HISTORY_ERROR", 1004), ((SharedPreferences)localObject1).getBoolean("HISTORY_EXIT_REPORTED", false));; localObject1 = null)
        {
          if (localObject1 != null) {
            break label145;
          }
          d.finish();
          return 4;
          localObject1 = null;
          break;
        }
        label145:
        j = ((cfx)localObject1).a();
        if ((((cfx)localObject1).b()) || (b(j)))
        {
          if (ezi.a("Babel_calls", 3)) {
            ezi.a("Babel_calls", 38 + "Hangout previously exited: " + j, new Object[0]);
          }
          d.n();
          return 4;
        }
        a(null, j);
        cfx.a(d, e);
        return 3;
      }
      localObject1 = dvd.a(av.a(), null);
      if (TextUtils.isEmpty(((awm)binder.a(awm.class)).e(((bfd)localObject1).g())))
      {
        dvd.c((bfd)localObject1);
        a(null, 1019);
        return 3;
      }
      localObject1 = d.getIntent();
      Object localObject2 = (ArrayList)((Intent)localObject1).getSerializableExtra("hangout_invitee_users");
      boolean bool2 = ((Intent)localObject1).getBooleanExtra("hangout_is_joining_non_empty_hangout", false);
      cyx localcyx = (cyx)((Intent)localObject1).getParcelableExtra("pstn_caller");
      int j = ((Intent)localObject1).getIntExtra("hangout_start_source", 51);
      int k = ((Intent)localObject1).getIntExtra("hangout_pstn_call", 2);
      long l = ((Intent)localObject1).getLongExtra("extra_hangout_start_time", 0L);
      f.a(av.r(), paramBoolean, (List)localObject2, bool2, localcyx, j, aL, true, l, null, null);
      localObject2 = f.r();
      if (((TelephonyManager)aal.oJ.getSystemService("phone")).getCallState() == 2)
      {
        a(null, 1013);
        a(3);
        ((cgw)localObject2).b(1013);
      }
      while (f.r() == null)
      {
        return 3;
        f.w();
        if ((aL == 3) && (c.a("android.permission.CAMERA"))) {
          a();
        }
        if (((Intent)localObject1).getBooleanExtra("hangout_mute_microphone", false)) {
          f.a(true);
        }
        if (((Intent)localObject1).getBooleanExtra("hangout_mute_playback", false)) {
          f.b(true);
        }
        ((hba)binder.a(hba.class)).a(((hpu)binder.a(hpu.class)).a()).a();
        ((cgw)localObject2).a(k);
        if (ap)
        {
          f.a(true);
          ap = false;
        }
        aw = true;
      }
      if ((bool1) || (paramBoolean))
      {
        f.u();
        if (f.r() == null) {
          return 3;
        }
        return 2;
      }
      return 1;
    }
    if (f.r().a((HangoutActivity)getActivity()))
    {
      ezi.c("Babel_calls", "Continuing call where previous activity left off.", new Object[0]);
      e = f.r().e();
      aw = true;
      if ((bool1) || (f.l())) {
        return 2;
      }
      return 1;
    }
    if (as)
    {
      localObject1 = String.valueOf(f.r().e());
      new StringBuilder(String.valueOf(localObject1).length() + 16).append("Already joined: ").append((String)localObject1);
    }
    av.s();
    e(StressMode.dE);
    return 3;
  }
  
  private static String c(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      String str = String.valueOf(String.valueOf(paramInt));
      if (str.length() != 0) {
        return "UNKNOWN_".concat(str);
      }
      break;
    case 0: 
      return "START";
    case 1: 
      return "GREEN_ROOM";
    case 2: 
      return "HANGOUT";
    case 3: 
      return "ERROR_DIALOG";
    case 4: 
      return "ACTIVITY_FINISHED";
    case 5: 
      return "WAITING_FOR_RESULT";
    }
    return new String("UNKNOWN_");
  }
  
  private static void d(int paramInt)
  {
    int j = 1586;
    switch (paramInt)
    {
    default: 
      hbs.a(37 + "Call in unknown UI state: " + paramInt);
      paramInt = j;
    }
    for (;;)
    {
      aal.c(paramInt);
      return;
      paramInt = 1587;
      continue;
      paramInt = 1588;
      continue;
      paramInt = 1589;
      continue;
      paramInt = 1590;
      continue;
      paramInt = 2389;
    }
  }
  
  private void e(int paramInt)
  {
    String str = getResources().getString(paramInt);
    if (ezi.a("Babel_calls", 3)) {
      ezi.a("Babel_calls", String.format(Locale.US, "showError:%s (%s)", new Object[] { str, d }), new Object[0]);
    }
    cge.a(str, 0).a(getFragmentManager(), null);
  }
  
  public void a()
  {
    Object localObject;
    ba localba;
    boolean bool1;
    if (f.m())
    {
      ezi.c("Babel_calls", "Creating camera capturer", new Object[0]);
      localObject = aal.h();
      localba = getActivity();
      int j = ((bfd)localObject).g();
      boolean bool2 = dvp.X.b(j);
      if (Build.VERSION.SDK_INT < 22) {
        break label162;
      }
      bool1 = hjg.a(localba);
      if ((!gvj.a(localba.getContentResolver(), "babel_hangout_enable_camera2", bool1)) || (Build.VERSION.SDK_INT < 21)) {
        break label167;
      }
      localObject = new hjg(localba, bool2);
      label96:
      ((hjk)localObject).k();
      ((hjk)localObject).a(true);
      if (f.f() != null) {
        break label181;
      }
      ezi.e("Babel_calls", "Call was not created before initiating capturer", new Object[0]);
    }
    for (;;)
    {
      a(true);
      if (aB.e() != null) {
        f.k().a(aB.e());
      }
      return;
      label162:
      bool1 = false;
      break;
      label167:
      localObject = new hje(localba);
      break label96;
      label181:
      f.f().a((hlb)localObject);
    }
  }
  
  public void a(int paramInt)
  {
    ezi.c("Babel_calls", String.format(Locale.US, "changeUiState: %s->%s", new Object[] { c(al), c(paramInt) }), new Object[0]);
    if (paramInt == al) {
      return;
    }
    al = paramInt;
    d(paramInt);
    if (paramInt == 2)
    {
      hbs.a(Integer.valueOf(aF.c()), Integer.valueOf(2));
      if (e.l() != 2) {
        r();
      }
    }
    Iterator localIterator = ay.iterator();
    while (localIterator.hasNext()) {
      ((cgm)localIterator.next()).a(paramInt);
    }
    aD.a(paramInt);
  }
  
  public void a(hke paramhke, Set<hkd> paramSet)
  {
    boolean bool = true;
    int j = 0;
    MenuItem localMenuItem;
    int k;
    if ((aI != null) && (paramSet != null))
    {
      localMenuItem = aI.findItem(aen.ax);
      if (localMenuItem != null)
      {
        if (paramSet.size() <= 1) {
          break label166;
        }
        localMenuItem.setVisible(bool);
        k = StressMode.ft;
        switch (cgk.b[paramhke.ordinal()])
        {
        default: 
          label108:
          if (j != 0)
          {
            localMenuItem.setIcon(j);
            paramSet = localMenuItem.getIcon();
            if ((paramhke != hke.e) && (paramhke != hke.f)) {
              break label220;
            }
          }
          break;
        }
      }
    }
    label166:
    label220:
    for (j = 127;; j = 255)
    {
      paramSet.setAlpha(j);
      localMenuItem.setTitle(getText(k));
      return;
      bool = false;
      break;
      j = R.drawable.bE;
      k = StressMode.fq;
      break label108;
      j = R.drawable.ch;
      k = StressMode.fs;
      break label108;
      j = R.drawable.cd;
      k = StressMode.fr;
      break label108;
      j = R.drawable.bX;
      k = StressMode.ft;
      break label108;
    }
  }
  
  public void a(String paramString, int paramInt)
  {
    if (aM)
    {
      cge.a(paramString, paramInt).a(getFragmentManager(), null);
      return;
    }
    Toast.makeText(getActivity(), cge.a(getContext(), paramString, paramInt), 1).show();
    ((HangoutActivity)getActivity()).n();
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    if (h == paramBoolean) {
      return;
    }
    if (paramBoolean)
    {
      Intent localIntent = new Intent(aal.oJ, InCallDialpadActivity.class);
      localIntent.putExtra("extra_endpoint_jid", paramString);
      startActivityForResult(localIntent, 1);
    }
    h = paramBoolean;
    v();
    if (h) {}
    for (int j = 1582;; j = 1583)
    {
      aal.c(j);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (f.r() != null) {
      f.r().a(paramBoolean);
    }
  }
  
  public void b()
  {
    boolean bool2 = true;
    MenuItem localMenuItem;
    if ((aI != null) && (isAdded()))
    {
      localMenuItem = aI.findItem(aen.dE);
      int j = aF.h();
      if (j == 0) {
        break label82;
      }
      bool1 = true;
      localMenuItem.setVisible(bool1);
      if (j != 0) {
        if (j != 2) {
          break label87;
        }
      }
    }
    label82:
    label87:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localMenuItem.setEnabled(bool1);
      d();
      c();
      return;
      bool1 = false;
      break;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    hbs.a("Expected condition to be true", f.n());
    if ((paramBoolean) || (!aJ)) {
      aE.a();
    }
    if (!aJ)
    {
      v();
      aJ = true;
    }
  }
  
  public void c()
  {
    hjk localhjk1;
    MenuItem localMenuItem;
    boolean bool;
    int k;
    hjk localhjk2;
    int j;
    if ((aI != null) && (isAdded()))
    {
      localhjk1 = f.k();
      localMenuItem = aI.findItem(aen.cP);
      if (ar != 0) {
        break label212;
      }
      bool = true;
      localMenuItem.setVisible(bool);
      if (localMenuItem.isVisible()) {
        if (localMenuItem.isEnabled())
        {
          k = StressMode.dY;
          localhjk2 = f.k();
          j = k;
          if (localhjk2 != null) {
            switch (localhjk2.h())
            {
            default: 
              j = localhjk2.h();
              ezi.d("Babel_calls", 32 + "Unknown camera type: " + j, new Object[0]);
              j = k;
            }
          }
        }
      }
    }
    for (;;)
    {
      localMenuItem.setTitle(getString(j));
      k = R.drawable.bL;
      j = k;
      if (localhjk1 != null)
      {
        j = k;
        if (localhjk1.h() == 2) {
          j = R.drawable.bM;
        }
      }
      localMenuItem.setIcon(j);
      return;
      label212:
      bool = false;
      break;
      j = k;
      if (localhjk2.b())
      {
        j = StressMode.dZ;
        continue;
        j = k;
        if (localhjk2.a()) {
          j = StressMode.ea;
        }
      }
    }
  }
  
  public void d()
  {
    hjz localhjz = f.j();
    if (localhjz != null) {
      a(localhjz.c(), localhjz.d());
    }
  }
  
  public void e()
  {
    boolean bool1;
    if ((!aH) || (!ao))
    {
      bool1 = aH;
      boolean bool2 = ao;
      ezi.a("Babel_calls", 101 + "maybeDoStartup: HangoutFragment not ready to start mOnStartComplete=" + bool1 + " mPermissionsRequested=" + bool2, new Object[0]);
      return;
    }
    a("maybeDoStartup.enter");
    if (!c.a("android.permission.RECORD_AUDIO"))
    {
      e(StressMode.ed);
      a(3);
    }
    for (;;)
    {
      a("maybeDoStartup.done");
      return;
      ax = new cgl(this);
      f.a(ax);
      Object localObject = f.k();
      if (localObject != null)
      {
        if (f.r() != null)
        {
          bool1 = f.r().h();
          ((hjk)localObject).a(bool1);
        }
      }
      else {
        if (!an) {
          break label250;
        }
      }
      label250:
      for (int j = 5;; j = c(false))
      {
        ezi.c("Babel_calls", String.format(Locale.US, "maybeDoStartup.changeUiState: %s->%s", new Object[] { c(al), c(j) }), new Object[0]);
        al = j;
        d(j);
        if (al != 4) {
          break label259;
        }
        a("maybeDoStartup.finish");
        return;
        bool1 = false;
        break;
      }
      label259:
      if (f.f() != null) {
        am = new hjq(f.f());
      }
      localObject = ay.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((cgm)((Iterator)localObject).next()).a(aF);
      }
      az = true;
      aD.a(aF.c());
      aK.a(d.g());
    }
  }
  
  boolean f()
  {
    if (h)
    {
      a(null, false);
      return true;
    }
    if (al == 1)
    {
      f.e();
      return true;
    }
    return false;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    aA.b();
    aM = true;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 0) {
      if (paramInt2 == -1)
      {
        a(c(false));
        an = false;
      }
    }
    while (paramInt1 != 1)
    {
      return;
      d.n();
      return;
    }
    h = false;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    d = ((HangoutActivity)paramActivity);
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    au = ((hpu)binder.a(hpu.class));
    b = ((dck)binder.a(dck.class));
    c = ((dcj)binder.a(dcj.class));
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    Iterator localIterator = ay.iterator();
    while (localIterator.hasNext()) {
      ((cgm)localIterator.next()).onConfigurationChanged(paramConfiguration);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    av = d.m();
    if (ezi.a("Babel_calls", 3)) {
      ezi.a("Babel_calls", String.format(Locale.US, "HangoutFragment.onCreate: this=%s activity=%s hangoutRequest=%s", new Object[] { this, d, av }), new Object[0]);
    }
    int j;
    if (paramBundle == null)
    {
      e = av.r();
      ak = dvd.e(au.a());
      setHasOptionsMenu(true);
      g = ((AccessibilityManager)d.getSystemService("accessibility"));
      if (av.l() == 2) {
        break label359;
      }
      j = 1;
      label131:
      if (d.getIntent().getIntExtra("hangout_pstn_call", 2) != 1) {
        break label364;
      }
      aL = 1;
      label154:
      paramBundle = new ArrayList();
      if (!c.a("android.permission.RECORD_AUDIO")) {
        paramBundle.add("android.permission.RECORD_AUDIO");
      }
      if ((!c.a("android.permission.CAMERA")) && (aL == 3)) {
        paramBundle.add("android.permission.CAMERA");
      }
      if (paramBundle.size() <= 0) {
        break label384;
      }
      b.a(at, new cgi(this));
      b.a(new dco(at, 2656), paramBundle);
    }
    for (;;)
    {
      if (!c.a("android.permission.CAMERA")) {
        b.a(a, new cgj(this));
      }
      return;
      e = ((cgs)paramBundle.getParcelable("HangoutFragment_current_request"));
      an = paramBundle.getBoolean("HangoutFragment_waiting_for_result");
      aw = paramBundle.getBoolean("HangoutFragment_hangout_initiated", false);
      ap = paramBundle.getBoolean("HangoutFragment_audio_muted_awaiting_result");
      break;
      label359:
      j = 0;
      break label131;
      label364:
      if (j != 0)
      {
        aL = 3;
        break label154;
      }
      aL = 2;
      break label154;
      label384:
      ao = true;
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool2 = false;
    paramMenuInflater.inflate(aal.ha, paramMenu);
    aI = paramMenu;
    c();
    paramMenu = aI.findItem(aen.ax);
    paramMenuInflater = BluetoothAdapter.getDefaultAdapter();
    if ((paramMenuInflater != null) && (paramMenuInflater.getProfileConnectionState(1) == 2)) {}
    for (int j = 1;; j = 0)
    {
      paramMenuInflater = f.j();
      boolean bool1;
      if (j == 0)
      {
        bool1 = bool2;
        if (paramMenuInflater != null)
        {
          bool1 = bool2;
          if (!paramMenuInflater.l()) {}
        }
      }
      else
      {
        bool1 = true;
      }
      paramMenu.setVisible(bool1);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)paramLayoutInflater.inflate(aal.fM, null);
    aA = new chu(this, paramViewGroup);
    ((cmu)ilh.a(d, cmu.class)).a((Snackbar)paramViewGroup.findViewById(aen.cZ));
    aD = new cfn(d, lifecycle);
    lifecycle.a((DebugOverlayTextView)paramViewGroup.findViewById(aen.cB));
    aB = ((ParticipantTrayView)paramViewGroup.findViewById(aen.cX));
    aB.a(aA);
    aC = ((FocusedParticipantView)paramViewGroup.findViewById(aen.cF));
    aC.a(aA, aB);
    aB.a(aC);
    aE = ((ProximityCoverView)paramViewGroup.findViewById(aen.fc));
    h = false;
    paramBundle = (BroadcastOverlayView)paramViewGroup.findViewById(aen.cy);
    i = ((Button)paramViewGroup.findViewById(aen.dJ));
    aj = ((ViewGroup)paramViewGroup.findViewById(aen.dK));
    HangoutActivity localHangoutActivity = d;
    bfd localbfd = ak;
    String str = av.e();
    paramLayoutInflater = f.r();
    if (paramLayoutInflater == null)
    {
      paramLayoutInflater = av;
      if (!paramLayoutInflater.q()) {
        break label348;
      }
    }
    label348:
    for (paramLayoutInflater = paramLayoutInflater.g();; paramLayoutInflater = null)
    {
      aK = new cgc(localHangoutActivity, localbfd, str, paramLayoutInflater);
      ay.add(paramBundle);
      ay.add(aC);
      ay.add(aB);
      ay.add(aA);
      ay.add(aK);
      return paramViewGroup;
      paramLayoutInflater = paramLayoutInflater.d();
      break;
    }
  }
  
  public void onDestroy()
  {
    a("onDestroy.enter");
    super.onDestroy();
    a("onDestroy.done");
  }
  
  public void onDestroyOptionsMenu()
  {
    super.onDestroyOptionsMenu();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == aen.dE)
    {
      aal.c(889);
      aA.e();
    }
    for (;;)
    {
      return false;
      if (paramMenuItem.getItemId() == aen.ax) {
        aA.g();
      } else if (paramMenuItem.getItemId() == aen.cP) {
        aA.f();
      }
    }
  }
  
  public void onPause()
  {
    a("onPause.enter");
    super.onPause();
    aE.b();
    aE.d();
    aE.e();
    a("onPause.done");
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    b();
  }
  
  public void onResume()
  {
    a("onResume.enter");
    super.onResume();
    if (!cjg.a(getContext()))
    {
      ezi.c("Babel_calls", "Using legacy proximity.", new Object[0]);
      aE.a(aA);
      aE.a(aA);
    }
    for (;;)
    {
      if (f.n()) {
        b(true);
      }
      a("onResume.done");
      return;
      ezi.c("Babel_calls", "Using service proximity.", new Object[0]);
      f.b();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("HangoutFragment_current_request", e);
    paramBundle.putBoolean("HangoutFragment_waiting_for_result", an);
    paramBundle.putBoolean("HangoutFragment_hangout_initiated", aw);
    paramBundle.putBoolean("HangoutFragment_audio_muted_awaiting_result", ap);
    aM = false;
  }
  
  public void onStart()
  {
    super.onStart();
    a("onStart.enter");
    aH = true;
    e();
    a("onStart.done");
    RealTimeChatService.a(aG);
  }
  
  public void onStop()
  {
    a("onStop.enter");
    super.onStop();
    Object localObject = f.k();
    if (localObject != null)
    {
      a(((hjk)localObject).g());
      ((hjk)localObject).a(false);
    }
    RealTimeChatService.b(aG);
    if (ax != null)
    {
      f.b(ax);
      ax = null;
    }
    if (al == 4)
    {
      a("onStop.finish");
      return;
    }
    if (az)
    {
      localObject = ay.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((cgm)((Iterator)localObject).next()).r_();
      }
      a("onStop.stopped");
    }
    if (am != null)
    {
      am.a();
      am = null;
    }
    a("onStop.done");
  }
  
  public void q()
  {
    aw = false;
    an = false;
    int j = c(true);
    if (am != null)
    {
      am.a();
      am = new hjq(f.f());
    }
    if (c.a("android.permission.CAMERA")) {
      a();
    }
    a(j);
  }
  
  public void r()
  {
    d.getWindow().addFlags(128);
  }
  
  cgs s()
  {
    return e;
  }
  
  String t()
  {
    return s().e();
  }
  
  public int u()
  {
    if ((al == 2) && (f.r() != null)) {
      return f.r().J();
    }
    return d.getIntent().getIntExtra("hangout_pstn_call", 2);
  }
  
  public void v()
  {
    if (ewz.c()) {
      return;
    }
    if (u() == 1) {}
    for (int j = 1; (j != 0) || (h); j = 0)
    {
      d.setRequestedOrientation(1);
      return;
    }
    d.setRequestedOrientation(-1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.HangoutFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */