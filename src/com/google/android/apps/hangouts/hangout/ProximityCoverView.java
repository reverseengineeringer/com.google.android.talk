package com.google.android.apps.hangouts.hangout;

import aal;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build.VERSION;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import cfc;
import cjc;
import cjd;
import cje;
import cjf;
import ezi;
import hbs;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class ProximityCoverView
  extends View
{
  public float a = Float.MAX_VALUE;
  public float b = 0.0F;
  private final SensorManager c;
  private final Sensor d;
  private final cjf e = new cjf(this);
  private final cjd f = new cjd(this);
  private boolean g;
  private cje h = null;
  private PowerManager.WakeLock i = null;
  private boolean j;
  private cjc k;
  private int l;
  
  public ProximityCoverView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    boolean bool1 = bool2;
    if (aal.a(aal.oJ, "babel_proximity_wakelock_whitelist", false))
    {
      bool1 = bool2;
      if (!aal.a(aal.oJ, "babel_proximity_wakelock_blacklist", false)) {
        bool1 = true;
      }
    }
    j = bool1;
    c = ((SensorManager)paramContext.getSystemService("sensor"));
    d = c.getDefaultSensor(8);
    c();
  }
  
  private void a(boolean paramBoolean)
  {
    int m = 0;
    if (paramBoolean == g) {
      return;
    }
    boolean bool;
    if (!j)
    {
      bool = false;
      if (!bool) {
        if (!paramBoolean) {
          break label84;
        }
      }
    }
    for (;;)
    {
      setVisibility(m);
      if (h != null) {
        h.a(paramBoolean, bool);
      }
      g = paramBoolean;
      return;
      if (paramBoolean) {
        j = f();
      }
      for (;;)
      {
        bool = j;
        break;
        g();
      }
      label84:
      m = 8;
    }
  }
  
  private boolean f()
  {
    if (!j) {}
    for (;;)
    {
      return false;
      try
      {
        if (i == null)
        {
          PowerManager localPowerManager = (PowerManager)getContext().getApplicationContext().getSystemService("power");
          int m = aal.a((Integer)PowerManager.class.getDeclaredField("PROXIMITY_SCREEN_OFF_WAKE_LOCK").get(null), 0);
          ezi.a("Babel", 42 + "PROXIMITY_SCREEN_OFF_WAKE_LOCK:" + m, new Object[0]);
          if (m == 0) {
            continue;
          }
          boolean bool;
          if (Build.VERSION.SDK_INT >= 17)
          {
            bool = aal.a((Boolean)localPowerManager.getClass().getDeclaredMethod("isWakeLockLevelSupported", new Class[] { Integer.TYPE }).invoke(localPowerManager, new Object[] { Integer.valueOf(m) }), false);
            ezi.a("Babel", 30 + "isWakeLockLevelSupported:" + bool, new Object[0]);
          }
          while (bool)
          {
            i = localPowerManager.newWakeLock(m, "Babel");
            i.acquire();
            break label331;
            int n = aal.a((Integer)localPowerManager.getClass().getDeclaredMethod("getSupportedWakeLockFlags", new Class[0]).invoke(localPowerManager, new Object[0]), 0);
            ezi.a("Babel", 37 + "getSupportedWakeLockFlags:" + n, new Object[0]);
            if ((n & m) != 0) {
              bool = true;
            } else {
              bool = false;
            }
          }
        }
        String str;
        return true;
      }
      catch (Exception localException)
      {
        str = String.valueOf(localException.toString());
        if (str.length() != 0) {}
        for (str = "Failed to acquire proximity and keyguard locks: ".concat(str);; str = new String("Failed to acquire proximity and keyguard locks: "))
        {
          ezi.d("Babel", str, new Object[0]);
          g();
          return false;
        }
      }
    }
  }
  
  private void g()
  {
    if (i != null)
    {
      i.release();
      i = null;
    }
  }
  
  public void a()
  {
    int m = l + 1;
    l = m;
    if (m > 1) {
      return;
    }
    if (d != null) {
      c.registerListener(e, d, 3);
    }
    cfc.a().a(f);
    c();
  }
  
  public void a(cjc paramcjc)
  {
    k = paramcjc;
  }
  
  public void a(cje paramcje)
  {
    hbs.a("Expected null", h);
    h = paramcje;
  }
  
  public void b()
  {
    int m = l - 1;
    l = m;
    if (m > 0) {
      return;
    }
    if (l < 0)
    {
      l = 0;
      return;
    }
    if (d != null) {
      c.unregisterListener(e);
    }
    cfc.a().b(f);
    a(false);
  }
  
  public void c()
  {
    boolean bool = true;
    int m;
    int n;
    if ((k != null) && (k.a()))
    {
      m = 1;
      if ((0.0D > a) || ((a >= 1.0F) && ((a > 5.0F) || (b <= 5.0F)))) {
        break label85;
      }
      n = 1;
      label66:
      if ((m == 0) || (n == 0)) {
        break label90;
      }
    }
    for (;;)
    {
      a(bool);
      return;
      m = 0;
      break;
      label85:
      n = 0;
      break label66;
      label90:
      bool = false;
    }
  }
  
  public void d()
  {
    h = null;
  }
  
  public void e()
  {
    k = null;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.ProximityCoverView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */