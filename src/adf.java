import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

public final class adf
  implements Cloneable
{
  int a;
  byte[] b;
  
  public adf(int paramInt, String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("EncodedStringValue: Text-string is null");
    }
    a = paramInt;
    try
    {
      b = paramString.getBytes(ade.a(paramInt));
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      Log.e("EncodedStringValue", 45 + "Input encoding " + paramInt + " must be supported.", localUnsupportedEncodingException);
      b = paramString.getBytes();
    }
  }
  
  public adf(int paramInt, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("EncodedStringValue: Text-string is null.");
    }
    a = paramInt;
    b = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, b, 0, paramArrayOfByte.length);
  }
  
  public adf(String paramString)
  {
    this(106, paramString);
  }
  
  public adf(byte[] paramArrayOfByte)
  {
    this(106, paramArrayOfByte);
  }
  
  public static adf[] a(String[] paramArrayOfString)
  {
    int j = paramArrayOfString.length;
    if (j > 0)
    {
      adf[] arrayOfadf2 = new adf[j];
      int i = 0;
      for (;;)
      {
        arrayOfadf1 = arrayOfadf2;
        if (i >= j) {
          break;
        }
        arrayOfadf2[i] = new adf(paramArrayOfString[i]);
        i += 1;
      }
    }
    adf[] arrayOfadf1 = null;
    return arrayOfadf1;
  }
  
  public int a()
  {
    return a;
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("EncodedStringValue: Text-string is null.");
    }
    b = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, b, 0, paramArrayOfByte.length);
  }
  
  public void b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("Text-string is null.");
    }
    if (b == null)
    {
      b = new byte[paramArrayOfByte.length];
      System.arraycopy(paramArrayOfByte, 0, b, 0, paramArrayOfByte.length);
      return;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      localByteArrayOutputStream.write(b);
      localByteArrayOutputStream.write(paramArrayOfByte);
      b = localByteArrayOutputStream.toByteArray();
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
      throw new NullPointerException("appendTextString: failed when write a new Text-string");
    }
  }
  
  public byte[] b()
  {
    byte[] arrayOfByte = new byte[b.length];
    System.arraycopy(b, 0, arrayOfByte, 0, b.length);
    return arrayOfByte;
  }
  
  public String c()
  {
    if (a == 0) {
      return new String(b);
    }
    try
    {
      String str1 = ade.a(a);
      str1 = new String(b, str1);
      return str1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException1)
    {
      try
      {
        String str2 = new String(b, "iso-8859-1");
        return str2;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException2) {}
    }
    return new String(b);
  }
  
  public Object clone()
  {
    super.clone();
    int i = b.length;
    Object localObject = new byte[i];
    System.arraycopy(b, 0, localObject, 0, i);
    try
    {
      localObject = new adf(a, (byte[])localObject);
      return localObject;
    }
    catch (Exception localException)
    {
      String str = String.valueOf(this);
      Log.e("EncodedStringValue", String.valueOf(str).length() + 39 + "failed to clone an EncodedStringValue: " + str);
      localException.printStackTrace();
      throw new CloneNotSupportedException(localException.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     adf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */