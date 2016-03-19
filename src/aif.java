import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class aif
{
  final String a;
  final long[] b;
  File[] c;
  File[] d;
  boolean e;
  aie f;
  long g;
  
  aif(aib paramaib, String paramString)
  {
    a = paramString;
    b = new long[b];
    c = new File[b];
    d = new File[b];
    paramString = new StringBuilder(paramString).append('.');
    int j = paramString.length();
    int i = 0;
    while (i < b)
    {
      paramString.append(i);
      c[i] = new File(a, paramString.toString());
      paramString.append(".tmp");
      d[i] = new File(a, paramString.toString());
      paramString.setLength(j);
      i += 1;
    }
  }
  
  private static IOException b(String[] paramArrayOfString)
  {
    paramArrayOfString = String.valueOf(Arrays.toString(paramArrayOfString));
    if (paramArrayOfString.length() != 0) {}
    for (paramArrayOfString = "unexpected journal line: ".concat(paramArrayOfString);; paramArrayOfString = new String("unexpected journal line: ")) {
      throw new IOException(paramArrayOfString);
    }
  }
  
  public File a(int paramInt)
  {
    return c[paramInt];
  }
  
  public String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long[] arrayOfLong = b;
    int j = arrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l = arrayOfLong[i];
      localStringBuilder.append(' ').append(l);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  void a(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length != h.b) {
      throw b(paramArrayOfString);
    }
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        b[i] = Long.parseLong(paramArrayOfString[i]);
        i += 1;
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw b(paramArrayOfString);
    }
  }
  
  public File b(int paramInt)
  {
    return d[paramInt];
  }
}

/* Location:
 * Qualified Name:     aif
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */