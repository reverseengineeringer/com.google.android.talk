package com.google.android.apps.hangouts.phone;

import aal;
import aen;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import bfd;
import bg;
import bzg;
import cbr;
import cfc;
import cgw;
import com.google.android.apps.hangouts.fragments.CallContactPickerFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import dvd;
import dvv;
import dvx;
import ezi;
import hpu;
import hqo;
import ilh;
import java.util.ArrayList;
import qe;

public class CallContactPickerActivity
  extends cbr
  implements bzg, dvx
{
  private bfd n;
  private int o;
  
  public CallContactPickerActivity()
  {
    new hqo(this, B).a(A);
  }
  
  public int a()
  {
    return o;
  }
  
  public void a(dvv paramdvv)
  {
    if (paramdvv.b() == 2) {
      aal.a(paramdvv, n, this, this);
    }
    ArrayList localArrayList;
    cgw localcgw;
    do
    {
      do
      {
        return;
      } while (paramdvv.b() != 3);
      localArrayList = new ArrayList(1);
      localArrayList.add(paramdvv.a());
      new ArrayList();
      paramdvv = cfc.a();
      localcgw = paramdvv.r();
    } while ((localcgw == null) || (!localcgw.j()));
    paramdvv.b(localArrayList);
  }
  
  protected boolean a(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      j();
      return true;
    }
    return super.a(paramMenuItem);
  }
  
  public void b(dvv paramdvv)
  {
    switch (paramdvv.b())
    {
    default: 
      int i = paramdvv.b();
      ezi.e("Babel", 32 + "Unrecognized action: " + i, new Object[0]);
    case 1: 
      return;
    }
    aal.a(this, paramdvv, n.g(), n.a());
  }
  
  public void c() {}
  
  public String d()
  {
    return null;
  }
  
  public void e() {}
  
  public boolean h()
  {
    return true;
  }
  
  protected void j()
  {
    setResult(0);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    o = getIntent().getIntExtra("com.google.android.apps.hangouts.voiceCallActionMode", -1);
    if (o == -1)
    {
      ezi.e("Babel", "Missing EXTRA_VOICE_CALL_ACTION_MODE", new Object[0]);
      setResult(0);
      finish();
    }
    do
    {
      return;
      n = dvd.e(((hpu)A.a(hpu.class)).a());
      setContentView(aal.eS);
      paramBundle = (CallContactPickerFragment)C_().a(aen.aS);
      paramBundle.a(this);
      paramBundle.c();
    } while (o != 2);
    setTitle(getString(StressMode.n));
  }
  
  protected void onStart()
  {
    super.onStart();
    g().a(true);
  }
  
  public String v_()
  {
    return null;
  }
  
  public void w_() {}
  
  public void x_() {}
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.CallContactPickerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */