import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class cvo
  implements Closeable
{
  private static final Charset e = Charset.forName("UTF-8");
  final File a;
  final int b;
  Writer c;
  int d;
  private final File f;
  private final File g;
  private final int h;
  private final long i;
  private long j = 0L;
  private final LinkedHashMap<String, cvs> k = new LinkedHashMap(0, 0.75F, true);
  private long l = 0L;
  private final ExecutorService m = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final Callable<Void> n = new cvp(this);
  
  private cvo(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    a = paramFile;
    h = 538181937;
    f = new File(paramFile, "journal");
    g = new File(paramFile, "journal.tmp");
    b = 1;
    i = paramLong;
  }
  
  public static cvo a(File paramFile, long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    cvo localcvo = new cvo(paramFile, 538181937, 1, paramLong);
    if (f.exists()) {
      try
      {
        localcvo.d();
        localcvo.e();
        c = new BufferedWriter(new FileWriter(f, true), 8192);
        return localcvo;
      }
      catch (IOException localIOException)
      {
        localcvo.close();
        a(a);
      }
    }
    paramFile.mkdirs();
    paramFile = new cvo(paramFile, 538181937, 1, paramLong);
    paramFile.a();
    return paramFile;
  }
  
  private static String a(InputStream paramInputStream)
  {
    StringBuilder localStringBuilder = new StringBuilder(80);
    for (;;)
    {
      i1 = paramInputStream.read();
      if (i1 == -1) {
        throw new EOFException();
      }
      if (i1 == 10) {
        break;
      }
      localStringBuilder.append((char)i1);
    }
    int i1 = localStringBuilder.length();
    if ((i1 > 0) && (localStringBuilder.charAt(i1 - 1) == '\r')) {
      localStringBuilder.setLength(i1 - 1);
    }
    return localStringBuilder.toString();
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  private static void a(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
    {
      paramFile = String.valueOf(paramFile);
      throw new IllegalArgumentException(String.valueOf(paramFile).length() + 17 + "not a directory: " + paramFile);
    }
    int i2 = arrayOfFile.length;
    int i1 = 0;
    while (i1 < i2)
    {
      paramFile = arrayOfFile[i1];
      if (paramFile.isDirectory()) {
        a(paramFile);
      }
      if (!paramFile.delete())
      {
        paramFile = String.valueOf(paramFile);
        throw new IOException(String.valueOf(paramFile).length() + 23 + "failed to delete file: " + paramFile);
      }
      i1 += 1;
    }
  }
  
  private static void b(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private cvq d(String paramString)
  {
    for (;;)
    {
      cvq localcvq;
      try
      {
        f();
        e(paramString);
        Object localObject = (cvs)k.get(paramString);
        if (-1L != -1L) {
          if (localObject != null)
          {
            long l1 = e;
            if (l1 == -1L) {}
          }
          else
          {
            paramString = null;
            return paramString;
          }
        }
        if (localObject == null)
        {
          localObject = new cvs(this, paramString);
          k.put(paramString, localObject);
          localcvq = new cvq(this, (cvs)localObject);
          d = localcvq;
          localObject = c;
          String str = String.valueOf("DIRTY ");
          ((Writer)localObject).write(String.valueOf(str).length() + 1 + String.valueOf(paramString).length() + str + paramString + "\n");
          c.flush();
          paramString = localcvq;
          continue;
        }
        localcvq = d;
      }
      finally {}
      if (localcvq != null) {
        paramString = null;
      }
    }
  }
  
  private void d()
  {
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(f), 8192);
    label342:
    label537:
    label601:
    try
    {
      String str1 = a(localBufferedInputStream);
      localObject3 = a(localBufferedInputStream);
      localObject4 = a(localBufferedInputStream);
      str3 = a(localBufferedInputStream);
      String str4 = a(localBufferedInputStream);
      if ((!"com.google.android.apps.hangouts.network".equals(str1)) || (!"1".equals(localObject3)) || (!Integer.toString(h).equals(localObject4)) || (!Integer.toString(b).equals(str3)) || (!"".equals(str4))) {
        throw new IOException(String.valueOf(str1).length() + 35 + String.valueOf(localObject3).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + "unexpected journal header: [" + str1 + ", " + (String)localObject3 + ", " + str3 + ", " + str4 + "]");
      }
    }
    finally
    {
      Object localObject3;
      Object localObject4;
      a(localBufferedInputStream);
      throw ((Throwable)localObject1);
      String str3 = localObject3[1];
      do
      {
        for (;;)
        {
          try
          {
            if ((!localObject3[0].equals("REMOVE")) || (localObject3.length != 2)) {
              break label342;
            }
            k.remove(str3);
            localObject4 = a(localBufferedInputStream);
            localObject3 = ((String)localObject4).split(" ");
            if (localObject3.length >= 2) {
              break;
            }
            String str2 = String.valueOf(localObject4);
            if (str2.length() != 0)
            {
              str2 = "unexpected journal line: ".concat(str2);
              throw new IOException(str2);
            }
          }
          catch (EOFException localEOFException)
          {
            a(localBufferedInputStream);
            return;
          }
          localObject2 = new String("unexpected journal line: ");
          continue;
          localObject2 = (cvs)k.get(str3);
          if (localObject2 != null) {
            break label601;
          }
          localObject2 = new cvs(this, str3);
          k.put(str3, localObject2);
          if ((localObject3[0].equals("CLEAN")) && (localObject3.length == b + 2))
          {
            c = true;
            d = null;
            int i2 = localObject3.length;
            int i1 = localObject3.length;
            if (2 > i2) {
              throw new IllegalArgumentException();
            }
            if (2 > i1) {
              throw new ArrayIndexOutOfBoundsException();
            }
            i2 -= 2;
            i1 = Math.min(i2, i1 - 2);
            localObject4 = (Object[])Array.newInstance(localObject3.getClass().getComponentType(), i2);
            System.arraycopy(localObject3, 2, localObject4, 0, i1);
            ((cvs)localObject2).a((String[])localObject4);
          }
          else
          {
            if ((!localObject3[0].equals("DIRTY")) || (localObject3.length != 2)) {
              break label537;
            }
            d = new cvq(this, (cvs)localObject2);
          }
        }
      } while ((localObject3[0].equals("READ")) && (localObject3.length == 2));
      Object localObject2 = String.valueOf(localObject4);
      if (((String)localObject2).length() != 0)
      {
        localObject2 = "unexpected journal line: ".concat((String)localObject2);
        throw new IOException((String)localObject2);
      }
      localObject2 = new String("unexpected journal line: ");
    }
  }
  
  private void e()
  {
    b(g);
    Iterator localIterator = k.values().iterator();
    while (localIterator.hasNext())
    {
      cvs localcvs = (cvs)localIterator.next();
      int i1;
      if (d == null)
      {
        i1 = 0;
        while (i1 < b)
        {
          j += b[i1];
          i1 += 1;
        }
      }
      else
      {
        d = null;
        i1 = 0;
        while (i1 < b)
        {
          b(localcvs.a(i1));
          b(localcvs.b(i1));
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private static void e(String paramString)
  {
    if ((paramString.contains(" ")) || (paramString.contains("\n")) || (paramString.contains("\r"))) {
      throw new IllegalArgumentException(String.valueOf(paramString).length() + 44 + "keys must not contain spaces or newlines: \"" + paramString + "\"");
    }
  }
  
  private void f()
  {
    if (c == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  /* Error */
  public cvt a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: invokespecial 213	cvo:f	()V
    //   9: aload_1
    //   10: invokestatic 215	cvo:e	(Ljava/lang/String;)V
    //   13: aload_0
    //   14: getfield 57	cvo:k	Ljava/util/LinkedHashMap;
    //   17: aload_1
    //   18: invokevirtual 219	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   21: checkcast 221	cvs
    //   24: astore 5
    //   26: aload 5
    //   28: ifnonnull +10 -> 38
    //   31: aload 4
    //   33: astore_3
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_3
    //   37: areturn
    //   38: aload 4
    //   40: astore_3
    //   41: aload 5
    //   43: getfield 309	cvs:c	Z
    //   46: ifeq -12 -> 34
    //   49: aload_0
    //   50: getfield 104	cvo:b	I
    //   53: anewarray 157	java/io/InputStream
    //   56: astore_3
    //   57: iconst_0
    //   58: istore_2
    //   59: iload_2
    //   60: aload_0
    //   61: getfield 104	cvo:b	I
    //   64: if_icmpge +26 -> 90
    //   67: aload_3
    //   68: iload_2
    //   69: new 256	java/io/FileInputStream
    //   72: dup
    //   73: aload 5
    //   75: iload_2
    //   76: invokevirtual 378	cvs:a	(I)Ljava/io/File;
    //   79: invokespecial 258	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   82: aastore
    //   83: iload_2
    //   84: iconst_1
    //   85: iadd
    //   86: istore_2
    //   87: goto -28 -> 59
    //   90: aload_0
    //   91: aload_0
    //   92: getfield 402	cvo:d	I
    //   95: iconst_1
    //   96: iadd
    //   97: putfield 402	cvo:d	I
    //   100: aload_0
    //   101: getfield 138	cvo:c	Ljava/io/Writer;
    //   104: astore 4
    //   106: ldc_w 404
    //   109: invokestatic 194	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   112: astore 6
    //   114: aload 4
    //   116: new 152	java/lang/StringBuilder
    //   119: dup
    //   120: aload 6
    //   122: invokestatic 194	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   125: invokevirtual 195	java/lang/String:length	()I
    //   128: iconst_1
    //   129: iadd
    //   130: aload_1
    //   131: invokestatic 194	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   134: invokevirtual 195	java/lang/String:length	()I
    //   137: iadd
    //   138: invokespecial 155	java/lang/StringBuilder:<init>	(I)V
    //   141: aload 6
    //   143: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: aload_1
    //   147: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: ldc -12
    //   152: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: invokevirtual 182	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: invokevirtual 407	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   161: pop
    //   162: aload_0
    //   163: invokevirtual 409	cvo:b	()Z
    //   166: ifeq +17 -> 183
    //   169: aload_0
    //   170: getfield 77	cvo:m	Ljava/util/concurrent/ExecutorService;
    //   173: aload_0
    //   174: getfield 84	cvo:n	Ljava/util/concurrent/Callable;
    //   177: invokeinterface 415 2 0
    //   182: pop
    //   183: new 417	cvt
    //   186: dup
    //   187: aload_0
    //   188: aload_1
    //   189: aload 5
    //   191: getfield 225	cvs:e	J
    //   194: aload_3
    //   195: invokespecial 420	cvt:<init>	(Lcvo;Ljava/lang/String;J[Ljava/io/InputStream;)V
    //   198: astore_3
    //   199: goto -165 -> 34
    //   202: astore_1
    //   203: aload_0
    //   204: monitorexit
    //   205: aload_1
    //   206: athrow
    //   207: astore_1
    //   208: aload 4
    //   210: astore_3
    //   211: goto -177 -> 34
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	214	0	this	cvo
    //   0	214	1	paramString	String
    //   58	29	2	i1	int
    //   33	178	3	localObject	Object
    //   1	208	4	localWriter	Writer
    //   24	166	5	localcvs	cvs
    //   112	30	6	str	String
    // Exception table:
    //   from	to	target	type
    //   5	26	202	finally
    //   41	57	202	finally
    //   59	83	202	finally
    //   90	183	202	finally
    //   183	199	202	finally
    //   59	83	207	java/io/FileNotFoundException
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
        BufferedWriter localBufferedWriter = new BufferedWriter(new FileWriter(g), 8192);
        localBufferedWriter.write("com.google.android.apps.hangouts.network");
        localBufferedWriter.write("\n");
        localBufferedWriter.write("1");
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(h));
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(b));
        localBufferedWriter.write("\n");
        localBufferedWriter.write("\n");
        Iterator localIterator = k.values().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localObject2 = (cvs)localIterator.next();
        if (d != null)
        {
          str1 = String.valueOf("DIRTY ");
          localObject2 = a;
          localBufferedWriter.write(String.valueOf(str1).length() + 1 + String.valueOf(localObject2).length() + str1 + (String)localObject2 + "\n");
          continue;
        }
        str1 = String.valueOf("CLEAN ");
      }
      finally {}
      String str2 = a;
      Object localObject2 = String.valueOf(((cvs)localObject2).a());
      ((Writer)localObject1).write(String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + String.valueOf(localObject2).length() + str1 + str2 + (String)localObject2 + "\n");
    }
    ((Writer)localObject1).close();
    g.renameTo(f);
    c = new BufferedWriter(new FileWriter(f, true), 8192);
  }
  
  void a(cvq paramcvq, boolean paramBoolean)
  {
    int i3 = 0;
    Object localObject1;
    try
    {
      localObject1 = a;
      if (d != paramcvq) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i2 = i3;
    int i1;
    if (paramBoolean)
    {
      i2 = i3;
      if (!c)
      {
        i1 = 0;
        i2 = i3;
        if (i1 < b)
        {
          if (((cvs)localObject1).b(i1).exists()) {
            break label477;
          }
          paramcvq.c();
          throw new IllegalStateException(35 + "edit didn't create file " + i1);
        }
      }
    }
    for (;;)
    {
      Object localObject2;
      long l1;
      if (i2 < b)
      {
        paramcvq = ((cvs)localObject1).b(i2);
        if (paramBoolean)
        {
          if (paramcvq.exists())
          {
            localObject2 = ((cvs)localObject1).a(i2);
            paramcvq.renameTo((File)localObject2);
            l1 = b[i2];
            long l2 = ((File)localObject2).length();
            b[i2] = l2;
            j = (j - l1 + l2);
          }
        }
        else {
          b(paramcvq);
        }
      }
      else
      {
        d += 1;
        d = null;
        if ((c | paramBoolean))
        {
          c = true;
          paramcvq = c;
          localObject2 = String.valueOf("CLEAN ");
          String str1 = a;
          String str2 = String.valueOf(((cvs)localObject1).a());
          paramcvq.write(String.valueOf(localObject2).length() + 1 + String.valueOf(str1).length() + String.valueOf(str2).length() + (String)localObject2 + str1 + str2 + "\n");
          if (paramBoolean)
          {
            l1 = l;
            l = (1L + l1);
            e = l1;
          }
        }
        for (;;)
        {
          if ((j > i) || (b())) {
            m.submit(n);
          }
          return;
          k.remove(a);
          paramcvq = c;
          localObject2 = String.valueOf("REMOVE ");
          localObject1 = a;
          paramcvq.write(String.valueOf(localObject2).length() + 1 + String.valueOf(localObject1).length() + (String)localObject2 + (String)localObject1 + "\n");
        }
        label477:
        i1 += 1;
        break;
      }
      i2 += 1;
    }
  }
  
  public cvq b(String paramString)
  {
    return d(paramString);
  }
  
  boolean b()
  {
    return (d >= 2000) && (d >= k.size());
  }
  
  void c()
  {
    while (j > i) {
      c((String)((Map.Entry)k.entrySet().iterator().next()).getKey());
    }
  }
  
  public boolean c(String paramString)
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        f();
        e(paramString);
        localObject1 = (cvs)k.get(paramString);
        if (localObject1 != null)
        {
          localObject2 = d;
          if (localObject2 == null) {}
        }
        else
        {
          bool = false;
          return bool;
          j -= b[i1];
          b[i1] = 0L;
          i1 += 1;
        }
        if (i1 < b)
        {
          localObject2 = ((cvs)localObject1).a(i1);
          if (((File)localObject2).delete()) {
            continue;
          }
          paramString = String.valueOf(localObject2);
          throw new IOException(String.valueOf(paramString).length() + 17 + "failed to delete " + paramString);
        }
      }
      finally {}
      d += 1;
      Object localObject1 = c;
      Object localObject2 = String.valueOf("REMOVE ");
      ((Writer)localObject1).append(String.valueOf(localObject2).length() + 1 + String.valueOf(paramString).length() + (String)localObject2 + paramString + "\n");
      k.remove(paramString);
      if (b()) {
        m.submit(n);
      }
      boolean bool = true;
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
        localObject1 = new ArrayList(k.values()).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          cvs localcvs = (cvs)((Iterator)localObject1).next();
          if (d == null) {
            continue;
          }
          d.c();
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
 * Qualified Name:     cvo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */