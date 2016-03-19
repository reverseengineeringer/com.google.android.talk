import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import java.io.ByteArrayOutputStream;

public final class asy
  implements atb<Bitmap, byte[]>
{
  private final Bitmap.CompressFormat a;
  private final int b;
  
  public asy()
  {
    this(Bitmap.CompressFormat.JPEG);
  }
  
  private asy(Bitmap.CompressFormat paramCompressFormat)
  {
    a = paramCompressFormat;
    b = 100;
  }
  
  public alr<byte[]> a(alr<Bitmap> paramalr)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ((Bitmap)paramalr.c()).compress(a, b, localByteArrayOutputStream);
    paramalr.e();
    return new ash(localByteArrayOutputStream.toByteArray());
  }
}

/* Location:
 * Qualified Name:     asy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */