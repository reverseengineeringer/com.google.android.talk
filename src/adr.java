import android.net.Uri;
import android.util.SparseArray;

public final class adr
{
  static final byte[] a = "from-data".getBytes();
  static final byte[] b = "attachment".getBytes();
  static final byte[] c = "inline".getBytes();
  private SparseArray<Object> d = null;
  private Uri e = null;
  private byte[] f = null;
  
  public void a(int paramInt)
  {
    d.put(129, Integer.valueOf(paramInt));
  }
  
  public void a(Uri paramUri)
  {
    e = paramUri;
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return;
    }
    f = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, f, 0, paramArrayOfByte.length);
  }
  
  public byte[] a()
  {
    if (f == null) {
      return null;
    }
    byte[] arrayOfByte = new byte[f.length];
    System.arraycopy(f, 0, arrayOfByte, 0, f.length);
    return arrayOfByte;
  }
  
  public Uri b()
  {
    return e;
  }
  
  public void b(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      throw new IllegalArgumentException("Content-Id may not be null or empty.");
    }
    if ((paramArrayOfByte.length > 1) && ((char)paramArrayOfByte[0] == '<') && ((char)paramArrayOfByte[(paramArrayOfByte.length - 1)] == '>'))
    {
      d.put(192, paramArrayOfByte);
      return;
    }
    byte[] arrayOfByte = new byte[paramArrayOfByte.length + 2];
    arrayOfByte[0] = 60;
    arrayOfByte[(arrayOfByte.length - 1)] = 62;
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 1, paramArrayOfByte.length);
    d.put(192, arrayOfByte);
  }
  
  public void c(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("null content-location");
    }
    d.put(142, paramArrayOfByte);
  }
  
  public byte[] c()
  {
    return (byte[])d.get(192);
  }
  
  public int d()
  {
    Integer localInteger = (Integer)d.get(129);
    if (localInteger == null) {
      return 0;
    }
    return localInteger.intValue();
  }
  
  public void d(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("null content-disposition");
    }
    d.put(197, paramArrayOfByte);
  }
  
  public void e(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("null content-type");
    }
    d.put(145, paramArrayOfByte);
  }
  
  public byte[] e()
  {
    return (byte[])d.get(142);
  }
  
  public void f(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("null content-transfer-encoding");
    }
    d.put(200, paramArrayOfByte);
  }
  
  public byte[] f()
  {
    return (byte[])d.get(197);
  }
  
  public void g(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("null content-id");
    }
    d.put(151, paramArrayOfByte);
  }
  
  public byte[] g()
  {
    return (byte[])d.get(145);
  }
  
  public void h(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("null content-id");
    }
    d.put(152, paramArrayOfByte);
  }
  
  public byte[] h()
  {
    return (byte[])d.get(200);
  }
  
  public byte[] i()
  {
    return (byte[])d.get(151);
  }
  
  public byte[] j()
  {
    return (byte[])d.get(152);
  }
}

/* Location:
 * Qualified Name:     adr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */