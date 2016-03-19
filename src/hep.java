import android.os.Handler;
import com.google.android.libraries.hangouts.video.internal.MediaCodecDecoder;

public final class hep
  implements Runnable
{
  public hep(MediaCodecDecoder paramMediaCodecDecoder) {}
  
  public void run()
  {
    a.d.removeCallbacks(a.e);
    a.d.postDelayed(a.e, 10L);
    try
    {
      a.i();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      a.a(localIllegalStateException);
    }
  }
}

/* Location:
 * Qualified Name:     hep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */