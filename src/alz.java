import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

final class alz
  implements amo
{
  private final amb a = new amb();
  private final amh<ama, Bitmap> b = new amh();
  
  static String c(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    paramConfig = String.valueOf(paramConfig);
    return String.valueOf(paramConfig).length() + 27 + "[" + paramInt1 + "x" + paramInt2 + "], " + paramConfig;
  }
  
  public Bitmap a()
  {
    return (Bitmap)b.a();
  }
  
  public Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    paramConfig = a.a(paramInt1, paramInt2, paramConfig);
    return (Bitmap)b.a(paramConfig);
  }
  
  public void a(Bitmap paramBitmap)
  {
    ama localama = a.a(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getConfig());
    b.a(localama, paramBitmap);
  }
  
  public String b(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return c(paramInt1, paramInt2, paramConfig);
  }
  
  public String b(Bitmap paramBitmap)
  {
    return c(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getConfig());
  }
  
  public int c(Bitmap paramBitmap)
  {
    return avq.a(paramBitmap);
  }
  
  public String toString()
  {
    String str = String.valueOf(b);
    return String.valueOf(str).length() + 21 + "AttributeStrategy:\n  " + str;
  }
}

/* Location:
 * Qualified Name:     alz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */