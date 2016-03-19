import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public final class dwt
{
  private static final boolean b = false;
  private static final String[] c = { "Uninit", "RegSent", "Registered", "RegFailed" };
  private static volatile dwt j = null;
  public volatile int a;
  private final Context d;
  private final SharedPreferences e;
  private String f;
  private long g;
  private List<Runnable> h = new ArrayList();
  private volatile int i;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  private dwt(Context paramContext)
  {
    d = paramContext;
    e = paramContext.getSharedPreferences("gcm", 0);
    f = e.getString("gcm_registration_id", null);
    a = e.getInt("gcm_registration_state", 100);
    i = e.getInt("gcm_retry_strategy", 0);
    g = e.getLong("gcm_android_id", -1L);
  }
  
  public static dwt a()
  {
    if (j == null) {
      ezi.e("BabelGcmRegistration", "GcmRegistration.initialize() should be called called first", new Object[0]);
    }
    return j;
  }
  
  private void a(int paramInt)
  {
    if (ezi.a("BabelGcmRegistration", 3)) {
      ezi.a("BabelGcmRegistration", 46 + "GcmRegistration: set retryStrategy=" + paramInt, new Object[0]);
    }
    i = paramInt;
    SharedPreferences.Editor localEditor = e.edit();
    localEditor.putInt("gcm_retry_strategy", paramInt);
    localEditor.apply();
  }
  
  /* Error */
  public static void a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 48	dwt:j	Ldwt;
    //   6: ifnull +18 -> 24
    //   9: ldc 105
    //   11: ldc -108
    //   13: iconst_0
    //   14: anewarray 4	java/lang/Object
    //   17: invokestatic 150	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   20: ldc 2
    //   22: monitorexit
    //   23: return
    //   24: new 2	dwt
    //   27: dup
    //   28: aload_0
    //   29: invokespecial 152	dwt:<init>	(Landroid/content/Context;)V
    //   32: astore_0
    //   33: aload_0
    //   34: putstatic 48	dwt:j	Ldwt;
    //   37: aload_0
    //   38: monitorenter
    //   39: getstatic 48	dwt:j	Ldwt;
    //   42: invokevirtual 154	dwt:h	()V
    //   45: aload_0
    //   46: monitorexit
    //   47: goto -27 -> 20
    //   50: astore_1
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_1
    //   54: athrow
    //   55: astore_0
    //   56: ldc 2
    //   58: monitorexit
    //   59: aload_0
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	paramContext	Context
    //   50	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   39	47	50	finally
    //   51	53	50	finally
    //   3	20	55	finally
    //   24	39	55	finally
    //   53	55	55	finally
  }
  
  private static String b(int paramInt)
  {
    if ((paramInt >= 100) && (paramInt <= 103)) {
      return c[(paramInt - 100)];
    }
    return Integer.toString(paramInt);
  }
  
  private static void b(Context paramContext)
  {
    ezi.b("BabelGcmRegistration", "requestGcmRegistrationId", new Object[0]);
    new dwu(paramContext).execute(new Void[] { null, null, null });
  }
  
  public void a(PrintWriter paramPrintWriter)
  {
    try
    {
      String str1 = String.valueOf(b(a));
      String str2 = f;
      paramPrintWriter.println(String.valueOf(str1).length() + 31 + String.valueOf(str2).length() + "GCM Registration state: " + str1 + ", reg: " + str2);
      return;
    }
    finally {}
  }
  
  public void a(Runnable paramRunnable)
  {
    try
    {
      h.add(paramRunnable);
      if (a == 102) {
        paramRunnable.run();
      }
      return;
    }
    finally {}
  }
  
  void a(String paramString)
  {
    int k = 1;
    try
    {
      if (a != 101)
      {
        String str = String.valueOf("Setting GCM registration. Expected,Actual state=101,");
        int m = a;
        ezi.d("BabelGcmRegistration", String.valueOf(str).length() + 11 + str + m, new Object[0]);
      }
      long l = exa.a();
      if (g == l)
      {
        a(paramString, 102);
        a(0);
      }
      for (;;)
      {
        if (k != 0) {
          break;
        }
        ezi.d("BabelGcmRegistration", "Ignoring GCM registration due to android_id mismatch. Retrying", new Object[0]);
        g();
        return;
        i();
        k = 0;
      }
      paramString = String.valueOf(paramString);
    }
    finally {}
    if (paramString.length() != 0) {}
    for (paramString = "Start registration for accounts on the device with registration string ".concat(paramString);; paramString = new String("Start registration for accounts on the device with registration string "))
    {
      ezi.c("BabelGcmRegistration", paramString, new Object[0]);
      dvd.o();
      paramString = new ArrayList(h).iterator();
      while (paramString.hasNext()) {
        ((Runnable)paramString.next()).run();
      }
      break;
    }
  }
  
  public void a(String paramString, int paramInt)
  {
    f = paramString;
    a = paramInt;
    paramString = e.edit();
    paramString.putLong("gcm_android_id", g);
    paramString.putString("gcm_registration_id", f);
    paramString.putInt("gcm_registration_state", a);
    paramString.apply();
  }
  
  public long b()
  {
    try
    {
      long l = g;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void b(Runnable paramRunnable)
  {
    try
    {
      h.remove(paramRunnable);
      return;
    }
    finally {}
  }
  
  public boolean c()
  {
    for (;;)
    {
      try
      {
        if (a == 102)
        {
          bool = true;
          return bool;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
  
  public boolean d()
  {
    try
    {
      if ((a == 103) || (a == 100)) {
        return true;
      }
      if ((a == 102) && (aal.a(d, "babel_android_id_check", false)))
      {
        long l1 = exa.a();
        if (l1 != g)
        {
          if (b)
          {
            long l2 = g;
            new StringBuilder(81).append("mismatch android id ").append(l1).append(" with GCM android ID ").append(l2);
          }
          return true;
        }
      }
    }
    finally {}
    return false;
  }
  
  public String e()
  {
    try
    {
      if (a != 102)
      {
        str = String.valueOf("Getting GCM registration. Expected,Actual state=102,");
        int k = a;
        ezi.e("BabelGcmRegistration", String.valueOf(str).length() + 11 + str + k, new Object[0]);
        return null;
      }
      String str = f;
      return str;
    }
    finally {}
  }
  
  public void f()
  {
    try
    {
      if (i == 1) {
        a(0);
      }
      return;
    }
    finally {}
  }
  
  public void g()
  {
    if (ezi.a("BabelGcmRegistration", 3))
    {
      str = String.valueOf(b(a));
      if (str.length() == 0) {
        break label79;
      }
    }
    for (String str = "Retry GcmRegistration. Current state: ".concat(str);; str = new String("Retry GcmRegistration. Current state: "))
    {
      ezi.a("BabelGcmRegistration", str, new Object[0]);
      label79:
      try
      {
        if (a != 101)
        {
          a = 101;
          g = exa.a();
          b(d);
        }
        return;
      }
      finally {}
    }
  }
  
  public void h()
  {
    try
    {
      ezi.a("BabelGcmRegistration", "GcmRegistration: Checking GCM registration", new Object[0]);
      if (a == 102)
      {
        boolean bool = aal.a(d, "babel_android_id_check", false);
        if (bool) {}
      }
      while (!d()) {
        return;
      }
      ezi.a("BabelGcmRegistration", "GcmRegistration: Requesting GCM registration", new Object[0]);
      dvd.a();
      dvd.d(8);
      Iterator localIterator1 = dvd.b.values().iterator();
      while (localIterator1.hasNext()) {
        ((dvg)localIterator1.next()).o();
      }
      dvd.a();
    }
    finally {}
    dvd.d(8);
    Iterator localIterator2 = dvd.b.values().iterator();
    int k;
    while (localIterator2.hasNext()) {
      if (((dvg)localIterator2.next()).k())
      {
        k = 1;
        break label199;
      }
    }
    for (;;)
    {
      a(k);
      g = exa.a();
      a = 101;
      b(d);
      break;
      k = 0;
      label199:
      while (k == 0)
      {
        k = 1;
        break;
      }
      k = 2;
    }
  }
  
  void i()
  {
    try
    {
      a(null, 103);
      return;
    }
    finally {}
  }
  
  public void j()
  {
    try
    {
      if ((a != 102) || (g != exa.a()))
      {
        String str = String.valueOf(b(a));
        ezi.d("BabelGcmRegistration", String.valueOf(str).length() + 73 + "State: " + str + "; not registered or Android Id mismatch. Force new GcmRegistration", new Object[0]);
        a(null, 100);
        h();
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     dwt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */