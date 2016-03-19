import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.util.Random;

public final class ipr
{
  private static final Random a = new Random();
  private static final char[] b = "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  private static final ThreadLocal<ipt> c = new ips();
  
  public static String a(long paramLong)
  {
    if (paramLong < 1024L) {
      return 22 + paramLong + " B";
    }
    int i = (int)(Math.log(paramLong) / Math.log(1024.0D));
    return String.format("%.1f %sB", new Object[] { Double.valueOf(paramLong / Math.pow(1024.0D, i)), Character.valueOf("KMGTPE".charAt(i - 1)) });
  }
  
  /* Error */
  private static String a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 95	java/io/BufferedReader
    //   3: dup
    //   4: new 97	java/io/InputStreamReader
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 100	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   12: invokespecial 103	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   15: invokevirtual 106	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   18: astore_1
    //   19: aload_1
    //   20: ifnull +9 -> 29
    //   23: aload_0
    //   24: invokevirtual 111	java/io/InputStream:close	()V
    //   27: aload_1
    //   28: areturn
    //   29: ldc 113
    //   31: astore_1
    //   32: goto -9 -> 23
    //   35: astore_1
    //   36: aload_0
    //   37: invokevirtual 111	java/io/InputStream:close	()V
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	paramInputStream	java.io.InputStream
    //   18	14	1	str	String
    //   35	6	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	19	35	finally
  }
  
  public static String a(String paramString)
  {
    return a(new FileInputStream(paramString));
  }
  
  public static String a(StringBuilder paramStringBuilder)
  {
    String str = paramStringBuilder.toString();
    ((ipt)c.get()).a(paramStringBuilder);
    return str;
  }
  
  public static StringBuilder a()
  {
    return ((ipt)c.get()).a();
  }
  
  public static void a(String paramString1, String paramString2)
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(paramString1);
      paramString1 = localFileOutputStream;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      for (;;)
      {
        try
        {
          paramString1.write(paramString2);
          paramString1.close();
          return;
        }
        finally
        {
          File localFile;
          paramString1.close();
        }
        localFileNotFoundException = localFileNotFoundException;
        localFile = new File(paramString1).getParentFile();
        if ((localFile == null) || (localFile.exists())) {
          continue;
        }
        localFile.mkdirs();
        paramString1 = new FileOutputStream(paramString1);
      }
      throw localFileNotFoundException;
    }
    paramString1 = new BufferedWriter(new OutputStreamWriter(paramString1));
  }
}

/* Location:
 * Qualified Name:     ipr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */