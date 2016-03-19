import android.graphics.Bitmap;

public final class aqy
  implements alr<Bitmap>
{
  private final Bitmap a;
  private final amd b;
  
  public aqy(Bitmap paramBitmap, amd paramamd)
  {
    a = ((Bitmap)aal.a(paramBitmap, "Bitmap must not be null"));
    b = ((amd)aal.a(paramamd, "BitmapPool must not be null"));
  }
  
  public static aqy a(Bitmap paramBitmap, amd paramamd)
  {
    if (paramBitmap == null) {
      return null;
    }
    return new aqy(paramBitmap, paramamd);
  }
  
  public Class<Bitmap> b()
  {
    return Bitmap.class;
  }
  
  public int d()
  {
    return avq.a(a);
  }
  
  public void e()
  {
    b.a(a);
  }
}

/* Location:
 * Qualified Name:     aqy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */