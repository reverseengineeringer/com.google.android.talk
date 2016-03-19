package com.google.android.apps.hangouts.invites.conversationinvitelist.impl;

import aal;
import aen;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.Window;
import axj;
import bg;
import cbr;
import cpc;
import czb;
import ecj;
import fi;
import hpu;
import hqo;
import ikt;

public class ConversationInviteListActivity
  extends cbr
  implements cpc, ecj
{
  BroadcastReceiver n;
  BroadcastReceiver o;
  public final hpu p = new hqo(this, B).a(A);
  public InviteListFragment q;
  
  public void a(czb paramczb, String paramString, int paramInt, long paramLong)
  {
    startActivity(aal.a(p.a(), paramString, paramczb, paramInt, paramLong));
  }
  
  public void a(String paramString)
  {
    axj localaxj = new axj(paramString, 0);
    d = true;
    paramString = aal.a(p.a(), paramString, b);
    paramString.putExtra("conversation_parameters", localaxj);
    paramString.putExtra("opened_from_impression", 1636);
    startActivity(paramString);
    finish();
  }
  
  public void b(String paramString)
  {
    ikt localikt = ikt.a(getString(aen.iP), getString(aen.iO), getString(aen.iN), getString(aen.iM), aen.jb);
    localikt.setTargetFragment(q, 2);
    localikt.a(q.getFragmentManager(), paramString);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.mO);
    q = ((InviteListFragment)C_().a(aal.mx));
    q.d = this;
    if (Build.VERSION.SDK_INT >= 21)
    {
      int i = aen.iJ;
      getWindow().setStatusBarColor(getResources().getColor(i));
    }
    if (paramBundle == null) {
      aal.b(getIntent());
    }
  }
  
  protected void onStop()
  {
    fi.a(this).a(n);
    fi.a(this).a(o);
    super.onStop();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.invites.conversationinvitelist.impl.ConversationInviteListActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */