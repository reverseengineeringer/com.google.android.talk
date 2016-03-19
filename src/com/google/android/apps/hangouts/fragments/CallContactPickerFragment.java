package com.google.android.apps.hangouts.fragments;

import aal;
import aen;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import ba;
import bg;
import bwp;
import bwq;
import bxz;
import byw;
import byx;
import byy;
import byz;
import bz;
import bza;
import bzb;
import bzc;
import bzd;
import bze;
import bzf;
import bzg;
import bzq;
import bzv;
import cbp;
import cda;
import cdb;
import cdi;
import cdl;
import cec;
import ced;
import com.google.android.apps.hangouts.hangout.StressMode;
import dvd;
import dvv;
import ezi;
import fbd;
import hbs;
import hpu;
import ilh;
import java.util.List;

public class CallContactPickerFragment
  extends cbp
  implements bwq, bxz, cdl, ced
{
  public cdi a;
  private FrameLayout aj;
  private FrameLayout ak;
  private FrameLayout al;
  private ImageView am;
  private cdb an;
  private int ao = -1;
  private boolean ap;
  private boolean aq;
  private boolean ar;
  private View.OnClickListener as;
  public cec b;
  public View c;
  public View d;
  public int e = -1;
  public bzg f;
  public bwp g;
  private hpu h;
  private EditText i;
  
  private void a(int paramInt1, int paramInt2)
  {
    boolean bool = true;
    if (paramInt1 != ao) {
      switch (paramInt1)
      {
      }
    }
    for (;;)
    {
      ao = paramInt1;
      return;
      ak.setVisibility(8);
      aj.setVisibility(0);
      a(false);
      continue;
      if (paramInt2 != 1) {}
      for (;;)
      {
        hbs.a("Expected condition to be true", bool);
        ak.setVisibility(0);
        aj.setVisibility(8);
        a(false);
        break;
        bool = false;
      }
      ak.setVisibility(8);
      aj.setVisibility(8);
      a(true);
    }
  }
  
  private static int b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      ezi.e("Babel", "Unsupported call action type for CallContactPickerFragment!", new Object[0]);
      return -1;
    case 1: 
      return 2;
    }
    return 3;
  }
  
  private void r()
  {
    boolean bool1 = f.h();
    boolean bool2 = PreferenceManager.getDefaultSharedPreferences(getActivity()).getBoolean("dialpad_visible", false);
    if ((bool1) && (bool2))
    {
      a(1, false);
      if (g == null)
      {
        c.setVisibility(8);
        d.setVisibility(0);
        return;
      }
      g.d();
      return;
    }
    a(0, false);
  }
  
  private void s()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
    if (e == 1) {}
    for (boolean bool = true;; bool = false)
    {
      localEditor.putBoolean("dialpad_visible", bool).apply();
      a(-1, false);
      a(-1);
      if (g != null) {
        break;
      }
      c.setVisibility(0);
      return;
    }
    g.a(true);
  }
  
  public int a()
  {
    if (e == 1) {
      return 1;
    }
    return 2;
  }
  
  public void a(int paramInt)
  {
    a(paramInt, e);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    int j = 1;
    if (paramInt == e) {
      return;
    }
    switch (paramInt)
    {
    default: 
      e = paramInt;
      return;
    case 0: 
      if (g == null)
      {
        c.setVisibility(0);
        d.setVisibility(8);
      }
      for (;;)
      {
        if (al.getVisibility() != 8)
        {
          al.setVisibility(8);
          if (e != -1) {
            al.sendAccessibilityEvent(32);
          }
        }
        i.setSelection(i.getText().length());
        i.setVisibility(0);
        if (i.length() == 0) {
          j = 0;
        }
        a(j, 0);
        if (paramBoolean) {
          al.startAnimation(AnimationUtils.loadAnimation(getActivity(), aal.cr));
        }
        f.x_();
        break;
        g.e();
      }
    case 1: 
      if (g == null)
      {
        c.setVisibility(8);
        d.setVisibility(0);
        label222:
        if (al.getVisibility() != 0)
        {
          al.setVisibility(0);
          if (e != -1) {
            al.sendAccessibilityEvent(32);
          }
        }
        if (paramBoolean) {
          al.startAnimation(AnimationUtils.loadAnimation(getActivity(), aal.cq));
        }
        if (!b.c()) {
          break label336;
        }
        a(2);
      }
      for (;;)
      {
        i.setVisibility(8);
        f.w_();
        aen.b(getActivity().getCurrentFocus());
        break;
        g.c();
        break label222;
        label336:
        a(1);
      }
    }
    if (g == null)
    {
      c.setVisibility(0);
      d.setVisibility(8);
    }
    for (;;)
    {
      if (al.getVisibility() != 8)
      {
        al.setVisibility(8);
        if (e != -1) {
          al.sendAccessibilityEvent(32);
        }
      }
      i.setVisibility(8);
      if (!paramBoolean) {
        break;
      }
      al.startAnimation(AnimationUtils.loadAnimation(getActivity(), aal.cr));
      break;
      g.e();
    }
  }
  
  public void a(bzg parambzg)
  {
    f = parambzg;
  }
  
  public void a(fbd paramfbd)
  {
    if (f != null)
    {
      i.setText("");
      Object localObject = paramfbd.a();
      int j = paramfbd.h();
      String str1 = paramfbd.e();
      String str2 = paramfbd.f();
      String str3 = paramfbd.g();
      paramfbd = paramfbd.c();
      localObject = (bzv)((bzq)localObject).f().get(0);
      paramfbd = new dvv(b(f.a()), a, paramfbd, j, str1, str2, str3, 61);
      if (TextUtils.isEmpty(paramfbd.c())) {
        Toast.makeText(context, StressMode.rS, 0).show();
      }
    }
    else
    {
      return;
    }
    f.a(paramfbd);
  }
  
  public void a(String paramString)
  {
    i.setText(paramString);
    i.setSelection(i.getText().length());
  }
  
  public void a(boolean paramBoolean)
  {
    if (am.getVisibility() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      if (paramBoolean != bool)
      {
        if (!paramBoolean) {
          break;
        }
        am.setVisibility(0);
        am.startAnimation(AnimationUtils.loadAnimation(getActivity(), aal.co));
      }
      return;
    }
    am.setVisibility(8);
    am.startAnimation(AnimationUtils.loadAnimation(getActivity(), aal.cp));
  }
  
  public void b()
  {
    String str = f.v_();
    if (TextUtils.equals(str, "com.google.android.apps.hangouts.phone.dialpad"))
    {
      a(1, false);
      str = f.d();
      if (str != null)
      {
        b.a(str);
        f.e();
      }
    }
    for (;;)
    {
      f.c();
      return;
      if (TextUtils.equals(str, "com.google.android.apps.hangouts.phone.recentcalls")) {
        a(0, false);
      }
    }
  }
  
  public void b(String paramString)
  {
    a(0, true);
    paramString = new dvv(b(f.a()), paramString, null, 0, null, null, null, 61);
    f.a(paramString);
    aal.a(dvd.e(h.a()), 858);
  }
  
  public void b(boolean paramBoolean)
  {
    d.setEnabled(paramBoolean);
  }
  
  public void c()
  {
    if (!aq)
    {
      ar = true;
      return;
    }
    ar = false;
    if (a.f()) {}
    for (int j = 1;; j = 0)
    {
      if (an.f()) {
        j = 1;
      }
      if (j == 0) {
        break;
      }
      if ((!ap) && (i.getText().length() > 0)) {
        a.a(i.getText());
      }
      for (;;)
      {
        ap = true;
        return;
        i.setText("");
        b.d();
        an.r();
        a.r();
        a(0, false);
        a(0);
      }
    }
  }
  
  public boolean d()
  {
    if (e == 1)
    {
      a(0, true);
      if (i.length() == 0) {
        a(0);
      }
      return true;
    }
    if (e == 2)
    {
      a(0, false);
      return true;
    }
    return false;
  }
  
  public void e()
  {
    a(1);
  }
  
  public void f()
  {
    if (e == 1) {
      a(0, true);
    }
  }
  
  protected boolean isEmpty()
  {
    return false;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 102) {
      an.c();
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    h = ((hpu)binder.a(hpu.class));
    if (getUserVisibleHint()) {
      aal.a(dvd.e(h.a()), 854);
    }
    g = ((bwp)binder.b(bwp.class));
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if ((al.getVisibility() == 0) && (getResourcesgetConfigurationorientation == 2))
    {
      i.setVisibility(8);
      return;
    }
    i.setVisibility(0);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    boolean bool2 = false;
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    setHasOptionsMenu(true);
    paramLayoutInflater = paramLayoutInflater.inflate(aal.fb, paramViewGroup, false);
    i = ((EditText)paramLayoutInflater.findViewById(aen.bb));
    i.setCustomSelectionActionModeCallback(new byw(this));
    i.addTextChangedListener(new byy(this));
    i.setInputType(i.getInputType() | 0x80000);
    i.setOnClickListener(new byz(this));
    paramLayoutInflater.getViewTreeObserver().addOnGlobalLayoutListener(new bza(this, paramLayoutInflater));
    c = paramLayoutInflater.findViewById(aen.dI);
    paramViewGroup = new bzb(this);
    d = paramLayoutInflater.findViewById(aen.bC);
    paramBundle = new bzc(this);
    d.setOnLongClickListener(new bzd(this));
    int j;
    label370:
    label380:
    boolean bool1;
    if (g != null)
    {
      c.setVisibility(8);
      d.setVisibility(8);
      as = new bze(this);
      g.a(as);
      g.c(paramBundle);
      g.a(this);
      aj = ((FrameLayout)paramLayoutInflater.findViewById(aen.dV));
      ak = ((FrameLayout)paramLayoutInflater.findViewById(aen.fC));
      al = ((FrameLayout)paramLayoutInflater.findViewById(aen.eR));
      al.setAccessibilityDelegate(new bzf(this));
      a = ((cdi)getChildFragmentManager().a(cdi.class.getName()));
      an = ((cdb)getChildFragmentManager().a(cdb.class.getName()));
      b = ((cec)getChildFragmentManager().a(cec.class.getName()));
      if (a != null) {
        break label618;
      }
      j = 1;
      if (an != null) {
        break label624;
      }
      k = 1;
      if (j != k) {
        break label630;
      }
      bool1 = true;
      label390:
      hbs.a("Expected condition to be true", bool1);
      if (a != null) {
        break label636;
      }
      j = 1;
      label407:
      if (b != null) {
        break label642;
      }
    }
    label618:
    label624:
    label630:
    label636:
    label642:
    for (int k = 1;; k = 0)
    {
      bool1 = bool2;
      if (j == k) {
        bool1 = true;
      }
      hbs.a("Expected condition to be true", bool1);
      if (a == null)
      {
        a = new cdi();
        an = new cdb();
        b = new cec();
        getChildFragmentManager().a().a(aen.dV, a, cdi.class.getName()).a(aen.fC, an, cdb.class.getName()).a(aen.eR, b, cec.class.getName()).b();
      }
      am = ((ImageView)paramLayoutInflater.findViewById(aen.bH));
      am.setOnClickListener(new byx(this));
      aq = true;
      if (ar) {
        c();
      }
      a.a(this);
      b.a(this);
      return paramLayoutInflater;
      c.setOnClickListener(paramViewGroup);
      d.setOnClickListener(paramBundle);
      break;
      j = 0;
      break label370;
      k = 0;
      break label380;
      bool1 = false;
      break label390;
      j = 0;
      break label407;
    }
  }
  
  public void onDestroy()
  {
    f.x_();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (as != null) {
      g.b(as);
    }
    aq = false;
  }
  
  public void onHiddenChanged(boolean paramBoolean)
  {
    super.onHiddenChanged(paramBoolean);
    if (paramBoolean)
    {
      s();
      return;
    }
    r();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 1)
    {
      cda.a(getResources()).a(getFragmentManager());
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    super.onPause();
    s();
  }
  
  public void onResume()
  {
    super.onResume();
    ezi.a("Babel", "Resuming CallContactPickerFragment", new Object[0]);
    b();
  }
  
  public void onStart()
  {
    super.onStart();
    a.a(this);
    an.a(this);
    r();
    c();
    aal.a(dvd.e(h.a()), 854);
  }
  
  public void q()
  {
    if (e == 1) {
      a(2, true);
    }
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    super.setUserVisibleHint(paramBoolean);
    if ((paramBoolean) && (isAdded())) {
      aal.a(dvd.e(h.a()), 854);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.CallContactPickerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */