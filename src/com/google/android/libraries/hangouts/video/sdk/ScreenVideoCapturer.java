package com.google.android.libraries.hangouts.video.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManager.DisplayListener;
import android.hardware.display.VirtualDisplay;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjection.Callback;
import android.media.projection.MediaProjectionManager;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import fi;
import gvj;
import hju;
import hkk;
import hks;
import hlb;
import hld;
import hlf;
import hlk;
import hlp;

public final class ScreenVideoCapturer
  implements hlb
{
  private static final hlp g = new hlp(1920, 1080);
  public final Context a;
  public hld b;
  public SurfaceTexture c;
  public VirtualDisplay d;
  public int e;
  public int f;
  private final WindowManager h;
  private final DisplayManager i;
  private final MediaProjectionManager j;
  private final MediaProjection.Callback k;
  private final BroadcastReceiver l;
  private final BroadcastReceiver m;
  private final DisplayManager.DisplayListener n;
  private final int o;
  private hju p;
  private Surface q;
  private MediaProjection r;
  private final Point s;
  private boolean t;
  private boolean u;
  private boolean v;
  
  private void a(boolean paramBoolean)
  {
    float f2 = 1.0F;
    if (p == null) {
      return;
    }
    p.a(paramBoolean);
    hju localhju = p;
    float f1;
    if (paramBoolean)
    {
      f1 = 1.0F;
      if (!paramBoolean) {
        break label54;
      }
    }
    for (;;)
    {
      localhju.a(f1, f2);
      p.a();
      return;
      f1 = 0.0F;
      break;
      label54:
      f2 = 0.0F;
    }
  }
  
  private void c()
  {
    t = false;
    a(false);
  }
  
  private void d()
  {
    if (d != null)
    {
      hlk.a(3, "vclib", "Releasing virtual display for screen capture");
      d.release();
      d = null;
    }
    if (q != null)
    {
      q.release();
      q = null;
    }
  }
  
  public hlp a()
  {
    h.getDefaultDisplay().getRealSize(s);
    int i1 = s.x;
    int i2 = s.y;
    if (b.k().a >= 1280) {}
    for (float f1 = gvj.a(a.getContentResolver(), "babel_hangout_screen_capture_scale_hw", 1.0F);; f1 = gvj.a(a.getContentResolver(), "babel_hangout_screen_capture_scale_sw", 0.75F))
    {
      hlp localhlp2 = hlp.a(new hlp(i1, i2), f1);
      f1 = hlp.a(localhlp2, g);
      hlp localhlp1 = localhlp2;
      if (f1 < 1.0D) {
        localhlp1 = hlp.a(localhlp2, f1);
      }
      return localhlp1;
    }
  }
  
  public void a(hks paramhks)
  {
    hlk.a(3, "vclib", "ScreenVideoCapturer.onDetachFromCall");
    c();
    p = null;
    d();
    fi.a(a).a(l);
    i.unregisterDisplayListener(n);
    a.unregisterReceiver(m);
    if (r != null)
    {
      r.stop();
      r.unregisterCallback(k);
      r = null;
      v = false;
    }
  }
  
  public void a(hks paramhks, hld paramhld)
  {
    boolean bool1 = false;
    b = paramhld;
    p = new hju(paramhks);
    paramhld.a(new hkk(this));
    paramhld.c(false);
    i.registerDisplayListener(n, null);
    fi.a(a).a(l, new IntentFilter("com.google.android.libraries.hangouts.video.sdk.ScreenCapturer"));
    paramhks = new IntentFilter("android.intent.action.SCREEN_OFF");
    paramhks.addAction("android.intent.action.USER_PRESENT");
    a.registerReceiver(m, paramhks);
    boolean bool2 = t;
    t = bool2;
    if (b != null)
    {
      paramhks = b;
      if (!bool2) {
        bool1 = true;
      }
      paramhks.b(bool1);
    }
    if (!bool2) {
      c();
    }
    do
    {
      return;
      if (r != null) {
        break;
      }
    } while (v);
    v = true;
    paramhks = new Intent(a, ScreenVideoCapturer.HandleAuthIntentActivity.class);
    paramhks.addFlags(411041792);
    paramhks.putExtra("share_permission_intent", j.createScreenCaptureIntent());
    a.startActivity(paramhks);
    for (;;)
    {
      a(true);
      return;
      b();
    }
  }
  
  public void b()
  {
    if ((r == null) || (c == null)) {
      hlk.a(3, "vclib", "Waiting to create virtual display.");
    }
    do
    {
      return;
      d();
      hlp localhlp = a();
      String str = String.valueOf(localhlp);
      hlk.a(3, "vclib", String.valueOf(str).length() + 21 + "Capturing screen at: " + str);
      int i1 = s.x;
      int i2 = s.y;
      int i3 = a;
      int i4 = b;
      float f1 = o;
      i1 = Math.round(i3 * i4 / (i1 * i2) * f1);
      q = new Surface(c);
      d = r.createVirtualDisplay("HangoutsScreenCapture", a, b, i1, 3, q, null, null);
    } while (u);
    u = true;
  }
  
  public boolean g()
  {
    return t;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.sdk.ScreenVideoCapturer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */