package com.google.android.apps.hangouts.phone;

import aal;
import aen;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import av;
import awo;
import bfd;
import bg;
import bkw;
import bz;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import dhm;
import djf;
import djg;
import dvd;
import dvi;
import eot;
import ezi;
import fii;
import hpv;
import hpw;
import hzy;
import iaj;
import iap;
import iaq;
import ikt;
import ilh;
import imi;

public class ShareIntentActivity
  extends imi
  implements hpw
{
  public bfd j;
  private ConversationListFragment k;
  private boolean n;
  private boolean o;
  private hzy p = new hzy(this, m).a(l).b(this);
  
  private void a(bkw parambkw)
  {
    parambkw = aal.a(j, null, null, dhm.a, parambkw);
    parambkw.putExtra("share_intent", getIntent());
    parambkw.addFlags(1);
    startActivityForResult(parambkw, 1);
    overridePendingTransition(aal.ch, aal.ci);
  }
  
  public void a(av paramav)
  {
    int m = 8;
    boolean bool = false;
    super.a(paramav);
    int i;
    if ((paramav instanceof ConversationListFragment))
    {
      k = ((ConversationListFragment)paramav);
      k.a(new djg(this));
      k.b(n);
      k.c(o);
      k.b(3);
      if (k != null)
      {
        paramav = C_().a();
        if (j == null) {
          break label258;
        }
        Button localButton = (Button)findViewById(aen.aP);
        Object localObject = (awo)l.a(awo.class);
        int i1 = p.a();
        if ((!((awo)localObject).d(i1)) || (o)) {
          break label247;
        }
        i = 0;
        localButton.setVisibility(i);
        localObject = (Button)findViewById(aen.aO);
        i = m;
        if (!((eot)l.a(eot.class)).a(i1))
        {
          if (!n) {
            break label253;
          }
          i = m;
        }
        label200:
        ((Button)localObject).setVisibility(i);
        if ((localButton.getVisibility() == 0) || (((Button)localObject).getVisibility() == 0)) {
          bool = true;
        }
        fii.b(bool, "At least one button must be made visible");
        paramav.c(k);
      }
    }
    for (;;)
    {
      paramav.b();
      return;
      label247:
      i = 8;
      break;
      label253:
      i = 0;
      break label200;
      label258:
      paramav.b(k);
    }
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c)
    {
      j = dvd.e(paramInt2);
      paramhpv1 = C_().a();
      k = new ConversationListFragment();
      paramhpv1.a(aen.bm, k, ConversationListFragment.class.getName());
      paramhpv1.b();
      return;
    }
    finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 0) || (paramInt1 == 1)) {
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    if (paramBundle == null)
    {
      ezi.d("Babel", "Sharing detail is not attached", new Object[0]);
      finish();
      return;
    }
    if (paramBundle.getBooleanExtra("sms_convs_only", false)) {
      n = true;
    }
    o = aal.d(getIntent().getType());
    if (n)
    {
      paramBundle = dvd.d;
      if ((!dvi.a()) && (dvd.k() == null))
      {
        paramBundle = ikt.a(getString(StressMode.sq), getString(StressMode.sp), getString(StressMode.sr), "", aal.hS);
        paramBundle.a(new djf(this));
        paramBundle.a(C_(), "");
        return;
      }
    }
    setContentView(aal.gG);
    paramBundle = new iaq();
    paramBundle.b();
    if (n) {
      paramBundle.a(((awo)l.a(awo.class)).a());
    }
    if (o) {
      paramBundle.a(((awo)l.a(awo.class)).b());
    }
    paramBundle = new iaj().a(iap.class, paramBundle.c());
    p.a(paramBundle);
  }
  
  public void onStartNewHangoutButtonClick(View paramView)
  {
    a(bkw.a);
  }
  
  public void onStartNewSmsButtonClick(View paramView)
  {
    a(bkw.b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ShareIntentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */