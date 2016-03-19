package com.google.android.apps.hangouts.navigation;

import aal;
import aen;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.widget.DrawerLayout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import ba;
import bfd;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.gms.people.accountswitcherview.SelectedAccountNavigationView;
import cun;
import cuo;
import cup;
import cuq;
import cur;
import cus;
import cut;
import cuu;
import cux;
import cuz;
import cva;
import cvd;
import cve;
import cvf;
import cvh;
import cvj;
import cvk;
import cvl;
import dvd;
import eot;
import ezc;
import fic;
import fid;
import fif;
import fij;
import glg;
import glj;
import glu;
import glx;
import gme;
import gmn;
import gmp;
import gmr;
import gms;
import gna;
import gnc;
import gnd;
import gnf;
import gpt;
import hba;
import hbs;
import hpv;
import hpw;
import hpz;
import hqb;
import hzy;
import ilh;
import ill;
import img;
import java.util.List;
import oq;

public final class NavigationDrawerFragment
  extends img
  implements gna, gnc, hpw
{
  public static boolean a = false;
  private fif aA = new cut(this);
  public ListView aj;
  public List<gpt> ak;
  public gpt al;
  public gpt am;
  public gpt an;
  public Runnable ao;
  public boolean ap;
  public gpt aq;
  public hzy ar;
  public hpz as;
  public hba at;
  public gms au;
  public AdapterView.OnItemClickListener av = new cuu(this);
  public gmr aw = new cux(this);
  public gmp ax = new gmp(this);
  public gnf ay = new cuo(this);
  public gnd az = new gnd(this);
  public DrawerLayout b;
  public cva c;
  public oq d;
  public SelectedAccountNavigationView e;
  public fic f;
  public gme g;
  public cvd h;
  public gmn i;
  
  private static void a(ImageView paramImageView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramImageView.setVisibility(0);
      paramImageView.bringToFront();
      return;
    }
    paramImageView.setVisibility(8);
  }
  
  private void a(gpt paramgpt, View paramView, ImageView paramImageView1, ImageView paramImageView2, ImageView paramImageView3, ImageView paramImageView4)
  {
    if (!d(paramgpt))
    {
      paramImageView1.setVisibility(8);
      paramImageView2.setVisibility(8);
      paramImageView3.setVisibility(8);
      paramImageView4.setVisibility(8);
      return;
    }
    paramgpt = dvd.a(paramgpt.a(), paramgpt.Q_());
    boolean bool2 = true;
    boolean bool1 = false;
    if (paramgpt != null)
    {
      bool2 = dvd.d(paramgpt);
      bool1 = paramgpt.n();
    }
    a(paramImageView1, bool2);
    a(paramImageView2, bool2);
    a(paramImageView3, bool1);
    a(paramImageView4, bool1);
    paramView.setContentDescription(a(paramgpt.a(), bool2, bool1));
  }
  
  private static boolean a(gpt paramgpt1, gpt paramgpt2)
  {
    if (paramgpt1 == null) {
      if (paramgpt2 != null) {}
    }
    do
    {
      return true;
      return false;
      if (paramgpt2 == null) {
        return false;
      }
    } while ((paramgpt1.a().equals(paramgpt2.a())) && (TextUtils.equals(paramgpt1.e(), paramgpt2.e())));
    return false;
  }
  
  public CharSequence a(CharSequence paramCharSequence, boolean paramBoolean1, boolean paramBoolean2)
  {
    Resources localResources = context.getResources();
    StringBuilder localStringBuilder = new StringBuilder();
    int j = StressMode.l;
    Object localObject = paramCharSequence;
    if (paramBoolean1) {
      localObject = localResources.getString(StressMode.gu, new Object[] { paramCharSequence });
    }
    ezc.a(localStringBuilder, localResources.getString(j, new Object[] { localObject }));
    if (paramBoolean2) {
      ezc.a(localStringBuilder, localResources.getText(StressMode.jL));
    }
    return localStringBuilder.toString();
  }
  
  public void a()
  {
    if (!ar.b()) {
      return;
    }
    glj localglj = new glj().b();
    glu.e.a(f, localglj).a(new cur(this));
  }
  
  public void a(SelectedAccountNavigationView paramSelectedAccountNavigationView)
  {
    b(paramSelectedAccountNavigationView);
  }
  
  public void a(gpt paramgpt)
  {
    if (ao != null) {
      return;
    }
    c(paramgpt);
    b.i(getView());
    e.c(0);
    ao = new cun(this, paramgpt);
    b(al);
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (a) {
      return;
    }
    if (paramhpv2 == hpv.c)
    {
      if ((f != null) && (!f.e()) && (!f.f())) {
        f.b();
      }
      a();
    }
    for (;;)
    {
      h.a();
      return;
      if ((f != null) && ((f.e()) || (f.f()))) {
        f.d();
      }
    }
  }
  
  public void b()
  {
    Object localObject = getView();
    if (localObject == null) {}
    do
    {
      return;
      localObject = (ViewStub)((View)localObject).findViewById(1);
    } while (localObject == null);
    ((ViewStub)localObject).inflate();
  }
  
  public void b(SelectedAccountNavigationView paramSelectedAccountNavigationView)
  {
    int j = paramSelectedAccountNavigationView.b();
    if (j == 0)
    {
      aj.setAdapter(h);
      return;
    }
    if (j == 1)
    {
      aj.setAdapter(i);
      return;
    }
    hbs.a(36 + "Unknown navigation mode: " + j);
  }
  
  public void b(gpt paramgpt)
  {
    if (paramgpt == null) {
      al = null;
    }
    gpt localgpt;
    do
    {
      return;
      localgpt = al;
      al = paramgpt;
    } while (ak == null);
    ak = gmn.a(ak, localgpt, al);
    if (e != null) {
      e.a(al);
    }
    i.a(ak);
  }
  
  public void c(gpt paramgpt)
  {
    hbs.b("Selected owner was null", paramgpt);
    if (al != null)
    {
      if (a(al, paramgpt)) {
        break label50;
      }
      if (!a(paramgpt, am)) {
        break label51;
      }
      am = al;
    }
    for (;;)
    {
      al = paramgpt;
      label50:
      return;
      label51:
      if (a(paramgpt, an))
      {
        an = al;
      }
      else
      {
        an = am;
        am = al;
      }
    }
  }
  
  public boolean d(gpt paramgpt)
  {
    if (paramgpt == aq)
    {
      j = as.b(paramgpt.a());
      if (!((eot)binder.a(eot.class)).c(j)) {
        return false;
      }
    }
    if (paramgpt.S_())
    {
      if (as.b(paramgpt.a()) == -1) {
        return false;
      }
      j = as.b(paramgpt.a(), paramgpt.Q_());
      if (j == -1) {
        return false;
      }
      if (!as.a(j).d("is_business_features_enabled")) {
        return false;
      }
    }
    int j = as.b(paramgpt.a());
    return as.d(j);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1) && (paramInt2 == -1))
    {
      paramInt1 = paramIntent.getIntExtra("account_id", -1);
      if (paramInt1 >= 0)
      {
        paramIntent = as.a(paramInt1);
        c.a(paramIntent.b("account_name"), paramIntent.b("effective_gaia_id"));
      }
    }
  }
  
  public final void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    c = ((cva)paramActivity);
  }
  
  public void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    binder.a(cve.class, new cve[] { new cvh(), new cvj(binder), new cvk(), new cvl() });
    ar = ((hzy)binder.a(hzy.class)).b(this);
    as = ((hpz)binder.a(hpz.class));
    at = ((hba)binder.a(hba.class));
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (d != null) {
      d.b();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    setHasOptionsMenu(true);
    aq = new cvf(context);
    paramBundle = new glx().a(407).a();
    f = new fid(context).a(glu.c, paramBundle).a(aA).b();
    g = new gme(getActivity(), f);
    h = new cvd(this);
    h.a();
    paramBundle = new ViewStub(context);
    paramBundle.setId(1);
    paramBundle.setLayoutResource(aal.gs);
    paramBundle.setOnInflateListener(new cup(this, paramLayoutInflater, paramViewGroup));
    paramLayoutInflater = new FrameLayout(context);
    paramLayoutInflater.addView(paramBundle);
    return paramLayoutInflater;
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (d != null) {
      return (d.a(paramMenuItem)) || (super.onOptionsItemSelected(paramMenuItem));
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public final void onPause()
  {
    super.onPause();
    b.i(getView());
    h.a(false);
  }
  
  public final void onResume()
  {
    super.onResume();
    if ((f != null) && (!f.e()) && (!f.f())) {
      f.b();
    }
    b.post(new cuq(this));
  }
  
  public final void onStart()
  {
    super.onStart();
    b = ((DrawerLayout)getActivity().findViewById(aen.bJ));
    d = new cuz(this);
    b.a(d);
    Object localObject = getActivity().findViewById(aen.es);
    if (Build.VERSION.SDK_INT >= 20) {
      ((View)localObject).setOnApplyWindowInsetsListener(new cus(this));
    }
    ((View)localObject).setFitsSystemWindows(true);
    localObject = PreferenceManager.getDefaultSharedPreferences(getActivity());
    if (!((SharedPreferences)localObject).getBoolean("navigation_drawer_shown", false))
    {
      ((SharedPreferences)localObject).edit().putBoolean("navigation_drawer_shown", true).apply();
      b();
      b.h(getView());
    }
  }
  
  public final void onStop()
  {
    if ((f != null) && ((f.e()) || (f.f()))) {
      f.d();
    }
    super.onStop();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.navigation.NavigationDrawerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */