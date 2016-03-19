import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class hxm
{
  private final Context a;
  private final String b;
  private final long c;
  private final long d;
  private final float e;
  private final float f;
  private final hxo g;
  private File h;
  private String i;
  private long j;
  
  public hxm(Context paramContext, String paramString, long paramLong1, long paramLong2, float paramFloat1, float paramFloat2) {}
  
  private hxm(Context paramContext, String paramString, long paramLong1, long paramLong2, float paramFloat1, float paramFloat2, hxo paramhxo)
  {
    a = paramContext;
    b = paramString;
    c = paramLong1;
    d = paramLong2;
    e = paramFloat1;
    f = paramFloat2;
    g = paramhxo;
  }
  
  private long a(File paramFile)
  {
    long l1 = 0L;
    paramFile = paramFile.listFiles();
    long l2 = l1;
    if (paramFile != null)
    {
      int k = 0;
      l2 = l1;
      if (k < paramFile.length)
      {
        File localFile = paramFile[k];
        if (localFile.isDirectory()) {}
        for (l2 = a(localFile);; l2 = localFile.length())
        {
          l1 += l2;
          k += 1;
          break;
        }
      }
    }
    return l2;
  }
  
  private File d()
  {
    if (h == null) {
      h = new File(a.getCacheDir(), b);
    }
    return h;
  }
  
  private String e()
  {
    if (i == null) {
      i = d().getPath();
    }
    return i;
  }
  
  public long a()
  {
    try
    {
      if (j == 0L) {
        j = b();
      }
      long l = j;
      return l;
    }
    finally {}
  }
  
  public File a(String paramString)
  {
    paramString = new File(b(paramString));
    if (paramString.exists()) {
      return paramString;
    }
    return null;
  }
  
  public void a(String paramString, ByteBuffer paramByteBuffer)
  {
    String str = b(paramString);
    try
    {
      aal.a(paramByteBuffer, str);
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      paramString = new File(str).getParentFile();
      if (!paramString.exists()) {}
      for (;;)
      {
        try
        {
          paramString.mkdirs();
          try
          {
            aal.a(paramByteBuffer, str);
            return;
          }
          catch (IOException paramString)
          {
            paramString = String.valueOf(str);
            if (paramString.length() == 0) {
              break label174;
            }
          }
          paramString = "Cannot write file to cache: ".concat(paramString);
          Log.e("FileCache", paramString, localFileNotFoundException);
          return;
        }
        catch (Exception paramByteBuffer)
        {
          paramString = String.valueOf(paramString);
          Log.e("FileCache", String.valueOf(paramString).length() + 31 + "Cannot create cache directory: " + paramString, paramByteBuffer);
          throw new RuntimeException("Cannot create cache directory", paramByteBuffer);
        }
        paramString = String.valueOf(str);
        if (paramString.length() != 0) {}
        for (paramString = "Cannot write file to cache: ".concat(paramString);; paramString = new String("Cannot write file to cache: "))
        {
          Log.e("FileCache", paramString, localFileNotFoundException);
          break;
        }
        paramString = new String("Cannot write file to cache: ");
      }
    }
    catch (IOException paramByteBuffer)
    {
      label174:
      paramString = String.valueOf(str);
      if (paramString.length() == 0) {}
    }
    for (paramString = "Cannot write file to cache: ".concat(paramString);; paramString = new String("Cannot write file to cache: "))
    {
      Log.e("FileCache", paramString, paramByteBuffer);
      return;
    }
  }
  
  public void a(String paramString, byte[] paramArrayOfByte)
  {
    a(paramString, ByteBuffer.wrap(paramArrayOfByte));
  }
  
  public long b()
  {
    long l2 = d;
    long l3 = g.a();
    long l1 = l2;
    if ((float)l2 > (float)l3 * e) {
      l1 = ((float)l3 * e);
    }
    l2 = l1;
    if (l1 < c) {
      l2 = c;
    }
    l1 = g.b();
    if ((float)l2 < (float)l1 * f) {
      return l2;
    }
    return ((float)(c() + l1) * f);
  }
  
  public String b(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(e().length() + paramString.length() + 3);
    localStringBuilder.append(e());
    localStringBuilder.append(File.separatorChar);
    localStringBuilder.append(paramString.charAt(0));
    localStringBuilder.append(File.separatorChar);
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  public long c()
  {
    if (d().exists()) {
      return a(d());
    }
    return 0L;
  }
}

/* Location:
 * Qualified Name:     hxm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */