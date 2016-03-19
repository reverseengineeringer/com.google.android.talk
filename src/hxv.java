import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

final class hxv
  implements hxy
{
  private static final AtomicReference<byte[]> a = new AtomicReference();
  private static final imw b = new imw("debug.bitmap.reuse");
  
  public Object a(hya paramhya, ByteBuffer paramByteBuffer)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    paramByteBuffer.position(0);
    ipj localipj = new ipj(paramByteBuffer);
    inTempStorage = ((byte[])a.getAndSet(null));
    if (inTempStorage == null) {
      inTempStorage = new byte['䀀'];
    }
    inSampleSize = 1;
    if (Build.VERSION.SDK_INT >= 11)
    {
      inJustDecodeBounds = true;
      BitmapFactory.decodeStream(localipj, null, localOptions);
      inJustDecodeBounds = false;
      paramByteBuffer.rewind();
      if ((outWidth > 0) && (outHeight > 0) && ((Build.VERSION.SDK_INT >= 19) || ("image/jpeg".equalsIgnoreCase(outMimeType)) || ("image/png".equalsIgnoreCase(outMimeType)))) {
        inBitmap = a.a(outWidth, outHeight);
      }
    }
    Object localObject = outMimeType;
    long l = SystemClock.currentThreadTimeMillis();
    try
    {
      localObject = BitmapFactory.decodeStream(localipj, null, localOptions);
      paramByteBuffer.rewind();
      a.set(inTempStorage);
      paramhya.a(l, outMimeType, paramByteBuffer.remaining(), outWidth, outHeight, (Bitmap)localObject);
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        if (paramhya.p()) {
          paramhya.a("Failed to reuse bitmap", localIllegalArgumentException);
        }
        paramByteBuffer.rewind();
        Bitmap localBitmap = inBitmap;
        inBitmap = null;
        localBitmap = BitmapFactory.decodeStream(localipj, null, localOptions);
      }
    }
  }
}

/* Location:
 * Qualified Name:     hxv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */