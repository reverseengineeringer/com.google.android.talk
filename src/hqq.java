import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import android.util.SparseArray;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class hqq
  implements hpz
{
  public static final hrg c = new hrg();
  public final SharedPreferences b;
  private List<hqf> d;
  private final List<hqg> e = new ArrayList();
  private final List<hqh> f = new ArrayList();
  private List<hpx> g;
  private final Context h;
  private boolean i = true;
  private boolean j;
  private final SparseArray<hqb> k = new SparseArray();
  private final Runnable l = new hqr(this);
  
  hqq(Context paramContext)
  {
    this(paramContext, paramContext.getSharedPreferences("accounts", 0));
  }
  
  private hqq()
  {
    Context localContext;
    h = localContext;
    SharedPreferences localSharedPreferences;
    b = localSharedPreferences;
    d = null;
  }
  
  private void g()
  {
    int i1 = 0;
    if (!j)
    {
      j = true;
      if (d == null) {
        d = ilh.c(h, hqf.class);
      }
      Object localObject1 = f;
      ((List)localObject1).add(new hqt(this));
      ((List)localObject1).add(new hqu(this));
      ((List)localObject1).add(new hqv(this));
      ((List)localObject1).add(new hqw(this));
      ((List)localObject1).add(new hqx(this));
      ((List)localObject1).add(new hqy(this));
      localObject1 = d.iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((hqf)((Iterator)localObject1).next()).a(f);
      }
      int m;
      if (!b.contains("AccountStore#upgradeAccountCreated"))
      {
        localObject1 = b.edit();
        ((SharedPreferences.Editor)localObject1).putBoolean("AccountStore#upgradeAccountCreated", true);
        n = b.getInt("count", 0);
        m = 0;
        while (m < n)
        {
          localObject2 = b;
          localObject3 = String.valueOf("gaia_id");
          if (((SharedPreferences)localObject2).contains(String.valueOf(localObject3).length() + 12 + m + "." + (String)localObject3))
          {
            localObject2 = String.valueOf("created");
            ((SharedPreferences.Editor)localObject1).putBoolean(String.valueOf(localObject2).length() + 12 + m + "." + (String)localObject2, true);
          }
          m += 1;
        }
        ((SharedPreferences.Editor)localObject1).apply();
      }
      e();
      localObject1 = b.edit();
      Object localObject2 = new SparseArray();
      Object localObject3 = a().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        m = ((Integer)((Iterator)localObject3).next()).intValue();
        ((SparseArray)localObject2).put(m, new hqc(this, m));
      }
      localObject3 = f.iterator();
      Object localObject4;
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = ((hqh)((Iterator)localObject3).next()).a();
        if (b.contains((String)localObject4))
        {
          m = 0;
          while (m < ((SparseArray)localObject2).size())
          {
            ((hqc)((SparseArray)localObject2).valueAt(m)).b((String)localObject4, true);
            m += 1;
          }
          ((SharedPreferences.Editor)localObject1).remove((String)localObject4);
        }
      }
      int n = 0;
      for (;;)
      {
        m = i1;
        if (n >= ((SparseArray)localObject2).size()) {
          break;
        }
        localObject3 = (hqc)((SparseArray)localObject2).valueAt(n);
        localObject4 = f.iterator();
        while (((Iterator)localObject4).hasNext())
        {
          hqh localhqh = (hqh)((Iterator)localObject4).next();
          String str = localhqh.a();
          if (!((hqc)localObject3).a(str))
          {
            localhqh.a(h, (hqe)localObject3);
            ((hqc)localObject3).b(str, true);
          }
        }
        n += 1;
      }
      while (m < ((SparseArray)localObject2).size())
      {
        n = ((SparseArray)localObject2).keyAt(m);
        ((hqc)((SparseArray)localObject2).valueAt(m)).a(n, (SharedPreferences.Editor)localObject1);
        m += 1;
      }
      ((SharedPreferences.Editor)localObject1).apply();
      e();
    }
  }
  
  private void h()
  {
    if (!i) {
      return;
    }
    g();
    int n = b.getInt("count", 0);
    k.clear();
    int m = 0;
    while (m < n)
    {
      SharedPreferences localSharedPreferences = b;
      String str = String.valueOf("created");
      if (localSharedPreferences.contains(String.valueOf(str).length() + 12 + m + "." + str)) {
        k.put(m, new hqz(this, m));
      }
      m += 1;
    }
    i = false;
  }
  
  private void i(int paramInt)
  {
    SharedPreferences.Editor localEditor = b.edit();
    Iterator localIterator = b.getAll().keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if ((str.startsWith("key.")) && (b.getInt(str, -1) == paramInt)) {
        localEditor.remove(str);
      }
    }
    localEditor.apply();
  }
  
  private void j(int paramInt)
  {
    int n = 1;
    int m = 0;
    for (;;)
    {
      try
      {
        Object localObject = new File(new File(h.getFilesDir(), "account-blobs"), String.format("account-%d", new Object[] { Integer.valueOf(paramInt) }));
        paramInt = n;
        if (!((File)localObject).isDirectory())
        {
          if (((File)localObject).mkdirs()) {
            paramInt = n;
          }
        }
        else
        {
          if (paramInt == 0)
          {
            localObject = String.valueOf(localObject);
            throw new IOException(String.valueOf(localObject).length() + 35 + "Could not create account blob dir: " + (String)localObject);
          }
          String[] arrayOfString = ((File)localObject).list();
          paramInt = m;
          if (paramInt < arrayOfString.length)
          {
            new File((File)localObject, arrayOfString[paramInt]).delete();
            paramInt += 1;
            continue;
          }
          ((File)localObject).delete();
          return;
        }
      }
      catch (IOException localIOException)
      {
        return;
      }
      paramInt = 0;
    }
  }
  
  public hqb a(int paramInt)
  {
    try
    {
      h();
      hqb localhqb1 = (hqb)k.get(paramInt);
      if (localhqb1 == null) {
        throw new hqd(28 + "No such account: " + paramInt);
      }
    }
    finally {}
    return localhqb2;
  }
  
  public hqc a(String paramString)
  {
    return a(paramString, null);
  }
  
  public hqc a(String paramString1, String paramString2)
  {
    boolean bool = true;
    hqc localhqc;
    for (;;)
    {
      try
      {
        g();
        localhqc = new hqc(this, -1);
        localhqc.b("created", true);
        localhqc.b("account_name", paramString1);
        localhqc.b("effective_gaia_id", paramString2);
        if (paramString2 != null)
        {
          localhqc.b("is_managed_account", bool);
          paramString1 = d.iterator();
          if (!paramString1.hasNext()) {
            break;
          }
          ((hqf)paramString1.next()).a(h, localhqc);
          continue;
        }
        bool = false;
      }
      finally {}
    }
    paramString1 = f.iterator();
    while (paramString1.hasNext()) {
      localhqc.b(((hqh)paramString1.next()).a(), true);
    }
    return localhqc;
  }
  
  public List<Integer> a()
  {
    try
    {
      h();
      int n = k.size();
      ArrayList localArrayList = new ArrayList(n);
      int m = 0;
      while (m < n)
      {
        localArrayList.add(Integer.valueOf(k.keyAt(m)));
        m += 1;
      }
      return localArrayList;
    }
    finally {}
  }
  
  public List<Integer> a(Comparator<hqb> paramComparator)
  {
    try
    {
      List localList = a();
      Collections.sort(localList, new hqs(this, paramComparator));
      return localList;
    }
    finally
    {
      paramComparator = finally;
      throw paramComparator;
    }
  }
  
  public List<Integer> a(String... paramVarArgs)
  {
    for (;;)
    {
      try
      {
        h();
        int i1 = k.size();
        ArrayList localArrayList = new ArrayList(i1);
        int m = 0;
        if (m < i1)
        {
          hqb localhqb = (hqb)k.valueAt(m);
          n = 0;
          if (n <= 0)
          {
            if (!localhqb.d(paramVarArgs[n]))
            {
              n = 0;
              if (n != 0) {
                localArrayList.add(Integer.valueOf(k.keyAt(m)));
              }
              m += 1;
              continue;
            }
            n += 1;
            continue;
          }
        }
        else
        {
          return localArrayList;
        }
      }
      finally {}
      int n = 1;
    }
  }
  
  public void a(hqg paramhqg)
  {
    try
    {
      aal.w();
      e.add(paramhqg);
      return;
    }
    finally
    {
      paramhqg = finally;
      throw paramhqg;
    }
  }
  
  public void a(String paramString, int paramInt)
  {
    if ((paramInt != -1) && (!c(paramInt))) {
      throw new hqd(35 + "Account does not exist: " + paramInt);
    }
    SharedPreferences.Editor localEditor = b.edit();
    String str = String.valueOf("key.");
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {}
    for (paramString = str.concat(paramString);; paramString = new String(str))
    {
      localEditor.putInt(paramString, paramInt).apply();
      f();
      return;
    }
  }
  
  public int b(String paramString)
  {
    try
    {
      int m = b(paramString, null);
      return m;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  public int b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 308	hqq:h	()V
    //   6: aload_0
    //   7: getfield 66	hqq:k	Landroid/util/SparseArray;
    //   10: astore 4
    //   12: iconst_0
    //   13: istore_3
    //   14: iload_3
    //   15: aload 4
    //   17: invokevirtual 216	android/util/SparseArray:size	()I
    //   20: if_icmpge +66 -> 86
    //   23: aload 4
    //   25: iload_3
    //   26: invokevirtual 220	android/util/SparseArray:valueAt	(I)Ljava/lang/Object;
    //   29: checkcast 313	hqb
    //   32: astore 5
    //   34: aload 5
    //   36: ldc_w 324
    //   39: invokeinterface 379 2 0
    //   44: aload_1
    //   45: invokestatic 385	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   48: ifeq +31 -> 79
    //   51: aload 5
    //   53: ldc_w 328
    //   56: invokeinterface 379 2 0
    //   61: aload_2
    //   62: invokestatic 385	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   65: ifeq +14 -> 79
    //   68: aload 4
    //   70: iload_3
    //   71: invokevirtual 236	android/util/SparseArray:keyAt	(I)I
    //   74: istore_3
    //   75: aload_0
    //   76: monitorexit
    //   77: iload_3
    //   78: ireturn
    //   79: iload_3
    //   80: iconst_1
    //   81: iadd
    //   82: istore_3
    //   83: goto -69 -> 14
    //   86: iconst_m1
    //   87: istore_3
    //   88: goto -13 -> 75
    //   91: astore_1
    //   92: aload_0
    //   93: monitorexit
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	hqq
    //   0	96	1	paramString1	String
    //   0	96	2	paramString2	String
    //   13	75	3	m	int
    //   10	59	4	localSparseArray	SparseArray
    //   32	20	5	localhqb	hqb
    // Exception table:
    //   from	to	target	type
    //   2	12	91	finally
    //   14	75	91	finally
  }
  
  public hqc b(int paramInt)
  {
    try
    {
      if (!c(paramInt)) {
        throw new hqd(28 + "No such account: " + paramInt);
      }
    }
    finally {}
    hqc localhqc = new hqc(this, paramInt);
    return localhqc;
  }
  
  public String b()
  {
    return new hrf(this).a();
  }
  
  public void b(hqg paramhqg)
  {
    try
    {
      aal.w();
      e.remove(paramhqg);
      return;
    }
    finally
    {
      paramhqg = finally;
      throw paramhqg;
    }
  }
  
  /* Error */
  public int c(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 308	hqq:h	()V
    //   6: aload_0
    //   7: getfield 66	hqq:k	Landroid/util/SparseArray;
    //   10: astore_3
    //   11: iconst_0
    //   12: istore_2
    //   13: iload_2
    //   14: aload_3
    //   15: invokevirtual 216	android/util/SparseArray:size	()I
    //   18: if_icmpge +59 -> 77
    //   21: aload_3
    //   22: iload_2
    //   23: invokevirtual 220	android/util/SparseArray:valueAt	(I)Ljava/lang/Object;
    //   26: checkcast 313	hqb
    //   29: astore 4
    //   31: aload 4
    //   33: ldc -99
    //   35: invokeinterface 379 2 0
    //   40: aload_1
    //   41: invokestatic 385	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   44: ifeq +26 -> 70
    //   47: aload 4
    //   49: ldc_w 330
    //   52: invokeinterface 349 2 0
    //   57: ifne +13 -> 70
    //   60: aload_3
    //   61: iload_2
    //   62: invokevirtual 236	android/util/SparseArray:keyAt	(I)I
    //   65: istore_2
    //   66: aload_0
    //   67: monitorexit
    //   68: iload_2
    //   69: ireturn
    //   70: iload_2
    //   71: iconst_1
    //   72: iadd
    //   73: istore_2
    //   74: goto -61 -> 13
    //   77: iconst_m1
    //   78: istore_2
    //   79: goto -13 -> 66
    //   82: astore_1
    //   83: aload_0
    //   84: monitorexit
    //   85: aload_1
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	hqq
    //   0	87	1	paramString	String
    //   12	67	2	m	int
    //   10	51	3	localSparseArray	SparseArray
    //   29	19	4	localhqb	hqb
    // Exception table:
    //   from	to	target	type
    //   2	11	82	finally
    //   13	66	82	finally
  }
  
  public List<hpx> c()
  {
    try
    {
      if (g == null) {
        g = ilh.c(h, hpx.class);
      }
      List localList = g;
      return localList;
    }
    finally {}
  }
  
  /* Error */
  public boolean c(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 308	hqq:h	()V
    //   6: aload_0
    //   7: getfield 66	hqq:k	Landroid/util/SparseArray;
    //   10: iload_1
    //   11: invokevirtual 311	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   14: astore_3
    //   15: aload_3
    //   16: ifnull +9 -> 25
    //   19: iconst_1
    //   20: istore_2
    //   21: aload_0
    //   22: monitorexit
    //   23: iload_2
    //   24: ireturn
    //   25: iconst_0
    //   26: istore_2
    //   27: goto -6 -> 21
    //   30: astore_3
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_3
    //   34: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	this	hqq
    //   0	35	1	paramInt	int
    //   20	7	2	bool	boolean
    //   14	2	3	localObject1	Object
    //   30	4	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	15	30	finally
  }
  
  public int d()
  {
    try
    {
      int m = b.getInt("count", 0);
      b.edit().putInt("count", m + 1).apply();
      return m;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int d(String paramString)
  {
    SharedPreferences localSharedPreferences = b;
    String str = String.valueOf("key.");
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {}
    for (paramString = str.concat(paramString);; paramString = new String(str)) {
      return localSharedPreferences.getInt(paramString, -1);
    }
  }
  
  /* Error */
  public boolean d(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: invokevirtual 360	hqq:c	(I)Z
    //   7: ifeq +24 -> 31
    //   10: aload_0
    //   11: iload_1
    //   12: invokevirtual 399	hqq:a	(I)Lhqb;
    //   15: invokeinterface 401 1 0
    //   20: istore_2
    //   21: iload_2
    //   22: ifeq +9 -> 31
    //   25: iconst_1
    //   26: istore_2
    //   27: aload_0
    //   28: monitorexit
    //   29: iload_2
    //   30: ireturn
    //   31: iconst_0
    //   32: istore_2
    //   33: goto -6 -> 27
    //   36: astore_3
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_3
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	hqq
    //   0	41	1	paramInt	int
    //   20	13	2	bool	boolean
    //   36	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	21	36	finally
  }
  
  public void e()
  {
    try
    {
      i = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public boolean e(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: invokevirtual 360	hqq:c	(I)Z
    //   7: ifeq +24 -> 31
    //   10: aload_0
    //   11: iload_1
    //   12: invokevirtual 399	hqq:a	(I)Lhqb;
    //   15: invokeinterface 403 1 0
    //   20: istore_2
    //   21: iload_2
    //   22: ifeq +9 -> 31
    //   25: iconst_1
    //   26: istore_2
    //   27: aload_0
    //   28: monitorexit
    //   29: iload_2
    //   30: ireturn
    //   31: iconst_0
    //   32: istore_2
    //   33: goto -6 -> 27
    //   36: astore_3
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_3
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	hqq
    //   0	41	1	paramInt	int
    //   20	13	2	bool	boolean
    //   36	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	21	36	finally
  }
  
  public void f()
  {
    if (!aal.v()) {
      aal.b(l);
    }
    for (;;)
    {
      return;
      int n = e.size();
      hqg[] arrayOfhqg = (hqg[])e.toArray(new hqg[n]);
      int m = 0;
      while (m < n)
      {
        arrayOfhqg[m].Y_();
        m += 1;
      }
    }
  }
  
  public void f(int paramInt)
  {
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext()) {
      ((hpx)localIterator.next()).c(paramInt);
    }
    g(paramInt);
    f();
  }
  
  public void g(int paramInt)
  {
    try
    {
      if (Log.isLoggable("AccountStore", 3)) {
        new StringBuilder(28).append("Removing account ").append(paramInt);
      }
      j(paramInt);
      i(paramInt);
      h(paramInt);
      e();
      return;
    }
    finally {}
  }
  
  public void h(int paramInt)
  {
    String str1 = 12 + paramInt + ".";
    SharedPreferences.Editor localEditor = b.edit();
    Iterator localIterator = b.getAll().entrySet().iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)((Map.Entry)localIterator.next()).getKey();
      if (str2.startsWith(str1)) {
        localEditor.remove(str2);
      }
    }
    localEditor.apply();
  }
}

/* Location:
 * Qualified Name:     hqq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */