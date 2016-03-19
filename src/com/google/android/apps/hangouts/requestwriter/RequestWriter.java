package com.google.android.apps.hangouts.requestwriter;

import aal;
import aen;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import bdp;
import cwd;
import cwe;
import cwf;
import cwi;
import cwm;
import cwo;
import dml;
import dmu;
import dmw;
import dmx;
import dmy;
import dmz;
import dna;
import dnf;
import dni;
import dnj;
import dnk;
import dnl;
import dnm;
import dnn;
import dno;
import dnp;
import dnr;
import doa;
import dob;
import doc;
import dod;
import doe;
import dof;
import dog;
import doh;
import doi;
import doj;
import doo;
import dop;
import doq;
import dos;
import dot;
import dou;
import dov;
import dow;
import doy;
import doz;
import dpa;
import dpb;
import dpc;
import dpd;
import dpe;
import dpf;
import dph;
import dpi;
import dpj;
import dpk;
import dpl;
import dpm;
import dpn;
import dpo;
import dpp;
import dpq;
import dpr;
import dps;
import dpt;
import dpu;
import dpv;
import dpw;
import dpx;
import dpy;
import dpz;
import dqa;
import dqb;
import dqc;
import dqd;
import dqg;
import dqh;
import dqi;
import dqj;
import dqk;
import dql;
import dqm;
import dqn;
import dqo;
import dqp;
import dqq;
import dqt;
import dqu;
import dqv;
import dqw;
import dqx;
import dqy;
import dra;
import drb;
import drc;
import drd;
import dre;
import drf;
import drg;
import drh;
import dri;
import drj;
import drm;
import drn;
import drq;
import drs;
import drt;
import dru;
import drv;
import drw;
import dry;
import drz;
import dsa;
import dsb;
import dsc;
import dsd;
import dse;
import dsi;
import dsj;
import dsl;
import dsn;
import dso;
import dsp;
import dsq;
import dsr;
import dst;
import dsu;
import dsv;
import dsx;
import dsy;
import dsz;
import dtb;
import dtc;
import dtf;
import dtg;
import dvp;
import eaw;
import eeq;
import eer;
import ees;
import eeu;
import eev;
import eew;
import eex;
import eez;
import efc;
import eyr;
import ezc;
import ezi;
import fhp;
import fhq;
import fhr;
import gqa;
import hq;
import ilh;
import imx;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import ksf;
import kxi;

public class RequestWriter
  extends eaw
  implements cwe, eer
{
  public static final boolean a;
  public static volatile long f;
  public static volatile boolean g;
  public static final Map<Class<doo>, eev> h = m();
  private static volatile int n;
  private static volatile int o;
  private static volatile long p;
  private static volatile int q;
  private static volatile boolean r;
  private final Map<String, cwd> i = new ConcurrentHashMap();
  private volatile boolean j;
  private ConnectivityManager k;
  private eeq l;
  private final Random m = new Random();
  private final IBinder s = new eew(this);
  private eex t;
  
  static
  {
    imx localimx = ezi.p;
    a = false;
    g = false;
    aal.a(new ees());
  }
  
  public static cwf a(Bundle paramBundle, eez parameez, int paramInt)
  {
    if (paramBundle.containsKey("server_request"))
    {
      paramBundle = efc.a(paramBundle.getByteArray("server_request"));
      if (paramBundle != null) {
        return a(paramBundle, paramInt);
      }
    }
    else if (paramBundle.containsKey("database_id"))
    {
      long l1 = paramBundle.getLong("database_id");
      if (a) {
        new StringBuilder(72).append("Generating NetworkQueueItem from EXTRA_DATABASE_ID: ").append(l1);
      }
      return parameez.b(l1);
    }
    return null;
  }
  
  public static cwf a(cwi paramcwi, int paramInt)
  {
    boolean bool = dvp.e.b(paramInt);
    String str2 = paramcwi.a();
    String str1 = str2;
    if (bool)
    {
      str1 = str2;
      if (!str2.equals("event_queue")) {
        str1 = "default_queue";
      }
    }
    return new cwf(String.valueOf(str1).length() + 11 + str1 + paramInt, paramInt, paramcwi);
  }
  
  public static cwi a(Context paramContext, Intent paramIntent, int paramInt)
  {
    paramContext = a(paramIntent.getExtras(), eez.a(paramContext), paramInt);
    if (paramContext != null) {
      return paramContext.a();
    }
    return null;
  }
  
  private PendingIntent b(long paramLong)
  {
    Intent localIntent = k();
    localIntent.putExtra("backoff_period", paramLong);
    return PendingIntent.getService(this, eyr.a(103), localIntent, 134217728);
  }
  
  public static void i()
  {
    bdp localbdp = (bdp)ilh.a(aal.oJ, bdp.class);
    n = localbdp.a("babel_max_unexpected_error_retries", 2);
    o = localbdp.a("babel_max_upload_error_retries", 10);
    long l1 = localbdp.a("babel_request_writer_failure_injection_percent", 0L);
    p = l1;
    if (l1 > 0L)
    {
      ezi.d("Babel_RequestWriter", "******************************************************", new Object[0]);
      l1 = p;
      ezi.d("Babel_RequestWriter", 51 + "failureInjectionPercent set to " + l1, new Object[0]);
      ezi.d("Babel_RequestWriter", "******************************************************", new Object[0]);
    }
    r = ezc.a();
    q = localbdp.a("babel_requestwriter_ms", 5000);
    f = localbdp.a("babel_maximum_request_writer_intent_extra_size", 0L);
  }
  
  public static Intent k()
  {
    return new Intent(aal.oJ, RequestWriter.class);
  }
  
  private void l()
  {
    if (!r) {}
    Thread localThread;
    Iterator localIterator;
    do
    {
      return;
      while (!localIterator.hasNext())
      {
        localThread = Thread.currentThread();
        localIterator = i.values().iterator();
      }
    } while (!((cwd)localIterator.next()).a(localThread));
    throw new IllegalStateException("don't get RequestWriter lock from network queue thread");
  }
  
  private static Map<Class<doo>, eev> m()
  {
    Object localObject1 = new Object[124];
    localObject1[0] = dos.class;
    localObject1[1] = dqk.class;
    localObject1[2] = dpo.class;
    localObject1[3] = dsj.class;
    localObject1[4] = dqc.class;
    localObject1[5] = dtb.class;
    localObject1[6] = dop.class;
    localObject1[7] = dqi.class;
    localObject1[8] = dpk.class;
    localObject1[9] = dsb.class;
    localObject1[10] = dpl.class;
    localObject1[11] = dsc.class;
    System.arraycopy(new Class[] { dpq.class, dsn.class, dpr.class, dso.class, dph.class, dru.class, dpm.class, dsd.class, dot.class, dqm.class, dpj.class, drz.class, dpz.class, dtg.class, doz.class, dra.class, dpy.class, dtf.class, dpe.class, drm.class, dov.class, dqo.class, dqa.class, dsy.class, dpb.class, drc.class, dqb.class, dsz.class, dpn.class, dsi.class, dpa.class, drb.class, dpt.class, dsr.class, dpu.class, dst.class, dpw.class, dsv.class, doq.class, dqj.class, doe.class, drf.class, dof.class, drg.class, dob.class, dql.class, dod.class, dre.class, doj.class, dse.class, dog.class, drs.class, dnj.class, dqy.class, dnp.class, dsp.class, dnr.class, dsp.class, dou.class, dqn.class, dnk.class, drj.class, dps.class, dsq.class, dpx.class, dsx.class, doa.class, dqg.class, doc.class, dqw.class, doh.class, drt.class, doi.class, dsa.class, doy.class, dqu.class, dpp.class, dsl.class, dno.class, drw.class, dnn.class, drv.class, dpi.class, dry.class, dpv.class, dsu.class, dqd.class, dtc.class, dow.class, dqp.class, dpc.class, drd.class, dnm.class, dnf.class, dnl.class, drn.class, dni.class, dqv.class, dna.class, drq.class, dmw.class, dqq.class, dmy.class, dqx.class, dmz.class, dri.class, dmx.class, dqt.class, dmu.class, dqh.class, dpd.class, drh.class }, 0, localObject1, 12, 112);
    localObject1 = kxi.b((Object[])localObject1, 124);
    localObject1 = new LinkedList(ksf.b((Object[])localObject1, localObject1.length));
    Object localObject2 = ilh.c(aal.oJ, eeu.class).iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((List)localObject1).addAll(((eeu)((Iterator)localObject2).next()).a());
    }
    if (((List)localObject1).size() % 2 == 0) {}
    Object localObject3;
    for (boolean bool = true;; bool = false)
    {
      aen.b(bool, "The list of request -> response classes in RequestWriter#makeMapping should contain the request class followed by the response class. However, this list was contained an odd number of classes, so something is wired incorrectly.");
      localObject2 = new hq();
      int i1 = 0;
      for (;;)
      {
        if (i1 >= ((List)localObject1).size()) {
          return localObject2;
        }
        Class localClass = (Class)((List)localObject1).get(i1);
        localObject3 = (Class)((List)localObject1).get(i1 + 1);
        eev localeev = new eev();
        a = ((Class)localObject3);
        if (dpf.class.isAssignableFrom(localClass)) {}
        try
        {
          b = ((Class)localObject3).getMethod("parseFrom", new Class[] { byte[].class });
          ((Map)localObject2).put(localClass, localeev);
          i1 += 2;
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          localObject3 = ((Class)localObject3).getName();
          localObject1 = String.valueOf(localObject3);
          if (((String)localObject1).length() == 0) {
            break label1154;
          }
        }
      }
    }
    localObject1 = "Ensure that proguard.flags is not automatically removing parseFrom from ".concat((String)localObject1);
    ezi.e("Babel_RequestWriter", (String)localObject1, new Object[0]);
    localObject1 = String.valueOf(localObject3);
    if (((String)localObject1).length() != 0) {}
    for (localObject1 = "Couldn't find parseFrom method for ".concat((String)localObject1);; localObject1 = new String("Couldn't find parseFrom method for "))
    {
      throw new RuntimeException((String)localObject1, localNoSuchMethodException);
      label1154:
      localObject1 = new String("Ensure that proguard.flags is not automatically removing parseFrom from ");
      break;
    }
    return localNoSuchMethodException;
  }
  
  public boolean H_()
  {
    return super.J_();
  }
  
  public void I_()
  {
    super.d();
  }
  
  protected int a()
  {
    return q;
  }
  
  public void a(long paramLong)
  {
    Iterator localIterator = i.values().iterator();
    while (localIterator.hasNext())
    {
      cwd localcwd = (cwd)localIterator.next();
      localcwd.a(paramLong);
      localcwd.a(true);
    }
  }
  
  public void a(Intent paramIntent)
  {
    if (paramIntent == null) {}
    Object localObject;
    do
    {
      return;
      if (a)
      {
        localObject = String.valueOf(paramIntent);
        new StringBuilder(String.valueOf(localObject).length() + 31).append("queue network request directly ").append((String)localObject);
      }
      paramIntent.putExtra("timestamp", SystemClock.elapsedRealtime());
      if (!J_())
      {
        ezi.e("Babel_RequestWriter", "tryRetainService failed.", new Object[0]);
        throw new IllegalStateException();
      }
      localObject = Message.obtain();
      ((Message)localObject).getData().putParcelable("intent", paramIntent);
    } while (t.a.sendMessage((Message)localObject));
    ezi.e("Babel_RequestWriter", "mHandler.sendMessage returned false", new Object[0]);
  }
  
  /* Error */
  public void a(cwf paramcwf)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 721	cwf:a	Lcwk;
    //   4: getfield 725	cwk:a	J
    //   7: lstore_3
    //   8: new 109	java/lang/StringBuilder
    //   11: dup
    //   12: bipush 76
    //   14: invokespecial 112	java/lang/StringBuilder:<init>	(I)V
    //   17: ldc_w 727
    //   20: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: lload_3
    //   24: invokevirtual 121	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   27: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   30: astore 6
    //   32: aload_1
    //   33: getfield 721	cwf:a	Lcwk;
    //   36: getfield 725	cwk:a	J
    //   39: lconst_0
    //   40: lcmp
    //   41: ifle +129 -> 170
    //   44: iconst_1
    //   45: istore 5
    //   47: aload 6
    //   49: iload 5
    //   51: invokestatic 732	hbs:a	(Ljava/lang/String;Z)V
    //   54: aload_1
    //   55: getfield 721	cwf:a	Lcwk;
    //   58: getfield 735	cwk:b	Ljava/lang/String;
    //   61: astore 8
    //   63: aload_0
    //   64: invokespecial 737	com/google/android/apps/hangouts/requestwriter/RequestWriter:l	()V
    //   67: aload_0
    //   68: monitorenter
    //   69: aload_0
    //   70: getfield 68	com/google/android/apps/hangouts/requestwriter/RequestWriter:i	Ljava/util/Map;
    //   73: aload 8
    //   75: invokeinterface 740 2 0
    //   80: checkcast 297	cwd
    //   83: astore 7
    //   85: aload 7
    //   87: astore 6
    //   89: aload 7
    //   91: ifnonnull +59 -> 150
    //   94: aload_1
    //   95: getfield 721	cwf:a	Lcwk;
    //   98: getfield 742	cwk:c	I
    //   101: istore_2
    //   102: aload_0
    //   103: invokevirtual 745	com/google/android/apps/hangouts/requestwriter/RequestWriter:f	()Landroid/content/Context;
    //   106: pop
    //   107: getstatic 748	dvp:T	Ldml;
    //   110: iload_2
    //   111: invokevirtual 138	dml:b	(I)Z
    //   114: ifeq +62 -> 176
    //   117: new 750	cvy
    //   120: dup
    //   121: aload 8
    //   123: aload_0
    //   124: invokespecial 753	cvy:<init>	(Ljava/lang/String;Lcwe;)V
    //   127: astore 6
    //   129: aload_0
    //   130: getfield 68	com/google/android/apps/hangouts/requestwriter/RequestWriter:i	Ljava/util/Map;
    //   133: aload 8
    //   135: aload 6
    //   137: invokeinterface 638 3 0
    //   142: pop
    //   143: aload 6
    //   145: invokeinterface 755 1 0
    //   150: aload_0
    //   151: monitorexit
    //   152: aload 6
    //   154: aload_1
    //   155: aload_1
    //   156: invokevirtual 187	cwf:a	()Lcwi;
    //   159: invokeinterface 758 1 0
    //   164: invokeinterface 761 3 0
    //   169: return
    //   170: iconst_0
    //   171: istore 5
    //   173: goto -126 -> 47
    //   176: new 763	cwb
    //   179: dup
    //   180: aload 8
    //   182: aload_0
    //   183: invokespecial 764	cwb:<init>	(Ljava/lang/String;Lcwe;)V
    //   186: astore 6
    //   188: goto -59 -> 129
    //   191: astore_1
    //   192: aload_0
    //   193: monitorexit
    //   194: aload_1
    //   195: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	this	RequestWriter
    //   0	196	1	paramcwf	cwf
    //   101	10	2	i1	int
    //   7	17	3	l1	long
    //   45	127	5	bool	boolean
    //   30	157	6	localObject	Object
    //   83	7	7	localcwd	cwd
    //   61	120	8	str	String
    // Exception table:
    //   from	to	target	type
    //   69	85	191	finally
    //   94	129	191	finally
    //   129	150	191	finally
    //   150	152	191	finally
    //   176	188	191	finally
    //   192	194	191	finally
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {}
    for (;;)
    {
      return;
      try
      {
        paramString1 = Class.forName(paramString1);
        if (paramString1 != null)
        {
          l();
          try
          {
            Iterator localIterator = i.values().iterator();
            while (localIterator.hasNext()) {
              ((cwd)localIterator.next()).a(paramString1, paramString2);
            }
          }
          finally {}
          return;
        }
      }
      catch (ClassNotFoundException paramString1) {}
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      j();
    }
    ((cwo)ilh.a(f(), cwo.class)).a(paramBoolean);
  }
  
  public boolean b()
  {
    return j;
  }
  
  public cwm c()
  {
    return eez.a(f());
  }
  
  public Context f()
  {
    return getApplicationContext();
  }
  
  public boolean g()
  {
    return (p > 0L) && (m.nextInt(100) < p);
  }
  
  public boolean j()
  {
    NetworkInfo localNetworkInfo = k.getActiveNetworkInfo();
    boolean bool2 = j;
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected())) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      j = bool1;
      if ((j != bool2) && (a))
      {
        bool1 = j;
        new StringBuilder(51).append("network: updateNetworkAvailable was ").append(bool2).append(" now ").append(bool1);
      }
      return j;
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    h();
    return s;
  }
  
  public void onCreate()
  {
    int i1;
    if (a)
    {
      i1 = hashCode();
      new StringBuilder(34).append("RequestWriter.onCreate ").append(i1);
    }
    super.onCreate();
    try
    {
      gqa.a(getApplicationContext());
      if ((Build.TYPE.equals("eng")) || (Build.TYPE.equals("userdebug")))
      {
        i1 = 1;
        if (i1 == 0) {
          break label220;
        }
        HashSet localHashSet = new HashSet();
        localObject2 = h.entrySet().iterator();
        Map.Entry localEntry;
        int i2;
        for (i1 = 1; ((Iterator)localObject2).hasNext(); bool = aal.a(getValuea, null, 0, localHashSet) & i2 & i1)
        {
          localEntry = (Map.Entry)((Iterator)localObject2).next();
          i2 = aal.a((Class)localEntry.getKey(), null, 0, localHashSet);
        }
      }
    }
    catch (fhq localfhq)
    {
      for (;;)
      {
        fhr.a(localfhq.a(), getApplicationContext());
        ezi.d("Babel_RequestWriter", "GPS repairable exception when trying to installIfNeeded", localfhq);
      }
    }
    catch (fhp localfhp)
    {
      boolean bool;
      for (;;)
      {
        ezi.d("Babel_RequestWriter", "GPS not available when trying to installIfNeeded", localfhp);
        continue;
        bool = false;
      }
      if (!bool) {
        throw new IllegalStateException("not all ServerRequest and ServerResponse classes are set up correctly for serialization");
      }
      label220:
      t = new eex(this);
      t.start();
      k = ((ConnectivityManager)getSystemService("connectivity"));
      j();
      Object localObject1 = new eeq(ilh.b(this), this);
      Object localObject2 = new IntentFilter();
      ((IntentFilter)localObject2).addAction("android.net.conn.CONNECTIVITY_CHANGE");
      registerReceiver((BroadcastReceiver)localObject1, (IntentFilter)localObject2);
      l = ((eeq)localObject1);
      h();
      localObject1 = Message.obtain();
      arg1 = 1;
      t.a.sendMessage((Message)localObject1);
      ((AlarmManager)getSystemService("alarm")).cancel(b(500L));
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    t.a.getLooper().quit();
    Object localObject = i.values().iterator();
    long l1 = 500L;
    long l2 = Long.MAX_VALUE;
    if (((Iterator)localObject).hasNext())
    {
      cwd localcwd = (cwd)((Iterator)localObject).next();
      localcwd.d();
      l2 = Math.min(l2, localcwd.b());
      if (localcwd.c() <= 0) {
        break label203;
      }
      l1 = Math.max(l1, localcwd.e());
    }
    label203:
    for (;;)
    {
      break;
      i.clear();
      if (a) {
        new StringBuilder(65).append("Recycling request writer. Will restart after ").append(l2);
      }
      if (l2 < Long.MAX_VALUE) {
        ((AlarmManager)getSystemService("alarm")).set(3, l2 + SystemClock.elapsedRealtime(), b(l1));
      }
      for (g = true;; g = false)
      {
        localObject = l;
        if (localObject != null) {
          unregisterReceiver((BroadcastReceiver)localObject);
        }
        return;
      }
    }
  }
  
  public void onRebind(Intent paramIntent)
  {
    h();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (paramIntent != null)
    {
      a(paramInt2);
      paramIntent.putExtra("timestamp", SystemClock.elapsedRealtime());
      Message localMessage = Message.obtain();
      localMessage.getData().putParcelable("intent", paramIntent);
      if (!t.a.sendMessage(localMessage)) {
        ezi.e("Babel_RequestWriter", "mHandler.sendMessage returned false", new Object[0]);
      }
    }
    return 2;
  }
  
  public boolean onUnbind(Intent paramIntent)
  {
    d();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.requestwriter.RequestWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */