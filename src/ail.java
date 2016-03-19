import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

public final class ail
{
  public final amd a;
  public final aly b;
  
  public ail(amd paramamd, aly paramaly)
  {
    a = paramamd;
    b = paramaly;
  }
  
  public Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return a.b(paramInt1, paramInt2, paramConfig);
  }
  
  public void a(Bitmap paramBitmap)
  {
    a.a(paramBitmap);
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    if (b == null) {
      return;
    }
    b.a(paramArrayOfByte, byte[].class);
  }
  
  public void a(int[] paramArrayOfInt)
  {
    if (b == null) {
      return;
    }
    b.a(paramArrayOfInt, int[].class);
  }
  
  public byte[] a(int paramInt)
  {
    if (b == null) {
      return new byte[paramInt];
    }
    return (byte[])b.a(paramInt, byte[].class);
  }
  
  public int[] b(int paramInt)
  {
    if (b == null) {
      return new int[paramInt];
    }
    return (int[])b.a(paramInt, int[].class);
  }
}

/* Location:
 * Qualified Name:     ail
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */