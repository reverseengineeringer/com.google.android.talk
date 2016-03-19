import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class aib
  implements Closeable
{
  final File a;
  final int b;
  Writer c;
  int d;
  final ThreadPoolExecutor e = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new aid());
  private final File f;
  private final File g;
  private final File h;
  private final int i;
  private long j;
  private long k = 0L;
  private final LinkedHashMap<String, aif> l = new LinkedHashMap(0, 0.75F, true);
  private long m = 0L;
  private final Callable<Void> n = new aic(this);
  
  private aib(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    a = paramFile;
    i = 1;
    f = new File(paramFile, "journal");
    g = new File(paramFile, "journal.tmp");
    h = new File(paramFile, "journal.bkp");
    b = 1;
    j = paramLong;
  }
  
  public static aib a(File paramFile, long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    Object localObject1 = new File(paramFile, "journal.bkp");
    Object localObject2;
    if (((File)localObject1).exists())
    {
      localObject2 = new File(paramFile, "journal");
      if (!((File)localObject2).exists()) {
        break label91;
      }
      ((File)localObject1).delete();
    }
    for (;;)
    {
      localObject1 = new aib(paramFile, 1, 1, paramLong);
      if (!f.exists()) {
        break label195;
      }
      try
      {
        ((aib)localObject1).d();
        ((aib)localObject1).e();
        return (aib)localObject1;
      }
      catch (IOException localIOException)
      {
        label91:
        localObject2 = System.out;
        String str1 = String.valueOf(paramFile);
        String str2 = String.valueOf(localIOException.getMessage());
        ((PrintStream)localObject2).println(String.valueOf(str1).length() + 36 + String.valueOf(str2).length() + "DiskLruCache " + str1 + " is corrupt: " + str2 + ", removing");
        ((aib)localObject1).close();
        aij.a(a);
      }
      a((File)localObject1, (File)localObject2, false);
    }
    label195:
    paramFile.mkdirs();
    paramFile = new aib(paramFile, 1, 1, paramLong);
    paramFile.a();
    return paramFile;
  }
  
  private static void a(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private static void a(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramBoolean) {
      a(paramFile2);
    }
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException();
    }
  }
  
  private aie c(String paramString)
  {
    for (;;)
    {
      aie localaie;
      try
      {
        f();
        aif localaif = (aif)l.get(paramString);
        if (-1L != -1L) {
          if (localaif != null)
          {
            long l1 = g;
            if (l1 == -1L) {}
          }
          else
          {
            paramString = null;
            return paramString;
          }
        }
        if (localaif == null)
        {
          localaif = new aif(this, paramString);
          l.put(paramString, localaif);
          localaie = new aie(this, localaif);
          f = localaie;
          c.append("DIRTY");
          c.append(' ');
          c.append(paramString);
          c.append('\n');
          c.flush();
          paramString = localaie;
          continue;
        }
        localaie = f;
      }
      finally {}
      if (localaie != null) {
        paramString = null;
      }
    }
  }
  
  private void d()
  {
    aih localaih = new aih(new FileInputStream(f), aij.a);
    try
    {
      String str1 = localaih.a();
      localObject3 = localaih.a();
      localObject4 = localaih.a();
      str3 = localaih.a();
      String str4 = localaih.a();
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(localObject3)) || (!Integer.toString(i).equals(localObject4)) || (!Integer.toString(b).equals(str3)) || (!"".equals(str4))) {
        throw new IOException(String.valueOf(str1).length() + 35 + String.valueOf(localObject3).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + "unexpected journal header: [" + str1 + ", " + (String)localObject3 + ", " + str3 + ", " + str4 + "]");
      }
    }
    finally
    {
      Object localObject3;
      Object localObject4;
      String str3;
      aij.a(localaih);
      throw ((Throwable)localObject1);
      int i1 = 0;
      try
      {
        str3 = localaih.a();
        i2 = str3.indexOf(' ');
        if (i2 == -1)
        {
          str2 = String.valueOf(str3);
          if (str2.length() != 0) {
            str2 = "unexpected journal line: ".concat(str2);
          }
        }
      }
      catch (EOFException localEOFException)
      {
        int i2;
        Object localObject2;
        for (;;)
        {
          String str2;
          d = (i1 - l.size());
          if (!localaih.b()) {
            break;
          }
          a();
          aij.a(localaih);
          return;
          localObject2 = new String("unexpected journal line: ");
        }
        int i3 = i2 + 1;
        int i4 = str3.indexOf(' ', i3);
        if (i4 == -1)
        {
          localObject2 = str3.substring(i3);
          if ((i2 == 6) && (str3.startsWith("REMOVE")))
          {
            l.remove(localObject2);
            break label666;
          }
        }
        else
        {
          localObject2 = str3.substring(i3, i4);
        }
        for (;;)
        {
          localObject4 = (aif)l.get(localObject2);
          localObject3 = localObject4;
          if (localObject4 == null)
          {
            localObject3 = new aif(this, (String)localObject2);
            l.put(localObject2, localObject3);
          }
          if ((i4 != -1) && (i2 == 5) && (str3.startsWith("CLEAN")))
          {
            localObject2 = str3.substring(i4 + 1).split(" ");
            e = true;
            f = null;
            ((aif)localObject3).a((String[])localObject2);
            break label666;
          }
          if ((i4 == -1) && (i2 == 5) && (str3.startsWith("DIRTY")))
          {
            f = new aie(this, (aif)localObject3);
            break label666;
          }
          if ((i4 == -1) && (i2 == 4) && (str3.startsWith("READ"))) {
            break label666;
          }
          localObject2 = String.valueOf(str3);
          if (((String)localObject2).length() != 0) {}
          for (localObject2 = "unexpected journal line: ".concat((String)localObject2);; localObject2 = new String("unexpected journal line: ")) {
            throw new IOException((String)localObject2);
          }
          c = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(f, true), aij.a));
          break;
        }
        label666:
        i1 += 1;
      }
    }
  }
  
  private boolean d(String paramString)
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        f();
        aif localaif = (aif)l.get(paramString);
        Object localObject;
        if (localaif != null)
        {
          localObject = f;
          if (localObject == null) {}
        }
        else
        {
          bool = false;
          return bool;
          k -= b[i1];
          b[i1] = 0L;
          i1 += 1;
        }
        if (i1 < b)
        {
          localObject = localaif.a(i1);
          if ((!((File)localObject).exists()) || (((File)localObject).delete())) {
            continue;
          }
          paramString = String.valueOf(localObject);
          throw new IOException(String.valueOf(paramString).length() + 17 + "failed to delete " + paramString);
        }
      }
      finally {}
      d += 1;
      c.append("REMOVE");
      c.append(' ');
      c.append(paramString);
      c.append('\n');
      l.remove(paramString);
      if (b()) {
        e.submit(n);
      }
      boolean bool = true;
    }
  }
  
  private void e()
  {
    a(g);
    Iterator localIterator = l.values().iterator();
    while (localIterator.hasNext())
    {
      aif localaif = (aif)localIterator.next();
      int i1;
      if (f == null)
      {
        i1 = 0;
        while (i1 < b)
        {
          k += b[i1];
          i1 += 1;
        }
      }
      else
      {
        f = null;
        i1 = 0;
        while (i1 < b)
        {
          a(localaif.a(i1));
          a(localaif.b(i1));
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private void f()
  {
    if (c == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  /* Error */
  public aig a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: invokespecial 191	aib:f	()V
    //   9: aload_0
    //   10: getfield 44	aib:l	Ljava/util/LinkedHashMap;
    //   13: aload_1
    //   14: invokevirtual 195	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   17: checkcast 197	aif
    //   20: astore 6
    //   22: aload 6
    //   24: ifnonnull +12 -> 36
    //   27: aload 5
    //   29: astore 4
    //   31: aload_0
    //   32: monitorexit
    //   33: aload 4
    //   35: areturn
    //   36: aload 5
    //   38: astore 4
    //   40: aload 6
    //   42: getfield 319	aif:e	Z
    //   45: ifeq -14 -> 31
    //   48: aload 6
    //   50: getfield 384	aif:c	[Ljava/io/File;
    //   53: astore 7
    //   55: aload 7
    //   57: arraylength
    //   58: istore_3
    //   59: iconst_0
    //   60: istore_2
    //   61: iload_2
    //   62: iload_3
    //   63: if_icmpge +24 -> 87
    //   66: aload 5
    //   68: astore 4
    //   70: aload 7
    //   72: iload_2
    //   73: aaload
    //   74: invokevirtual 114	java/io/File:exists	()Z
    //   77: ifeq -46 -> 31
    //   80: iload_2
    //   81: iconst_1
    //   82: iadd
    //   83: istore_2
    //   84: goto -23 -> 61
    //   87: aload_0
    //   88: aload_0
    //   89: getfield 287	aib:d	I
    //   92: iconst_1
    //   93: iadd
    //   94: putfield 287	aib:d	I
    //   97: aload_0
    //   98: getfield 218	aib:c	Ljava/io/Writer;
    //   101: ldc_w 324
    //   104: invokevirtual 225	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   107: pop
    //   108: aload_0
    //   109: getfield 218	aib:c	Ljava/io/Writer;
    //   112: bipush 32
    //   114: invokevirtual 228	java/io/Writer:append	(C)Ljava/io/Writer;
    //   117: pop
    //   118: aload_0
    //   119: getfield 218	aib:c	Ljava/io/Writer;
    //   122: aload_1
    //   123: invokevirtual 225	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   126: pop
    //   127: aload_0
    //   128: getfield 218	aib:c	Ljava/io/Writer;
    //   131: bipush 10
    //   133: invokevirtual 228	java/io/Writer:append	(C)Ljava/io/Writer;
    //   136: pop
    //   137: aload_0
    //   138: invokevirtual 348	aib:b	()Z
    //   141: ifeq +15 -> 156
    //   144: aload_0
    //   145: getfield 67	aib:e	Ljava/util/concurrent/ThreadPoolExecutor;
    //   148: aload_0
    //   149: getfield 74	aib:n	Ljava/util/concurrent/Callable;
    //   152: invokevirtual 352	java/util/concurrent/ThreadPoolExecutor:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   155: pop
    //   156: new 386	aig
    //   159: dup
    //   160: aload_0
    //   161: aload_1
    //   162: aload 6
    //   164: getfield 201	aif:g	J
    //   167: aload 6
    //   169: getfield 384	aif:c	[Ljava/io/File;
    //   172: aload 6
    //   174: getfield 342	aif:b	[J
    //   177: invokespecial 389	aig:<init>	(Laib;Ljava/lang/String;J[Ljava/io/File;[J)V
    //   180: astore 4
    //   182: goto -151 -> 31
    //   185: astore_1
    //   186: aload_0
    //   187: monitorexit
    //   188: aload_1
    //   189: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	190	0	this	aib
    //   0	190	1	paramString	String
    //   60	24	2	i1	int
    //   58	6	3	i2	int
    //   29	152	4	localObject1	Object
    //   1	66	5	localObject2	Object
    //   20	153	6	localaif	aif
    //   53	18	7	arrayOfFile	File[]
    // Exception table:
    //   from	to	target	type
    //   5	22	185	finally
    //   40	59	185	finally
    //   70	80	185	finally
    //   87	156	185	finally
    //   156	182	185	finally
  }
  
  void a()
  {
    for (;;)
    {
      String str1;
      try
      {
        if (c != null) {
          c.close();
        }
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(g), aij.a));
        try
        {
          localBufferedWriter.write("libcore.io.DiskLruCache");
          localBufferedWriter.write("\n");
          localBufferedWriter.write("1");
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(i));
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(b));
          localBufferedWriter.write("\n");
          localBufferedWriter.write("\n");
          Iterator localIterator = l.values().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localObject3 = (aif)localIterator.next();
          if (f != null)
          {
            str1 = String.valueOf("DIRTY ");
            localObject3 = a;
            localBufferedWriter.write(String.valueOf(str1).length() + 1 + String.valueOf(localObject3).length() + str1 + (String)localObject3 + "\n");
            continue;
            localObject1 = finally;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
        str1 = String.valueOf("CLEAN ");
      }
      finally {}
      String str2 = a;
      Object localObject3 = String.valueOf(((aif)localObject3).a());
      ((Writer)localObject1).write(String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + String.valueOf(localObject3).length() + str1 + str2 + (String)localObject3 + "\n");
    }
    ((Writer)localObject1).close();
    if (f.exists()) {
      a(f, h, true);
    }
    a(g, f, false);
    h.delete();
    c = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(f, true), aij.a));
  }
  
  void a(aie paramaie, boolean paramBoolean)
  {
    int i3 = 0;
    aif localaif;
    try
    {
      localaif = a;
      if (f != paramaie) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i2 = i3;
    if (paramBoolean)
    {
      i2 = i3;
      if (!e)
      {
        int i1 = 0;
        for (;;)
        {
          i2 = i3;
          if (i1 >= b) {
            break;
          }
          if (b[i1] == 0)
          {
            paramaie.c();
            throw new IllegalStateException(61 + "Newly created entry didn't create value for index " + i1);
          }
          if (!localaif.b(i1).exists())
          {
            paramaie.c();
            return;
          }
          i1 += 1;
        }
      }
    }
    for (;;)
    {
      long l1;
      if (i2 < b)
      {
        paramaie = localaif.b(i2);
        if (paramBoolean)
        {
          if (paramaie.exists())
          {
            File localFile = localaif.a(i2);
            paramaie.renameTo(localFile);
            l1 = b[i2];
            long l2 = localFile.length();
            b[i2] = l2;
            k = (k - l1 + l2);
          }
        }
        else {
          a(paramaie);
        }
      }
      else
      {
        d += 1;
        f = null;
        if ((e | paramBoolean))
        {
          e = true;
          c.append("CLEAN");
          c.append(' ');
          c.append(a);
          c.append(localaif.a());
          c.append('\n');
          if (paramBoolean)
          {
            l1 = m;
            m = (1L + l1);
            g = l1;
          }
        }
        for (;;)
        {
          c.flush();
          if ((k <= j) && (!b())) {
            break;
          }
          e.submit(n);
          break;
          l.remove(a);
          c.append("REMOVE");
          c.append(' ');
          c.append(a);
          c.append('\n');
        }
      }
      i2 += 1;
    }
  }
  
  public aie b(String paramString)
  {
    return c(paramString);
  }
  
  boolean b()
  {
    return (d >= 2000) && (d >= l.size());
  }
  
  void c()
  {
    while (k > j) {
      d((String)((Map.Entry)l.entrySet().iterator().next()).getKey());
    }
  }
  
  public void close()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = c;
        if (localObject1 == null) {
          return;
        }
        localObject1 = new ArrayList(l.values()).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          aif localaif = (aif)((Iterator)localObject1).next();
          if (f == null) {
            continue;
          }
          f.c();
          continue;
        }
        c();
      }
      finally {}
      c.close();
      c = null;
    }
  }
}

/* Location:
 * Qualified Name:     aib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */