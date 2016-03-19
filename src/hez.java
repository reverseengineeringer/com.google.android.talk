import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodec.Callback;
import android.media.MediaCodec.CodecException;
import android.media.MediaFormat;
import java.util.concurrent.ConcurrentLinkedQueue;

final class hez
  extends MediaCodec.Callback
{
  hez(hey paramhey) {}
  
  public void onError(MediaCodec paramMediaCodec, MediaCodec.CodecException paramCodecException)
  {
    a.a(paramCodecException);
  }
  
  public void onInputBufferAvailable(MediaCodec paramMediaCodec, int paramInt)
  {
    if (paramMediaCodec == a.d()) {
      a.f.add(Integer.valueOf(paramInt));
    }
  }
  
  public void onOutputBufferAvailable(MediaCodec paramMediaCodec, int paramInt, MediaCodec.BufferInfo paramBufferInfo)
  {
    if (paramMediaCodec == a.d()) {
      a.a(paramInt, paramBufferInfo);
    }
  }
  
  public void onOutputFormatChanged(MediaCodec paramMediaCodec, MediaFormat paramMediaFormat)
  {
    if (paramMediaCodec == a.d()) {
      a.a(paramMediaFormat);
    }
  }
}

/* Location:
 * Qualified Name:     hez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */