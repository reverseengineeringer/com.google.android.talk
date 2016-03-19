import android.content.Context;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class bdm
{
  private Map<String, List<bcp>> a = new HashMap();
  private final Context b;
  private final ksm<String, bdo> c;
  private final bde d;
  private boolean e;
  
  private bdm(Context paramContext, Map<String, bdo> paramMap, bde parambde)
  {
    b = paramContext;
    if (((paramMap instanceof ksm)) && (!(paramMap instanceof kto)))
    {
      paramContext = (ksm)paramMap;
      if (paramContext.d()) {
        break label75;
      }
    }
    for (;;)
    {
      c = paramContext;
      d = parambde;
      return;
      if ((paramMap instanceof EnumMap))
      {
        paramContext = ksm.a((EnumMap)paramMap);
      }
      else
      {
        label75:
        paramContext = paramMap.entrySet();
        paramMap = ksm.a;
        paramContext = (Map.Entry[])aal.b(paramContext).toArray(paramMap);
        switch (paramContext.length)
        {
        default: 
          paramContext = kxs.a(paramContext.length, paramContext);
          break;
        case 0: 
          paramContext = kxm.b;
          break;
        case 1: 
          paramContext = paramContext[0];
          paramContext = krw.a(paramContext.getKey(), paramContext.getValue());
        }
      }
    }
  }
  
  private bcp a(List<bcp> paramList, bcp parambcp)
  {
    for (;;)
    {
      Object localObject;
      int i;
      try
      {
        localObject = h.a;
        bcj localbcj = bcj.a;
        if (localObject == localbcj)
        {
          parambcp = null;
          return parambcp;
        }
        i = 0;
        if (i >= paramList.size()) {
          break label201;
        }
        localObject = (bcp)paramList.get(i);
        if (f) {
          break label228;
        }
        switch (bdn.a[h.a.ordinal()])
        {
        case 1: 
          paramList = String.valueOf(h.a);
          throw new IllegalStateException(String.valueOf(paramList).length() + 18 + "Unknown coalesce: " + paramList);
        }
      }
      finally {}
      d.a(d);
      parambcp = (bcp)localObject;
      continue;
      paramList.remove(i);
      paramList.add(parambcp);
      d.a(d);
      continue;
      label201:
      paramList.add(parambcp);
      d.a(d);
      continue;
      continue;
      label228:
      i += 1;
    }
  }
  
  public static bdm a(Context paramContext, bde parambde)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = ilh.c(paramContext, bcr.class).iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (bcr)localIterator.next();
      bdo localbdo = new bdo(a, a.isAssignableFrom(bcl.class));
      localHashMap.put(b, localbdo);
      localObject = String.valueOf(b);
      if (((String)localObject).length() != 0) {
        "*** Loaded ".concat((String)localObject);
      } else {
        new String("*** Loaded ");
      }
    }
    int i = localHashMap.size();
    new StringBuilder(27).append("Loaded ").append(i).append(" classes.");
    return new bdm(paramContext, localHashMap, parambde);
  }
  
  public bcp a()
  {
    for (;;)
    {
      long l1;
      try
      {
        int i;
        if (a.size() > 5)
        {
          i = a.size();
          new StringBuilder(57).append("*** Obtaining new task; current task backlog: ").append(i);
        }
        if (e)
        {
          i = a.size();
          new StringBuilder(47).append("Service is stopped. Skipping ").append(i).append(" tasks.");
          localObject3 = null;
          return (bcp)localObject3;
        }
        l1 = SystemClock.elapsedRealtime();
        Object localObject3 = a.entrySet().iterator();
        if (!((Iterator)localObject3).hasNext()) {
          break label275;
        }
        bcp localbcp = (bcp)((List)((Map.Entry)((Iterator)localObject3).next()).getValue()).get(0);
        if ((!f) && (l1 >= d))
        {
          localObject3 = localbcp;
          if (localbcp == null) {
            continue;
          }
          f = true;
          localObject3 = localbcp;
          continue;
        }
        if (f) {
          continue;
        }
      }
      finally {}
      String str = String.valueOf(((bcp)localObject1).a());
      long l2 = d;
      new StringBuilder(String.valueOf(str).length() + 63).append("**** Skipping task: ").append(str).append("; ---- executing in ").append(l2 - l1).append("ms.");
      continue;
      label275:
      Object localObject2 = null;
    }
  }
  
  /* Error */
  public Class<bcn> a(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 37	bdm:c	Lksm;
    //   8: aload_1
    //   9: invokevirtual 266	ksm:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   12: checkcast 195	bdo
    //   15: astore_3
    //   16: aload_3
    //   17: ifnull +27 -> 44
    //   20: iload_2
    //   21: ldc_w 268
    //   24: iconst_1
    //   25: anewarray 4	java/lang/Object
    //   28: dup
    //   29: iconst_0
    //   30: aload_1
    //   31: aastore
    //   32: invokestatic 273	fii:b	(ZLjava/lang/String;[Ljava/lang/Object;)V
    //   35: aload_3
    //   36: getfield 274	bdo:a	Ljava/lang/Class;
    //   39: astore_1
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: areturn
    //   44: iconst_0
    //   45: istore_2
    //   46: goto -26 -> 20
    //   49: astore_1
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_1
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	bdm
    //   0	54	1	paramString	String
    //   1	45	2	bool	boolean
    //   15	21	3	localbdo	bdo
    // Exception table:
    //   from	to	target	type
    //   4	16	49	finally
    //   20	40	49	finally
  }
  
  public void a(bcp parambcp)
  {
    try
    {
      parambcp = c.b();
      List localList = (List)a.get(parambcp);
      if (localList != null)
      {
        localList.remove(0);
        if (localList.isEmpty()) {
          a.remove(parambcp);
        }
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  public boolean a(bcp parambcp, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 26	bdm:a	Ljava/util/Map;
    //   6: invokeinterface 224 1 0
    //   11: iconst_5
    //   12: if_icmple +33 -> 45
    //   15: aload_0
    //   16: getfield 26	bdm:a	Ljava/util/Map;
    //   19: invokeinterface 224 1 0
    //   24: istore_3
    //   25: new 138	java/lang/StringBuilder
    //   28: dup
    //   29: bipush 55
    //   31: invokespecial 144	java/lang/StringBuilder:<init>	(I)V
    //   34: ldc_w 292
    //   37: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: iload_3
    //   41: invokevirtual 229	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   44: pop
    //   45: aload_1
    //   46: getfield 279	bcp:c	Lbcg;
    //   49: invokevirtual 283	bcg:b	()Ljava/lang/String;
    //   52: astore 6
    //   54: aload_0
    //   55: getfield 26	bdm:a	Ljava/util/Map;
    //   58: aload 6
    //   60: invokeinterface 284 2 0
    //   65: checkcast 109	java/util/List
    //   68: astore 5
    //   70: aload 5
    //   72: astore 4
    //   74: aload 5
    //   76: ifnonnull +26 -> 102
    //   79: new 294	java/util/LinkedList
    //   82: dup
    //   83: invokespecial 295	java/util/LinkedList:<init>	()V
    //   86: astore 4
    //   88: aload_0
    //   89: getfield 26	bdm:a	Ljava/util/Map;
    //   92: aload 6
    //   94: aload 4
    //   96: invokeinterface 216 3 0
    //   101: pop
    //   102: aload_0
    //   103: aload 4
    //   105: aload_1
    //   106: invokespecial 297	bdm:a	(Ljava/util/List;Lbcp;)Lbcp;
    //   109: astore 5
    //   111: aload 5
    //   113: ifnull +9 -> 122
    //   116: iconst_0
    //   117: istore_2
    //   118: aload_0
    //   119: monitorexit
    //   120: iload_2
    //   121: ireturn
    //   122: iload_2
    //   123: ifeq +30 -> 153
    //   126: aload 4
    //   128: iconst_0
    //   129: aload_1
    //   130: invokeinterface 300 3 0
    //   135: aload_0
    //   136: getfield 39	bdm:d	Lbde;
    //   139: aload_1
    //   140: getfield 160	bcp:d	J
    //   143: invokeinterface 165 3 0
    //   148: iconst_1
    //   149: istore_2
    //   150: goto -32 -> 118
    //   153: aload 4
    //   155: aload_1
    //   156: invokeinterface 172 2 0
    //   161: pop
    //   162: goto -27 -> 135
    //   165: astore_1
    //   166: aload_0
    //   167: monitorexit
    //   168: aload_1
    //   169: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	170	0	this	bdm
    //   0	170	1	parambcp	bcp
    //   0	170	2	paramBoolean	boolean
    //   24	17	3	i	int
    //   72	82	4	localObject1	Object
    //   68	44	5	localObject2	Object
    //   52	41	6	str	String
    // Exception table:
    //   from	to	target	type
    //   2	45	165	finally
    //   45	70	165	finally
    //   79	102	165	finally
    //   102	111	165	finally
    //   126	135	165	finally
    //   135	148	165	finally
    //   153	162	165	finally
  }
  
  public void b()
  {
    try
    {
      e = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void b(bcp parambcp)
  {
    try
    {
      parambcp = c.b();
      a.remove(parambcp);
      return;
    }
    finally
    {
      parambcp = finally;
      throw parambcp;
    }
  }
  
  public void c()
  {
    try
    {
      int i = a.size();
      if (i > 0)
      {
        ezi.d("Babel_ConcurrentTaskSet", "***************************************************************************", new Object[0]);
        ezi.d("Babel_ConcurrentTaskSet", 74 + "Stopping ConcurrentService while there are " + i + " tasks still pending", new Object[0]);
        ezi.d("Babel_ConcurrentTaskSet", "***************************************************************************", new Object[0]);
      }
      e = true;
      a.clear();
      return;
    }
    finally {}
  }
  
  public boolean d()
  {
    for (;;)
    {
      boolean bool;
      try
      {
        aal.x();
        Object localObject1 = a.entrySet().iterator();
        if (((Iterator)localObject1).hasNext())
        {
          localObject3 = (bcp)((List)((Map.Entry)((Iterator)localObject1).next()).getValue()).get(0);
          if (!f) {
            continue;
          }
          localObject1 = String.valueOf(((bcp)localObject3).a());
          if (((String)localObject1).length() != 0)
          {
            "** Persistence check: Tasks are running: ".concat((String)localObject1);
            bool = false;
            return bool;
          }
          new String("** Persistence check: Tasks are running: ");
          continue;
        }
        localArrayList = new ArrayList();
      }
      finally {}
      ArrayList localArrayList;
      Object localObject3 = a.entrySet().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        Iterator localIterator = ((List)((Map.Entry)((Iterator)localObject3).next()).getValue()).iterator();
        while (localIterator.hasNext())
        {
          bcp localbcp = (bcp)localIterator.next();
          if (h.d)
          {
            Object localObject4 = a(a);
            String str = String.valueOf(localbcp.a());
            new StringBuilder(String.valueOf(str).length() + 28).append("Noting task ").append(str).append(" for persistence");
            localbcp.a((Class)localObject4);
            localObject4 = c;
            localArrayList.add(localbcp);
          }
        }
      }
      a.clear();
      if (!localArrayList.isEmpty()) {
        bool = bcv.a(b, localArrayList);
      } else {
        bool = true;
      }
    }
  }
  
  public void e()
  {
    int i = 0;
    try
    {
      aal.x();
      bcv localbcv = bcv.a(b);
      if (localbcv != null) {
        while (i < f)
        {
          a(g[i], false);
          i += 1;
        }
      }
      return;
    }
    finally {}
  }
  
  public boolean f()
  {
    for (;;)
    {
      try
      {
        long l1 = SystemClock.elapsedRealtime();
        Iterator localIterator = a.entrySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        Object localObject3 = (Map.Entry)localIterator.next();
        Object localObject2 = (List)((Map.Entry)localObject3).getValue();
        localObject3 = String.valueOf((String)((Map.Entry)localObject3).getKey());
        if (((String)localObject3).length() != 0)
        {
          "-- Checking list: ".concat((String)localObject3);
          localObject2 = ((List)localObject2).iterator();
          if (((Iterator)localObject2).hasNext())
          {
            localObject3 = (bcp)((Iterator)localObject2).next();
            String str = String.valueOf(((bcp)localObject3).a());
            bool = f;
            long l2 = d;
            new StringBuilder(String.valueOf(str).length() + 61).append("--- task: ").append(str).append("; isExecuting: ").append(bool).append("; delayMs: ").append(l2 - l1);
          }
        }
        else
        {
          new String("-- Checking list: ");
        }
      }
      finally {}
    }
    boolean bool = a.isEmpty();
    return bool;
  }
}

/* Location:
 * Qualified Name:     bdm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */