import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.os.Handler;

final class hex
  implements Runnable
{
  hex(hew paramhew) {}
  
  public void run()
  {
    a.e().removeCallbacks(a.f);
    long l = System.currentTimeMillis();
    MediaCodec localMediaCodec = a.d();
    if (localMediaCodec == null) {
      return;
    }
    for (;;)
    {
      try
      {
        MediaCodec.BufferInfo localBufferInfo = new MediaCodec.BufferInfo();
        int i = localMediaCodec.dequeueOutputBuffer(localBufferInfo, 0L);
        if (i >= 0)
        {
          a.a(i, localBufferInfo);
          l = Math.max(0L, 10L - (System.currentTimeMillis() - l));
          a.e().postDelayed(a.f, l);
          return;
        }
        if (i == -2)
        {
          a.a(localMediaCodec.getOutputFormat());
          continue;
        }
        if (i != -3) {
          continue;
        }
      }
      catch (IllegalStateException localIllegalStateException)
      {
        a.a(localIllegalStateException);
        return;
      }
      a.g = localIllegalStateException.getOutputBuffers();
    }
  }
}

/* Location:
 * Qualified Name:     hex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */