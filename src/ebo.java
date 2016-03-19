import android.os.SystemClock;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Collection;
import java.util.Iterator;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;

public final class ebo
  extends dym
{
  private static final ezv a = RealTimeChatService.b;
  private static final ConcurrentHashMap<Integer, ebo> e = new ConcurrentHashMap();
  private static final Random f = new Random();
  private long g = -1L;
  private int h = 0;
  private boolean i = false;
  private boolean j = false;
  private long k = -1L;
  private String l = null;
  private long m = -1L;
  
  private ebo(int paramInt, long paramLong1, long paramLong2)
  {
    super(dvd.e(paramInt), paramLong1, paramLong2);
    if (b.b.k())
    {
      k = Long.MAX_VALUE;
      return;
    }
    paramLong1 = SystemClock.elapsedRealtime();
    if (((hpz)ilh.a(aal.oJ, hpz.class)).a(paramInt).a("warm_sync_deferral_limit", -1L) != -1L)
    {
      k = (aal.a(aal.oJ, "babel_maxsynctickledelay", 60000) * 2 + paramLong1);
      return;
    }
    k = (aal.a(aal.oJ, "babel_synctickledelay", 10000) * 2 + paramLong1);
  }
  
  private boolean a(String paramString, int paramInt)
  {
    try
    {
      if ((l != null) && (l.equals(paramString)))
      {
        hbs.a("Expected condition to be true", g());
        a(paramInt);
        l = null;
        h = 0;
        a.c("WarmSyncServerOp");
        return true;
      }
      return false;
    }
    finally {}
  }
  
  public static ebo b(int paramInt)
  {
    ebo localebo2 = (ebo)e.get(Integer.valueOf(paramInt));
    ebo localebo1 = localebo2;
    if (localebo2 == null)
    {
      localebo1 = new ebo(paramInt, aal.a(aal.oJ, "babel_warm_sync_lowmark_seconds", 7200) * 1000, aal.a(aal.oJ, "babel_warm_sync_highmark_seconds", 604800) * 1000);
      e.putIfAbsent(Integer.valueOf(paramInt), localebo1);
      localebo1 = (ebo)e.get(Integer.valueOf(paramInt));
    }
    return localebo1;
  }
  
  public static ebo c(int paramInt)
  {
    return (ebo)e.remove(Integer.valueOf(paramInt));
  }
  
  public static void l()
  {
    Iterator localIterator = e.values().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (ebo)localIterator.next();
      dvm localdvm = dvd.e(b.b);
      if (localdvm == null)
      {
        localObject = String.valueOf(ezi.b(b.b.a()));
        if (((String)localObject).length() != 0) {}
        for (localObject = "Account is not valid. Skipping parasite warm sync operation: ".concat((String)localObject);; localObject = new String("Account is not valid. Skipping parasite warm sync operation: "))
        {
          ezi.d("Babel_ReqWarmSyncOp", (String)localObject, new Object[0]);
          break;
        }
      }
      long l1 = SystemClock.elapsedRealtime();
      if ((l1 >= k) && (((ebo)localObject).m())) {
        try
        {
          boolean bool = ((ebo)localObject).e();
          if (bool)
          {
            if (exo.b) {
              new exr().a("rtcs_warm_sync_queued").a(b.b).b();
            }
            k = (l1 + aal.a(aal.oJ, "babel_maxsynctickledelay", 60000) * 2);
            ((ebo)localObject).a(true);
            ((ebo)localObject).b(false);
            ((ebo)localObject).a(2);
            ((ebo)localObject).p_();
            ((ebo)localObject).a(localdvm, 0);
          }
        }
        catch (hqd localhqd) {}
      }
    }
  }
  
  public long a(ebq paramebq)
  {
    long l1 = Long.MAX_VALUE;
    long l3;
    long l6;
    long l5;
    Object localObject;
    long l4;
    if (m())
    {
      l3 = SystemClock.elapsedRealtime();
      l6 = aal.a(aal.oJ, "babel_maxsynctickledelay", 60000);
      switch (ebp.a[paramebq.ordinal()])
      {
      default: 
        throw new IllegalStateException("Invalid delay parameter.");
      case 1: 
        l2 = l3;
        l1 = 0L;
        l5 = l3 + l1;
        localObject = ((hpz)ilh.a(aal.oJ, hpz.class)).b(b.a);
        l4 = ((hqc)localObject).a("warm_sync_deferral_limit", -1L);
        if ((l4 < 0L) || (l4 > l2)) {
          ((hqc)localObject).b("warm_sync_deferral_limit", l2).d();
        }
        if ((l4 >= 0L) && (l5 > l4)) {
          l1 = Math.max(0L, l4 - l3);
        }
        break;
      }
    }
    for (long l2 = l4;; l2 = l5)
    {
      if (exo.b)
      {
        localObject = new exr().a("rtcs_set_sane_alarm").a(b.b).b(System.currentTimeMillis() + l1);
        paramebq = String.valueOf(paramebq);
        ((exr)localObject).b(String.valueOf(paramebq).length() + 31 + "delay=" + l1 + "from " + paramebq).b();
      }
      l1 = l2;
      if (k < l2 + l6)
      {
        k = (l2 + l6);
        l1 = l2;
      }
      return l1;
      l1 = aal.a(aal.oJ, "babel_hashsyncdelay", 5000);
      l2 = l3 + l6;
      break;
      l2 = l6 << 1;
      l1 = l2;
      l2 = l3 + l2;
      break;
    }
  }
  
  protected void a(long paramLong)
  {
    g = paramLong;
    bff.b(aal.oJ, b.a, "last_warm_sync_localtime", paramLong);
  }
  
  public void a(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public boolean a(String paramString)
  {
    int n = h;
    String str;
    if (l == null) {
      str = "[IDLE]";
    }
    for (;;)
    {
      new StringBuilder(String.valueOf(paramString).length() + 83 + String.valueOf(str).length()).append("Increment pending requests for ").append(paramString).append(". Current number of pending request ").append(n).append(" for ").append(str);
      try
      {
        if ((l != null) && (l.equals(paramString)))
        {
          h += 1;
          return true;
          str = l;
          continue;
        }
        return false;
      }
      finally {}
    }
  }
  
  public void b(long paramLong)
  {
    m = paramLong;
  }
  
  public void b(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public boolean b(String paramString)
  {
    int n = h;
    String str;
    if (l == null)
    {
      str = "[IDLE]";
      new StringBuilder(String.valueOf(paramString).length() + 83 + String.valueOf(str).length()).append("Decrement pending requests for ").append(paramString).append(". Current number of pending request ").append(n).append(" for ").append(str);
    }
    for (;;)
    {
      try
      {
        if ((l == null) || (!l.equals(paramString))) {
          break label219;
        }
        h -= 1;
        if (h >= 0)
        {
          bool = true;
          hbs.a("Expected condition to be true", bool);
          if (h != 0) {
            break label219;
          }
          hbs.a("Expected condition to be true", g());
          a(3);
          l = null;
          h = 0;
          bool = true;
          if ((bool) && (bft.a))
          {
            paramString = String.valueOf(paramString);
            if (paramString.length() == 0) {
              break label206;
            }
            "RequestWarmSyncOperation completed: ".concat(paramString);
          }
          return bool;
          str = l;
          break;
        }
        bool = false;
        continue;
        new String("RequestWarmSyncOperation completed: ");
      }
      finally {}
      label206:
      return bool;
      label219:
      boolean bool = false;
    }
  }
  
  public boolean c(String paramString)
  {
    boolean bool = a(paramString, 3);
    String str1;
    if (!bool)
    {
      if (paramString != null) {
        break label129;
      }
      str1 = "null";
      if (l != null) {
        break label134;
      }
    }
    label129:
    label134:
    for (String str2 = "null";; str2 = l)
    {
      ezi.d("Babel_ReqWarmSyncOp", String.valueOf(str1).length() + 57 + String.valueOf(str2).length() + "RequestWarmSync: Mismatched key upon SANE completion " + str1 + " != " + str2, new Object[0]);
      a(System.currentTimeMillis());
      if (bft.a)
      {
        if (!bool) {
          break label156;
        }
        paramString = String.valueOf(paramString);
        if (paramString.length() == 0) {
          break label143;
        }
        "RequestWarmSyncOperation complete: ".concat(paramString);
      }
      return bool;
      str1 = paramString;
      break;
    }
    label143:
    new String("RequestWarmSyncOperation complete: ");
    return bool;
    label156:
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0)
    {
      "RequestWarmSyncOperation complete after restart ".concat(paramString);
      return bool;
    }
    new String("RequestWarmSyncOperation complete after restart ");
    return bool;
  }
  
  public boolean d(String paramString)
  {
    boolean bool = a(paramString, 0);
    if (bft.a)
    {
      if (!bool) {
        break label52;
      }
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {
        "RequestWarmSyncOperation failed: ".concat(paramString);
      }
    }
    else
    {
      return bool;
    }
    new String("RequestWarmSyncOperation failed: ");
    return bool;
    label52:
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0)
    {
      "RequestWarmSyncOperation failed after restart ".concat(paramString);
      return bool;
    }
    new String("RequestWarmSyncOperation failed after restart ");
    return bool;
  }
  
  protected long i()
  {
    if (g == -1L) {
      g = bff.a(aal.oJ, b.a, "last_warm_sync_localtime", 0L);
    }
    return g;
  }
  
  public boolean m()
  {
    return (k < Long.MAX_VALUE) && (!dvd.d(b.b));
  }
  
  public boolean n()
  {
    long l1 = SystemClock.elapsedRealtime();
    long l2 = ((hpz)ilh.a(aal.oJ, hpz.class)).a(b.a).a("warm_sync_deferral_limit", -1L);
    return (l2 >= 0L) && (l1 < l2);
  }
  
  public void o()
  {
    ((hpz)ilh.a(aal.oJ, hpz.class)).b(b.a).f("warm_sync_deferral_limit").d();
  }
  
  /* Error */
  public void p_()
  {
    // Byte code:
    //   0: getstatic 31	ebo:a	Lezv;
    //   3: ldc_w 389
    //   6: invokevirtual 390	ezv:b	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore 5
    //   11: invokestatic 303	java/lang/System:currentTimeMillis	()J
    //   14: lstore_2
    //   15: aload_0
    //   16: getfield 69	ebo:m	J
    //   19: ldc2_w 54
    //   22: lcmp
    //   23: ifne +129 -> 152
    //   26: ldc_w 392
    //   29: astore 4
    //   31: aload 4
    //   33: invokestatic 210	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   36: astore 4
    //   38: lload_2
    //   39: ldc2_w 393
    //   42: lmul
    //   43: getstatic 43	ebo:f	Ljava/util/Random;
    //   46: sipush 1000
    //   49: invokevirtual 398	java/util/Random:nextInt	(I)I
    //   52: i2l
    //   53: ladd
    //   54: invokestatic 403	java/lang/Long:toString	(J)Ljava/lang/String;
    //   57: invokestatic 210	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   60: astore 6
    //   62: aload 6
    //   64: invokevirtual 214	java/lang/String:length	()I
    //   67: ifeq +93 -> 160
    //   70: aload 4
    //   72: aload 6
    //   74: invokevirtual 219	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   77: astore 4
    //   79: aload_0
    //   80: monitorenter
    //   81: aload_0
    //   82: aload 4
    //   84: putfield 67	ebo:l	Ljava/lang/String;
    //   87: aload_0
    //   88: invokevirtual 405	ebo:k	()V
    //   91: aload_0
    //   92: iconst_0
    //   93: putfield 59	ebo:h	I
    //   96: aload_0
    //   97: monitorexit
    //   98: aload_0
    //   99: getfield 74	dyx:b	Ldvb;
    //   102: getfield 279	dvb:a	I
    //   105: istore_1
    //   106: new 407	bfz
    //   109: dup
    //   110: getstatic 98	aal:oJ	Landroid/content/Context;
    //   113: iload_1
    //   114: invokespecial 410	bfz:<init>	(Landroid/content/Context;I)V
    //   117: aload_0
    //   118: getfield 413	dyx:c	Ldyy;
    //   121: aload_0
    //   122: getfield 61	ebo:i	Z
    //   125: aload_0
    //   126: getfield 63	ebo:j	Z
    //   129: aload 4
    //   131: invokestatic 416	bft:a	(Lbfz;Ldyy;ZZLjava/lang/String;)V
    //   134: getstatic 31	ebo:a	Lezv;
    //   137: ldc -112
    //   139: invokevirtual 390	ezv:b	(Ljava/lang/String;)Ljava/lang/String;
    //   142: pop
    //   143: getstatic 31	ebo:a	Lezv;
    //   146: aload 5
    //   148: invokevirtual 150	ezv:c	(Ljava/lang/String;)V
    //   151: return
    //   152: ldc_w 418
    //   155: astore 4
    //   157: goto -126 -> 31
    //   160: new 126	java/lang/String
    //   163: dup
    //   164: aload 4
    //   166: invokespecial 229	java/lang/String:<init>	(Ljava/lang/String;)V
    //   169: astore 4
    //   171: goto -92 -> 79
    //   174: astore 4
    //   176: aload_0
    //   177: monitorexit
    //   178: aload 4
    //   180: athrow
    //   181: astore 4
    //   183: iload_1
    //   184: invokestatic 420	ebo:c	(I)Lebo;
    //   187: pop
    //   188: goto -45 -> 143
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	this	ebo
    //   105	79	1	n	int
    //   14	25	2	l1	long
    //   29	141	4	str1	String
    //   174	5	4	localObject	Object
    //   181	1	4	localbgz	bgz
    //   9	138	5	str2	String
    //   60	13	6	str3	String
    // Exception table:
    //   from	to	target	type
    //   81	98	174	finally
    //   176	178	174	finally
    //   106	143	181	bgz
  }
}

/* Location:
 * Qualified Name:     ebo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */