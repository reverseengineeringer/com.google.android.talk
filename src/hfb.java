import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import com.google.android.libraries.hangouts.video.internal.EncoderManager;
import java.nio.ByteBuffer;

public final class hfb
  extends hfa
{
  final Runnable a = new hfc(this);
  final Handler b;
  ByteBuffer[] c;
  
  public hfb(EncoderManager paramEncoderManager, hdo paramhdo, long paramLong, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Handler paramHandler)
  {
    super(paramEncoderManager, paramhdo, paramLong, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
    b = paramHandler;
  }
  
  protected ByteBuffer a(int paramInt)
  {
    return c[paramInt];
  }
  
  protected void a()
  {
    c = c().getOutputBuffers();
    b.post(a);
  }
  
  protected void a(MediaCodec paramMediaCodec, MediaFormat paramMediaFormat) {}
  
  protected int b()
  {
    return -1;
  }
}

/* Location:
 * Qualified Name:     hfb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */