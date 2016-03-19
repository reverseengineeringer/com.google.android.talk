package com.google.android.apps.hangouts.phone;

import aal;
import aen;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import axj;
import bfd;
import bg;
import bzy;
import cbr;
import ccj;
import com.google.android.apps.hangouts.fragments.InvitationFragment;
import cvg;
import dvd;
import fcr;
import hpu;
import hqo;

public class InvitationActivity
  extends cbr
  implements bzy, ccj
{
  private bfd n;
  private InvitationFragment o;
  private final hpu p = new hqo(this, B).a(A);
  
  public InvitationActivity()
  {
    new cvg(this, B);
  }
  
  public void D_()
  {
    finish();
  }
  
  public void a()
  {
    a(null);
  }
  
  public void a(axj paramaxj)
  {
    o.restartFragment(paramaxj);
  }
  
  public void a(fcr paramfcr, String paramString1, String paramString2)
  {
    aal.a(this, n, paramfcr, paramString1, paramString2);
  }
  
  public void a(Runnable paramRunnable)
  {
    finish();
    if (paramRunnable != null) {
      paramRunnable.run();
    }
  }
  
  public void a(String paramString) {}
  
  public void a(String paramString1, String paramString2) {}
  
  public void b(String paramString)
  {
    axj localaxj = new axj(paramString, 0);
    d = true;
    paramString = aal.a(n.g(), paramString, b);
    paramString.putExtra("conversation_parameters", localaxj);
    paramString.putExtra("opened_from_impression", 1636);
    startActivity(paramString);
    finish();
  }
  
  public void b_(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      m.setVisibility(i);
      return;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(c(aal.ge));
    Intent localIntent = getIntent();
    n = dvd.e(p.a());
    o = ((InvitationFragment)C_().a(aen.dx));
    o.setHostInterface(this, this);
    o.initialize(localIntent.getExtras());
    if (paramBundle == null) {
      aal.b(localIntent);
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    o.initialize(paramIntent.getExtras());
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.InvitationActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */