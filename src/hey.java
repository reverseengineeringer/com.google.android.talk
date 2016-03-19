import android.media.MediaCodec;
import com.google.android.libraries.hangouts.video.internal.DecoderManager;
import com.google.android.libraries.hangouts.video.internal.MediaCodecDecoder;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class hey
  extends MediaCodecDecoder
{
  final ConcurrentLinkedQueue<Integer> f = new ConcurrentLinkedQueue();
  private final hez g = new hez(this);
  
  public hey(DecoderManager paramDecoderManager, hev paramhev)
  {
    super(paramDecoderManager, paramhev);
  }
  
  protected ByteBuffer a(int paramInt)
  {
    return d().getInputBuffer(paramInt);
  }
  
  protected void a(MediaCodec paramMediaCodec)
  {
    paramMediaCodec.setCallback(g);
    f.clear();
  }
  
  protected void b(int paramInt)
  {
    if ((paramInt == -1) || (paramInt == ((Integer)f.peek()).intValue())) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      if (paramInt != -1) {
        break;
      }
      f.clear();
      return;
    }
    f.poll();
  }
  
  protected int c()
  {
    Integer localInteger = (Integer)f.peek();
    if (localInteger == null) {
      return -1;
    }
    return localInteger.intValue();
  }
}

/* Location:
 * Qualified Name:     hey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */