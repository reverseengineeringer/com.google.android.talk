package com.google.android.apps.hangouts.hangout;

import aal;
import aen;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.Window;
import av;
import bg;
import bz;
import cbr;
import cgs;
import chc;
import cid;
import cjp;
import cla;
import clb;
import cmu;
import cmv;
import cn;
import com.google.android.apps.hangouts.R.drawable;
import dvd;
import ecj;
import ewz;
import exi;
import hpu;
import hqo;
import ilh;
import java.util.Iterator;
import java.util.List;
import qe;

public final class HangoutActivity
  extends cbr
  implements ecj
{
  final exi n = new exi(this, "com.google.android.apps.hangouts.phone.notify_external_interruption", "com.google.android.apps.hangouts.phone.block_external_interruption");
  final exi o = new exi(this, "com.google.android.apps.hangouts.phone.notify_set_active", "com.google.android.apps.hangouts.phone.force_set_active");
  final hpu p = new hqo(this, B).a(A);
  private HangoutFragment q;
  private boolean r;
  private boolean s;
  
  private void q()
  {
    Intent localIntent = aal.a(dvd.e(p.a()), q.t());
    q.f();
    startActivity(localIntent);
    finish();
  }
  
  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    ((cmv)A.a(cmv.class)).a(this, B).a(A);
    ((clb)A.a(clb.class)).a(this, B).a(A);
    paramBundle = A.c(cjp.class).iterator();
    while (paramBundle.hasNext()) {
      ((cjp)paramBundle.next()).a(this, B);
    }
  }
  
  public void a(av paramav)
  {
    if ((paramav instanceof HangoutFragment)) {
      q = ((HangoutFragment)paramav);
    }
  }
  
  protected boolean a(MenuItem paramMenuItem)
  {
    int i = paramMenuItem.getItemId();
    if (i == 16908332)
    {
      aal.c(1585);
      q();
    }
    while (i == aen.ea) {
      return true;
    }
    return super.a(paramMenuItem);
  }
  
  public void b(boolean paramBoolean)
  {
    if (s) {
      return;
    }
    s = true;
    if (paramBoolean)
    {
      int i = getIntent().getIntExtra("hangout_pstn_call", 2);
      Intent localIntent = null;
      if ((i & 0x1) != 0) {
        localIntent = aal.d(dvd.e(p.a()));
      }
      if (localIntent != null) {
        startActivity(localIntent);
      }
    }
    finish();
  }
  
  public boolean j()
  {
    return r;
  }
  
  public cgs m()
  {
    return (cgs)getIntent().getParcelableExtra("hangout_room_info");
  }
  
  public void n()
  {
    b(true);
  }
  
  public HangoutFragment o()
  {
    return q;
  }
  
  public void onBackPressed()
  {
    if (q.f()) {
      return;
    }
    if (cn.a(this, aal.a(dvd.e(p.a()), q.t())))
    {
      finish();
      return;
    }
    q();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (ewz.d())
    {
      aal.k("Device has NFC. Adding NfcHangoutFragment.");
      localObject = new cid();
      C_().a().a((av)localObject, null).b();
    }
    a(aal.fI, R.drawable.bD);
    Object localObject = g();
    ((qe)localObject).a();
    ((qe)localObject).b();
    ((qe)localObject).a(new chc(this));
    localObject = getWindow();
    int j = 6848512;
    cgs localcgs = m();
    int i = j;
    if (localcgs != null)
    {
      i = j;
      if (localcgs.l() != 2) {
        i = 6848640;
      }
    }
    ((Window)localObject).addFlags(i);
    if (paramBundle != null) {}
    for (boolean bool = true;; bool = false)
    {
      r = bool;
      n.a();
      o.a();
      return;
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    n.b();
    o.b();
  }
  
  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    if (paramMenu != null) {
      aal.c(1584);
    }
    return super.onMenuOpened(paramInt, paramMenu);
  }
  
  public void onRestart()
  {
    super.onRestart();
    r = true;
  }
  
  protected void onStart()
  {
    super.onStart();
    IncomingRing.a(getIntent());
  }
  
  public void overridePendingTransition(int paramInt1, int paramInt2)
  {
    super.overridePendingTransition(paramInt1, paramInt2);
  }
  
  public void p()
  {
    q.s().s();
    n();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.HangoutActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */