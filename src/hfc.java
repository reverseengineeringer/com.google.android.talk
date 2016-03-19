import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.os.Handler;

final class hfc
  implements Runnable
{
  hfc(hfb paramhfb) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    MediaCodec localMediaCodec = a.c();
    if (localMediaCodec == null) {
      return;
    }
    MediaCodec.BufferInfo localBufferInfo = new MediaCodec.BufferInfo();
    for (;;)
    {
      try
      {
        int i = localMediaCodec.dequeueOutputBuffer(localBufferInfo, 0L);
        if (i >= 0)
        {
          a.a(i, localBufferInfo);
          l = Math.max(0L, 10L - (System.currentTimeMillis() - l));
          a.b.postDelayed(a.a, l);
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
        a.a(localIllegalStateException, true);
        return;
      }
      a.c = localIllegalStateException.getOutputBuffers();
    }
  }
}

/* Location:
 * Qualified Name:     hfc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */