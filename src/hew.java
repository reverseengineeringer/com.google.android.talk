import android.media.MediaCodec;
import android.os.Handler;
import com.google.android.libraries.hangouts.video.internal.DecoderManager;
import com.google.android.libraries.hangouts.video.internal.MediaCodecDecoder;
import java.nio.ByteBuffer;

public final class hew
  extends MediaCodecDecoder
{
  final Runnable f = new hex(this);
  ByteBuffer[] g;
  private ByteBuffer[] h;
  private int i = -1;
  
  public hew(DecoderManager paramDecoderManager, hev paramhev)
  {
    super(paramDecoderManager, paramhev);
  }
  
  protected ByteBuffer a(int paramInt)
  {
    return h[paramInt];
  }
  
  protected void a()
  {
    h = d().getInputBuffers();
    g = d().getOutputBuffers();
    e().post(f);
  }
  
  protected void b()
  {
    e().removeCallbacks(f);
  }
  
  protected void b(int paramInt)
  {
    if ((paramInt == -1) || (paramInt == i)) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      i = -1;
      return;
    }
  }
  
  protected int c()
  {
    if (i == -1) {
      i = d().dequeueInputBuffer(0L);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     hew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */