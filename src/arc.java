import android.content.Context;
import android.graphics.Bitmap;
import java.security.MessageDigest;

public final class arc
  extends aqz
{
  private static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(a);
  
  public arc(Context paramContext)
  {
    super(paramContext);
  }
  
  protected Bitmap a(amd paramamd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    return arz.c(paramamd, paramBitmap, paramInt1, paramInt2);
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(b);
  }
  
  public boolean equals(Object paramObject)
  {
    return paramObject instanceof arc;
  }
  
  public int hashCode()
  {
    return "com.bumptech.glide.load.resource.bitmap.CenterInside".hashCode();
  }
}

/* Location:
 * Qualified Name:     arc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */