import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class mhp
{
  private static final byte[] l = new byte['̀'];
  int a;
  boolean b;
  boolean c;
  int[] d = new int['Ā'];
  int e;
  int f;
  int g;
  private final byte[] h;
  private final int i;
  private int j;
  private int k;
  
  public mhp(ByteBuffer paramByteBuffer) {}
  
  private mhp(byte[] paramArrayOfByte, int paramInt)
  {
    h = paramArrayOfByte;
    i = paramInt;
    paramArrayOfByte = new mhq(this, paramArrayOfByte);
    paramArrayOfByte.skip(paramInt);
    for (;;)
    {
      try
      {
        if (paramArrayOfByte.read() == 71)
        {
          paramInt = 1;
          if ((paramInt == 0) || (paramArrayOfByte.read() != 73)) {
            continue;
          }
          paramInt = 1;
          if ((paramInt == 0) || (paramArrayOfByte.read() != 70)) {
            continue;
          }
          paramInt = 1;
          if (paramInt != 0) {
            continue;
          }
          c = true;
          a = paramArrayOfByte.a();
        }
      }
      catch (IOException localIOException)
      {
        c = true;
        continue;
      }
      try
      {
        paramArrayOfByte.close();
        return;
      }
      catch (IOException paramArrayOfByte) {}
      paramInt = 0;
      continue;
      paramInt = 0;
      continue;
      paramInt = 0;
      continue;
      paramArrayOfByte.skip(3L);
      j = a(paramArrayOfByte);
      k = a(paramArrayOfByte);
      paramInt = paramArrayOfByte.read();
      if ((paramInt & 0x80) != 0) {
        bool = true;
      }
      b = bool;
      e = (2 << (paramInt & 0x7));
      g = paramArrayOfByte.read();
      paramArrayOfByte.skip(1L);
      if ((b) && (!c))
      {
        a(paramArrayOfByte, d, e);
        f = d[g];
      }
    }
  }
  
  private static int a(InputStream paramInputStream)
  {
    return paramInputStream.read() | paramInputStream.read() << 8;
  }
  
  private static boolean a(InputStream paramInputStream, int[] paramArrayOfInt, int paramInt)
  {
    int n = 0;
    byte[] arrayOfByte = l;
    int m = paramInt * 3;
    for (;;)
    {
      try
      {
        if (paramInputStream.read(l, 0, m) >= m) {
          break label132;
        }
        return false;
      }
      finally {}
      if (m < paramInt)
      {
        paramInputStream = l;
        int i3 = n + 1;
        int i1 = paramInputStream[n];
        paramInputStream = l;
        int i2 = i3 + 1;
        i3 = paramInputStream[i3];
        paramInputStream = l;
        n = i2 + 1;
        paramArrayOfInt[m] = ((i3 & 0xFF) << 8 | (i1 & 0xFF) << 16 | 0xFF000000 | paramInputStream[i2] & 0xFF);
        m += 1;
      }
      else
      {
        return true;
        label132:
        m = 0;
      }
    }
  }
  
  private static byte[] a(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.hasArray()) {
      return paramByteBuffer.array();
    }
    int m = paramByteBuffer.position();
    try
    {
      byte[] arrayOfByte = new byte[paramByteBuffer.capacity()];
      paramByteBuffer.get(arrayOfByte);
      return arrayOfByte;
    }
    finally
    {
      paramByteBuffer.position(m);
    }
  }
  
  public int a()
  {
    return h.length + (d.length << 2);
  }
}

/* Location:
 * Qualified Name:     mhp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */