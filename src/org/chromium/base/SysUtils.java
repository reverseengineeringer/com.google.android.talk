package org.chromium.base;

import org.chromium.base.annotations.CalledByNative;

public class SysUtils
{
  private static Boolean a;
  
  /* Error */
  private static int a()
  {
    // Byte code:
    //   0: ldc 16
    //   2: invokestatic 22	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   5: astore 4
    //   7: invokestatic 28	android/os/StrictMode:allowThreadDiskReads	()Landroid/os/StrictMode$ThreadPolicy;
    //   10: astore_1
    //   11: new 30	java/io/FileReader
    //   14: dup
    //   15: ldc 32
    //   17: invokespecial 35	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   20: astore_2
    //   21: new 37	java/io/BufferedReader
    //   24: dup
    //   25: aload_2
    //   26: invokespecial 40	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   29: astore_3
    //   30: aload_3
    //   31: invokevirtual 44	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   34: astore 5
    //   36: aload 5
    //   38: ifnull +56 -> 94
    //   41: aload 4
    //   43: aload 5
    //   45: invokevirtual 48	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   48: astore 5
    //   50: aload 5
    //   52: invokevirtual 54	java/util/regex/Matcher:find	()Z
    //   55: ifeq -25 -> 30
    //   58: aload 5
    //   60: iconst_1
    //   61: invokevirtual 58	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   64: invokestatic 64	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   67: istore_0
    //   68: iload_0
    //   69: sipush 1024
    //   72: if_icmpgt +36 -> 108
    //   75: new 66	java/lang/StringBuilder
    //   78: dup
    //   79: ldc 68
    //   81: invokespecial 69	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: aload 5
    //   86: iconst_1
    //   87: invokevirtual 58	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   90: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: pop
    //   94: aload_3
    //   95: invokevirtual 76	java/io/BufferedReader:close	()V
    //   98: aload_2
    //   99: invokevirtual 77	java/io/FileReader:close	()V
    //   102: aload_1
    //   103: invokestatic 81	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   106: iconst_0
    //   107: ireturn
    //   108: aload_3
    //   109: invokevirtual 76	java/io/BufferedReader:close	()V
    //   112: aload_2
    //   113: invokevirtual 77	java/io/FileReader:close	()V
    //   116: aload_1
    //   117: invokestatic 81	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   120: iload_0
    //   121: ireturn
    //   122: astore 4
    //   124: aload_3
    //   125: invokevirtual 76	java/io/BufferedReader:close	()V
    //   128: aload 4
    //   130: athrow
    //   131: astore_3
    //   132: aload_2
    //   133: invokevirtual 77	java/io/FileReader:close	()V
    //   136: aload_3
    //   137: athrow
    //   138: astore_2
    //   139: aload_1
    //   140: invokestatic 81	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   143: goto -37 -> 106
    //   146: astore_2
    //   147: aload_1
    //   148: invokestatic 81	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   151: aload_2
    //   152: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   67	54	0	i	int
    //   10	138	1	localThreadPolicy	android.os.StrictMode.ThreadPolicy
    //   20	113	2	localFileReader	java.io.FileReader
    //   138	1	2	localException	Exception
    //   146	6	2	localObject1	Object
    //   29	96	3	localBufferedReader	java.io.BufferedReader
    //   131	6	3	localObject2	Object
    //   5	37	4	localPattern	java.util.regex.Pattern
    //   122	7	4	localObject3	Object
    //   34	51	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   30	36	122	finally
    //   41	68	122	finally
    //   75	94	122	finally
    //   21	30	131	finally
    //   94	98	131	finally
    //   108	112	131	finally
    //   124	131	131	finally
    //   11	21	138	java/lang/Exception
    //   98	102	138	java/lang/Exception
    //   112	116	138	java/lang/Exception
    //   132	138	138	java/lang/Exception
    //   11	21	146	finally
    //   98	102	146	finally
    //   112	116	146	finally
    //   132	138	146	finally
  }
  
  @CalledByNative
  public static boolean isLowEndDevice()
  {
    boolean bool = true;
    if (a == null) {
      if (!CommandLine.c().a()) {
        break label31;
      }
    }
    for (;;)
    {
      a = Boolean.valueOf(bool);
      return a.booleanValue();
      label31:
      if (!CommandLine.c().a())
      {
        int i = a();
        if ((i > 0) && (i / 1024 < 512)) {}
      }
      else
      {
        bool = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.chromium.base.SysUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */