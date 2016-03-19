import android.media.MediaCodec;
import android.media.MediaFormat;
import com.google.android.libraries.hangouts.video.internal.EncoderManager;
import java.nio.ByteBuffer;

public final class hfd
  extends hfa
{
  private final hfe a = new hfe(this);
  private int b;
  private final String c;
  
  public hfd(EncoderManager paramEncoderManager, hdo paramhdo, long paramLong, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    super(paramEncoderManager, paramhdo, paramLong, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
    if ("video/x-vnd.on2.vp8".equals(k()))
    {
      b = paramInt7;
      if (paramInt7 == 2)
      {
        c = "webrtc.vp8.2-layer";
        return;
      }
      if (paramInt7 == 3)
      {
        c = "webrtc.vp8.3-layer";
        return;
      }
      c = null;
      b = 0;
      return;
    }
    c = null;
    b = 0;
  }
  
  protected ByteBuffer a(int paramInt)
  {
    return c().getOutputBuffer(paramInt);
  }
  
  protected void a()
  {
    if ((c != null) && (!c().getInputFormat().containsKey("ts-schema")))
    {
      hlk.a(4, "vclib", "HW encoder doesn't support temporal scalability; disabling.");
      b = 0;
    }
  }
  
  protected void a(MediaCodec paramMediaCodec, MediaFormat paramMediaFormat)
  {
    if (c != null) {
      paramMediaFormat.setString("ts-schema", c);
    }
    paramMediaCodec.setCallback(a);
  }
  
  protected int b()
  {
    if (b < 2) {
      return -1;
    }
    if (b == 2) {
      return d() % 2;
    }
    if (b == 3)
    {
      i = d() % 4;
      if (i == 0) {
        return 0;
      }
      if (i == 2) {
        return 1;
      }
      return 2;
    }
    int i = b;
    hbs.a(44 + "Unexpected temporal layer count: " + i);
    return -1;
  }
}

/* Location:
 * Qualified Name:     hfd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */