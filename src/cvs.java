import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class cvs
{
  final String a;
  final long[] b;
  boolean c;
  cvq d;
  long e;
  
  cvs(cvo paramcvo, String paramString)
  {
    a = paramString;
    b = new long[b];
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
    File localFile = f.a;
    String str = a;
    return new File(localFile, String.valueOf(str).length() + 12 + str + "." + paramInt);
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
    if (paramArrayOfString.length != f.b) {
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
    File localFile = f.a;
    String str = a;
    return new File(localFile, String.valueOf(str).length() + 16 + str + "." + paramInt + ".tmp");
  }
}

/* Location:
 * Qualified Name:     cvs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */