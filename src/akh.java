import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

final class akh<R>
  implements akf, avy, Comparable<akh<?>>, Runnable
{
  private volatile ake A;
  private volatile boolean B;
  private volatile boolean C;
  final akg<R> a = new akg();
  final akk<?> b = new akk();
  aiw c;
  int d;
  int e;
  akr f;
  aja g;
  aiw h;
  private final List<Exception> i = new ArrayList();
  private final awa j = new awb();
  private final akl k;
  private final ic<akh<?>> l;
  private final akm m = new akm();
  private ahm n;
  private ahs o;
  private ali p;
  private akj<R> q;
  private int r;
  private ako s;
  private akn t;
  private long u;
  private Thread v;
  private aiw w;
  private Object x;
  private air y;
  private ajf<?> z;
  
  akh(akl paramakl, ic<akh<?>> paramic)
  {
    k = paramakl;
    l = paramic;
  }
  
  private ako a(ako paramako)
  {
    for (;;)
    {
      switch (aki.b[paramako.ordinal()])
      {
      default: 
        paramako = String.valueOf(paramako);
        throw new IllegalArgumentException(String.valueOf(paramako).length() + 20 + "Unrecognized stage: " + paramako);
      case 5: 
        if (f.a()) {
          return ako.b;
        }
        paramako = ako.b;
        break;
      case 1: 
        if (f.b()) {
          return ako.c;
        }
        paramako = ako.c;
      }
    }
    return ako.d;
    return ako.f;
  }
  
  private <Data> alr<R> a(ajf<?> paramajf, Data paramData, air paramair)
  {
    if (paramData == null)
    {
      paramajf.a();
      return null;
    }
    try
    {
      long l1 = avm.a();
      paramData = a(paramData, paramair, a.b(paramData.getClass()));
      if (Log.isLoggable("DecodeJob", 2))
      {
        paramair = String.valueOf(paramData);
        a(String.valueOf(paramair).length() + 15 + "Decoded result " + paramair, l1, null);
      }
      return paramData;
    }
    finally
    {
      paramajf.a();
    }
  }
  
  private <Data, ResourceType> alr<R> a(Data paramData, air paramair, alo<Data, ResourceType, R> paramalo)
  {
    paramData = n.c().b(paramData);
    try
    {
      paramair = paramalo.a(paramData, g, d, e, new akq(this, paramair));
      return paramair;
    }
    finally
    {
      paramData.b();
    }
  }
  
  private void a(String paramString1, long paramLong, String paramString2)
  {
    double d1 = avm.a(paramLong);
    String str1 = String.valueOf(p);
    if (paramString2 != null)
    {
      paramString2 = String.valueOf(paramString2);
      if (paramString2.length() != 0) {
        paramString2 = ", ".concat(paramString2);
      }
    }
    for (;;)
    {
      String str2 = String.valueOf(Thread.currentThread().getName());
      new StringBuilder(String.valueOf(paramString1).length() + 50 + String.valueOf(str1).length() + String.valueOf(paramString2).length() + String.valueOf(str2).length()).append(paramString1).append(" in ").append(d1).append(", load key: ").append(str1).append(paramString2).append(", thread: ").append(str2);
      return;
      paramString2 = new String(", ");
      continue;
      paramString2 = "";
    }
  }
  
  private void e()
  {
    if (m.a()) {
      f();
    }
  }
  
  private void f()
  {
    m.c();
    b.b();
    a.a();
    B = false;
    n = null;
    c = null;
    g = null;
    o = null;
    p = null;
    q = null;
    s = null;
    A = null;
    v = null;
    h = null;
    x = null;
    y = null;
    z = null;
    u = 0L;
    C = false;
    i.clear();
    l.a(this);
  }
  
  private ake g()
  {
    switch (aki.b[s.ordinal()])
    {
    default: 
      String str = String.valueOf(s);
      throw new IllegalStateException(String.valueOf(str).length() + 20 + "Unrecognized stage: " + str);
    case 1: 
      return new als(a, this);
    case 2: 
      return new akc(a, this);
    case 3: 
      return new alw(a, this);
    }
    return null;
  }
  
  private void h()
  {
    v = Thread.currentThread();
    u = avm.a();
    boolean bool1 = false;
    boolean bool2;
    do
    {
      bool2 = bool1;
      if (C) {
        break;
      }
      bool2 = bool1;
      if (A == null) {
        break;
      }
      bool1 = A.a();
      bool2 = bool1;
      if (bool1) {
        break;
      }
      s = a(s);
      A = g();
    } while (s != ako.d);
    c();
    while (((s != ako.f) && (!C)) || (bool2)) {
      return;
    }
    i();
  }
  
  private void i()
  {
    j();
    alm localalm = new alm("Failed to load resource", new ArrayList(i));
    q.a(localalm);
    if (m.b()) {
      f();
    }
  }
  
  private void j()
  {
    j.a();
    if (B) {
      throw new IllegalStateException("Already notified");
    }
    B = true;
  }
  
  /* Error */
  private void k()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: ldc -67
    //   5: iconst_2
    //   6: invokestatic 195	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   9: ifeq +112 -> 121
    //   12: aload_0
    //   13: getfield 297	akh:u	J
    //   16: lstore_1
    //   17: aload_0
    //   18: getfield 291	akh:x	Ljava/lang/Object;
    //   21: invokestatic 127	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   24: astore_3
    //   25: aload_0
    //   26: getfield 289	akh:h	Laiw;
    //   29: invokestatic 127	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   32: astore 5
    //   34: aload_0
    //   35: getfield 295	akh:z	Lajf;
    //   38: invokestatic 127	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   41: astore 6
    //   43: aload_0
    //   44: ldc_w 359
    //   47: lload_1
    //   48: new 131	java/lang/StringBuilder
    //   51: dup
    //   52: aload_3
    //   53: invokestatic 127	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   56: invokevirtual 134	java/lang/String:length	()I
    //   59: bipush 30
    //   61: iadd
    //   62: aload 5
    //   64: invokestatic 127	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   67: invokevirtual 134	java/lang/String:length	()I
    //   70: iadd
    //   71: aload 6
    //   73: invokestatic 127	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   76: invokevirtual 134	java/lang/String:length	()I
    //   79: iadd
    //   80: invokespecial 137	java/lang/StringBuilder:<init>	(I)V
    //   83: ldc_w 361
    //   86: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: aload_3
    //   90: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc_w 363
    //   96: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: aload 5
    //   101: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: ldc_w 365
    //   107: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: aload 6
    //   112: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: invokevirtual 147	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   118: invokespecial 200	akh:a	(Ljava/lang/String;JLjava/lang/String;)V
    //   121: aload_0
    //   122: aload_0
    //   123: getfield 295	akh:z	Lajf;
    //   126: aload_0
    //   127: getfield 291	akh:x	Ljava/lang/Object;
    //   130: aload_0
    //   131: getfield 293	akh:y	Lair;
    //   134: invokespecial 367	akh:a	(Lajf;Ljava/lang/Object;Lair;)Lalr;
    //   137: astore_3
    //   138: aload_3
    //   139: ifnull +142 -> 281
    //   142: aload_0
    //   143: getfield 293	akh:y	Lair;
    //   146: astore 6
    //   148: aload_3
    //   149: astore 5
    //   151: aload_0
    //   152: getfield 97	akh:b	Lakk;
    //   155: invokevirtual 368	akk:a	()Z
    //   158: ifeq +13 -> 171
    //   161: aload_3
    //   162: invokestatic 373	alp:a	(Lalr;)Lalp;
    //   165: astore 4
    //   167: aload 4
    //   169: astore 5
    //   171: aload_0
    //   172: invokespecial 336	akh:j	()V
    //   175: aload_0
    //   176: getfield 281	akh:q	Lakj;
    //   179: aload 5
    //   181: aload 6
    //   183: invokeinterface 376 3 0
    //   188: aload_0
    //   189: getstatic 378	ako:e	Lako;
    //   192: putfield 283	akh:s	Lako;
    //   195: aload_0
    //   196: getfield 97	akh:b	Lakk;
    //   199: invokevirtual 368	akk:a	()Z
    //   202: ifeq +18 -> 220
    //   205: aload_0
    //   206: getfield 97	akh:b	Lakk;
    //   209: aload_0
    //   210: getfield 104	akh:k	Lakl;
    //   213: aload_0
    //   214: getfield 215	akh:g	Laja;
    //   217: invokevirtual 381	akk:a	(Lakl;Laja;)V
    //   220: aload 4
    //   222: ifnull +8 -> 230
    //   225: aload 4
    //   227: invokevirtual 382	alp:a	()V
    //   230: aload_0
    //   231: invokespecial 384	akh:e	()V
    //   234: return
    //   235: astore_3
    //   236: aload_3
    //   237: aload_0
    //   238: getfield 386	akh:w	Laiw;
    //   241: aload_0
    //   242: getfield 293	akh:y	Lair;
    //   245: invokevirtual 389	alm:a	(Laiw;Lair;)V
    //   248: aload_0
    //   249: getfield 87	akh:i	Ljava/util/List;
    //   252: aload_3
    //   253: invokeinterface 392 2 0
    //   258: pop
    //   259: aconst_null
    //   260: astore_3
    //   261: goto -123 -> 138
    //   264: astore_3
    //   265: aload 4
    //   267: ifnull +8 -> 275
    //   270: aload 4
    //   272: invokevirtual 382	alp:a	()V
    //   275: aload_0
    //   276: invokespecial 384	akh:e	()V
    //   279: aload_3
    //   280: athrow
    //   281: aload_0
    //   282: invokespecial 394	akh:h	()V
    //   285: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	286	0	this	akh
    //   16	32	1	l1	long
    //   24	138	3	localObject1	Object
    //   235	18	3	localalm	alm
    //   260	1	3	localObject2	Object
    //   264	16	3	localObject3	Object
    //   1	270	4	localalp	alp
    //   32	148	5	localObject4	Object
    //   41	141	6	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   121	138	235	alm
    //   195	220	264	finally
  }
  
  akh<R> a(ahm paramahm, Object paramObject, ali paramali, aiw paramaiw, int paramInt1, int paramInt2, Class<?> paramClass, Class<R> paramClass1, ahs paramahs, akr paramakr, Map<Class<?>, ajd<?>> paramMap, boolean paramBoolean, aja paramaja, akj<R> paramakj, int paramInt3)
  {
    a.a(paramahm, paramObject, paramaiw, paramInt1, paramInt2, paramakr, paramClass, paramClass1, paramahs, paramaja, paramMap, paramBoolean, k);
    n = paramahm;
    c = paramaiw;
    o = paramahs;
    p = paramali;
    d = paramInt1;
    e = paramInt2;
    f = paramakr;
    g = paramaja;
    q = paramakj;
    r = paramInt3;
    t = akn.a;
    return this;
  }
  
  public void a(aiw paramaiw, Exception paramException, ajf<?> paramajf, air paramair)
  {
    paramException = new alm("Fetching data failed", paramException);
    paramException.a(paramaiw, paramair, paramajf.d());
    i.add(paramException);
    if (Thread.currentThread() != v)
    {
      t = akn.b;
      q.a(this);
      return;
    }
    h();
  }
  
  public void a(aiw paramaiw1, Object paramObject, ajf<?> paramajf, air paramair, aiw paramaiw2)
  {
    h = paramaiw1;
    x = paramObject;
    z = paramajf;
    y = paramair;
    w = paramaiw2;
    if (Thread.currentThread() != v)
    {
      t = akn.c;
      q.a(this);
      return;
    }
    k();
  }
  
  void a(boolean paramBoolean)
  {
    if (m.a(paramBoolean)) {
      f();
    }
  }
  
  boolean a()
  {
    ako localako = a(ako.a);
    return (localako == ako.b) || (localako == ako.c);
  }
  
  public void b()
  {
    C = true;
    ake localake = A;
    if (localake != null) {
      localake.b();
    }
  }
  
  public void c()
  {
    t = akn.b;
    q.a(this);
  }
  
  public awa i_()
  {
    return j;
  }
  
  public void run()
  {
    for (;;)
    {
      try
      {
        if (C)
        {
          i();
          return;
        }
        switch (aki.a[t.ordinal()])
        {
        case 1: 
          String str1 = String.valueOf(t);
          throw new IllegalStateException(String.valueOf(str1).length() + 25 + "Unrecognized run reason: " + str1);
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        if (Log.isLoggable("DecodeJob", 3))
        {
          String str2 = String.valueOf("DecodeJob threw unexpectedly, isCancelled: ");
          boolean bool = C;
          String str3 = String.valueOf(s);
          new StringBuilder(String.valueOf(str2).length() + 14 + String.valueOf(str3).length()).append(str2).append(bool).append(", stage: ").append(str3);
        }
        if (s != ako.e) {
          i();
        }
        if (!C)
        {
          throw localRuntimeException;
          s = a(ako.a);
          A = g();
          h();
          return;
          h();
          return;
          k();
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     akh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */