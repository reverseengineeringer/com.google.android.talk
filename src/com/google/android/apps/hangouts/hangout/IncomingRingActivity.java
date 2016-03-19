package com.google.android.apps.hangouts.hangout;

import aal;
import aen;
import android.app.KeyguardManager;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import ba;
import chn;
import chp;
import chq;
import chr;
import cht;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.multiwaveview.GlowPadView;
import com.google.android.apps.hangouts.views.AvatarView;
import com.google.android.apps.hangouts.views.FixedParticipantsGalleryView;
import czb;
import dvd;
import ewz;
import exi;
import ezc;
import java.util.List;

public final class IncomingRingActivity
  extends ba
  implements chn
{
  public IncomingRing j;
  public GlowPadView k;
  public final Handler l = new Handler(Looper.getMainLooper());
  private List<czb> m;
  private boolean n;
  private TextView o;
  private TextView p;
  private TextView q;
  private AvatarView r;
  private Button s;
  private Button t;
  private FixedParticipantsGalleryView u;
  private boolean v;
  private final Runnable w = new chp(this);
  private final exi x = new exi(this, "com.google.android.apps.hangouts.phone.notify_set_active", "com.google.android.apps.hangouts.phone.block_set_active");
  
  private void h()
  {
    if ((!v) || (TextUtils.isEmpty(j.f()))) {
      return;
    }
    String str = getResources().getString(StressMode.dt, new Object[] { j.f() });
    ezc.a(o, null, str);
  }
  
  public void a()
  {
    finish();
  }
  
  public void b()
  {
    o.setText(j.a(getResources()));
    o.setVisibility(0);
    Object localObject = j;
    getResources();
    localObject = ((IncomingRing)localObject).a();
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      p.setText((CharSequence)localObject);
      p.setVisibility(0);
    }
    for (;;)
    {
      if (dvd.i())
      {
        q.setText(j.b(getResources()));
        q.setVisibility(0);
      }
      h();
      if (j.c() != m)
      {
        m = j.c();
        u.a(j.b(), m, null);
        u.setVisibility(0);
      }
      return;
      p.setVisibility(8);
    }
  }
  
  public boolean g()
  {
    return ((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (n) {
      ewz.a(this);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    x.a();
    j = IncomingRing.b;
    if (j == null)
    {
      finish();
      return;
    }
    getWindow().addFlags(6815872);
    if (ewz.c()) {
      if (g())
      {
        n = true;
        setTheme(aal.hT);
      }
    }
    for (;;)
    {
      setContentView(aal.fT);
      if (n) {
        ewz.a(this);
      }
      o = ((TextView)findViewById(aen.dz));
      p = ((TextView)findViewById(aen.dy));
      r = ((AvatarView)findViewById(aen.dH));
      q = ((TextView)findViewById(aen.dF));
      u = ((FixedParticipantsGalleryView)findViewById(aen.cO));
      k = ((GlowPadView)findViewById(aen.dv));
      if ((!ewz.c()) && (ewz.a()) && (!ezc.a(this))) {
        break;
      }
      k.setVisibility(8);
      findViewById(aen.aN).setVisibility(0);
      i = aen.ai;
      int i1 = aen.dp;
      s = ((Button)findViewById(i));
      s.setOnClickListener(new chq(this));
      t = ((Button)findViewById(i1));
      t.setOnClickListener(new chr(this));
      r.setBackgroundResource(17170443);
      return;
      setRequestedOrientation(1);
    }
    k.setOnTriggerListener(new cht(this));
    k.clearAnimation();
    k.setTargetResources(aal.cG);
    k.setTargetDescriptionsResourceId(aal.cF);
    k.setDirectionDescriptionsResourceId(aal.cE);
    paramBundle = k;
    Resources localResources = getResources();
    if ((j.h()) || (j.g())) {}
    for (int i = R.drawable.bf;; i = R.drawable.bg)
    {
      paramBundle.setHandleDrawable(localResources, i);
      r.setBackgroundResource(17170444);
      return;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    x.b();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if ((paramInt == 24) || (paramInt == 25))
    {
      j.a(false);
      bool = true;
    }
    return bool;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return (paramInt == 24) || (paramInt == 25);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    if (j != IncomingRing.b)
    {
      finish();
      startActivity(aal.j());
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    if (IncomingRing.b != j) {
      finish();
    }
    for (;;)
    {
      return;
      j.a(this);
      b();
      if (j.g()) {
        r.a(j.i(), true, j.b());
      }
      while (k != null)
      {
        l.postDelayed(w, 1000L);
        return;
        czb localczb = czb.a(j.e());
        r.a(localczb, j.b());
      }
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    if ((v) && (!((PowerManager)getSystemService("power")).isScreenOn())) {
      j.a(false);
    }
    j.b(this);
    if (k != null)
    {
      l.removeCallbacks(w);
      k.reset(false);
    }
    u.a();
    u.setVisibility(8);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    v = paramBoolean;
    h();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.IncomingRingActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */