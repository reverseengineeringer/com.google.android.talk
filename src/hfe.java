import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodec.Callback;
import android.media.MediaCodec.CodecException;
import android.media.MediaFormat;

final class hfe
  extends MediaCodec.Callback
{
  hfe(hfd paramhfd) {}
  
  public void onError(MediaCodec paramMediaCodec, MediaCodec.CodecException paramCodecException)
  {
    if ((paramCodecException.isRecoverable()) || (paramCodecException.isTransient())) {}
    for (boolean bool = true;; bool = false)
    {
      a.a(paramCodecException, bool);
      return;
    }
  }
  
  public void onInputBufferAvailable(MediaCodec paramMediaCodec, int paramInt)
  {
    hlk.a(5, "vclib", "Ignoring unexpected onInputBufferAvailable from encoder MediaCodec.");
  }
  
  public void onOutputBufferAvailable(MediaCodec paramMediaCodec, int paramInt, MediaCodec.BufferInfo paramBufferInfo)
  {
    a.a(paramInt, paramBufferInfo);
  }
  
  public void onOutputFormatChanged(MediaCodec paramMediaCodec, MediaFormat paramMediaFormat)
  {
    a.a(paramMediaFormat);
  }
}

/* Location:
 * Qualified Name:     hfe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */