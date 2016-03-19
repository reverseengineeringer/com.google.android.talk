package com.google.android.apps.hangouts.phone;

import aal;
import aen;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils.TruncateAt;
import android.widget.TextView;
import av;
import axj;
import ayn;
import bcm;
import bfd;
import bg;
import bwj;
import bz;
import bzw;
import bzy;
import bzz;
import cav;
import cbr;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.views.HangoutsToolbar;
import cvg;
import dek;
import dvd;
import dvv;
import dvx;
import ecj;
import ezc;
import ezi;
import ezv;
import fcr;
import hpu;
import hqo;
import ilh;
import qe;

public class ConversationActivity
  extends cbr
  implements bzy, dvx, ecj
{
  private static final ezv o = ezv.a("Conv_Activity");
  public bzw n;
  private bfd p;
  private StrictMode.ThreadPolicy q;
  private final hpu r = new hqo(this, B).a(A);
  
  public ConversationActivity()
  {
    new ayn(this, B);
    new cvg(this, B);
  }
  
  private static axj c(Intent paramIntent)
  {
    axj localaxj2 = (axj)paramIntent.getParcelableExtra("conversation_parameters");
    axj localaxj1 = localaxj2;
    if (localaxj2 == null) {
      localaxj1 = new axj(paramIntent.getStringExtra("conversation_id"), paramIntent.getIntExtra("client_conversation_type", 0));
    }
    return localaxj1;
  }
  
  public void a()
  {
    a(null);
  }
  
  public void a(av paramav)
  {
    if ((paramav instanceof cav)) {
      ((cav)paramav).a(new dek(this));
    }
  }
  
  public void a(axj paramaxj)
  {
    if (ezi.a("Babel", 3))
    {
      localObject = String.valueOf(a);
      if (((String)localObject).length() == 0) {
        break label117;
      }
    }
    label117:
    for (Object localObject = "Restart fragment for new conv id: ".concat((String)localObject);; localObject = new String("Restart fragment for new conv id: "))
    {
      ezi.b("Babel", (String)localObject, new Object[0]);
      n = ((bzz)ilh.a(this, bzz.class)).a();
      n.a(this);
      localObject = new Bundle();
      ((Bundle)localObject).putParcelable("conversation_parameters", paramaxj);
      n.setArguments((Bundle)localObject);
      C_().a().b(aen.bl, n, bzw.class.getName()).b();
      return;
    }
  }
  
  public void a(fcr paramfcr, String paramString1, String paramString2)
  {
    aal.a(this, p, paramfcr, paramString1, paramString2);
  }
  
  public void a(Runnable paramRunnable)
  {
    finish();
    if (paramRunnable != null) {
      paramRunnable.run();
    }
  }
  
  public void a(String paramString)
  {
    setTitle(getString(StressMode.aC, new Object[] { paramString }));
    g().a(ezc.d(paramString));
  }
  
  public void a(String paramString1, String paramString2)
  {
    HangoutsToolbar localHangoutsToolbar = (HangoutsToolbar)m;
    localHangoutsToolbar.c(paramString1);
    localHangoutsToolbar.e(paramString2);
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
    aal.a(this, paramdvv, p.g(), p.a());
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
    String str1 = o.b("onCreate");
    super.onCreate(paramBundle);
    boolean bool = aal.a(this, "babel_conversation_activity_disable_strict_mode", false);
    if ((Build.TYPE.equals("eng")) || (Build.TYPE.equals("userdebug")) || (bool))
    {
      q = StrictMode.getThreadPolicy();
      StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().build());
    }
    setContentView(c(aal.fd));
    Object localObject = (HangoutsToolbar)m;
    ((HangoutsToolbar)localObject).v().setPadding(0, 0, 0, 0);
    localObject = ((HangoutsToolbar)localObject).w();
    ((TextView)localObject).setEllipsize(TextUtils.TruncateAt.MARQUEE);
    ((TextView)localObject).setHorizontalFadingEdgeEnabled(true);
    ((TextView)localObject).setPadding(0, 0, 0, 0);
    ((TextView)localObject).setSelected(true);
    localObject = getIntent();
    p = dvd.e(r.a());
    if (paramBundle == null)
    {
      if (((Intent)localObject).hasExtra("is_direct_share_intent")) {
        ((Intent)localObject).putExtra("share_intent", (Parcelable)localObject);
      }
      if (((Intent)localObject).hasExtra("share_intent"))
      {
        ((Intent)localObject).putExtra("opened_from_impression", 2405);
        if (A.a("direct_share_module_available", false))
        {
          paramBundle = ((Intent)localObject).getExtras().getString("conversation_id");
          if (paramBundle != null)
          {
            long l = System.currentTimeMillis();
            ((bcm)A.a(bcm.class)).a(new bwj(paramBundle, r.a(), l));
          }
        }
      }
      aal.b((Intent)localObject);
    }
    paramBundle = c((Intent)localObject);
    localObject = C_();
    n = ((bzw)((bg)localObject).a(bzw.class.getName()));
    if (n == null)
    {
      String str2 = o.b("instantiate_convfrag_obj");
      n = ((bzz)ilh.a(this, bzz.class)).a();
      o.c(str2);
      ((bg)localObject).a().a(aen.bl, n, bzw.class.getName()).b();
      localObject = new Bundle();
      ((Bundle)localObject).putParcelable("conversation_parameters", paramBundle);
      n.setArguments((Bundle)localObject);
    }
    n.a(this);
    o.c(str1);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (q != null) {
      StrictMode.setThreadPolicy(q);
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    a(c(paramIntent));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ConversationActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */