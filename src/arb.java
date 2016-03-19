import android.content.Context;
import android.graphics.Bitmap;
import java.security.MessageDigest;

public final class arb
  extends aqz
{
  private static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(a);
  
  public arb(Context paramContext)
  {
    super(paramContext);
  }
  
  protected Bitmap a(amd paramamd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    return arz.a(paramamd, paramBitmap, paramInt1, paramInt2);
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(b);
  }
  
  public boolean equals(Object paramObject)
  {
    return paramObject instanceof arb;
  }
  
  public int hashCode()
  {
    return "com.bumptech.glide.load.resource.bitmap.CenterCrop".hashCode();
  }
}

/* Location:
 * Qualified Name:     arb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */