import android.os.Build.VERSION;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.libraries.hangouts.video.internal.MediaCodecSimulcastEncoder;
import com.google.android.libraries.hangouts.video.internal.MediaCodecSimulcastEncoder.EncoderConfigurationOutputParams;
import java.util.List;

public final class hfi
  implements Runnable
{
  public hfi(MediaCodecSimulcastEncoder paramMediaCodecSimulcastEncoder) {}
  
  public void run()
  {
    int k = 0;
    a.f.removeCallbacks(a.g);
    if (!a.d) {
      a.g();
    }
    while (a.d()) {
      return;
    }
    MediaCodecSimulcastEncoder localMediaCodecSimulcastEncoder = a;
    hbs.f();
    List localList = localMediaCodecSimulcastEncoder.e();
    int i;
    if (localList == null)
    {
      hlk.a(4, "vclib", "Native encoders have been reset.");
      c = false;
      i = 1;
    }
    while (i != 0)
    {
      a.g();
      return;
      if (localList.size() != a.size())
      {
        i = localList.size();
        hlk.a(5, "vclib", 60 + "New number of simulcast streams forcing a reset: " + i);
        i = 1;
      }
      else
      {
        int j = 0;
        i = k;
        if (j < a.size())
        {
          hfa localhfa = (hfa)a.get(j);
          MediaCodecSimulcastEncoder.EncoderConfigurationOutputParams localEncoderConfigurationOutputParams = (MediaCodecSimulcastEncoder.EncoderConfigurationOutputParams)localList.get(j);
          if (nativeEncoderId != localhfa.g())
          {
            hlk.a(5, "vclib", "Encoder setup has changed. Resetting.");
            i = 1;
          }
          else if (codecType != localhfa.h())
          {
            hlk.a(5, "vclib", "Encoder codec has changed. Resetting.");
            i = 1;
          }
          else if ((width != localhfa.i()) || (height != localhfa.j()))
          {
            hlk.a(5, "vclib", "Encoder setup(resolution) has changed. Resetting.");
            i = 1;
          }
          else
          {
            if (!requiresKeyFrame) {
              if ((!b) || ("N".equals(Build.VERSION.CODENAME)) || (localMediaCodecSimulcastEncoder.b() != 0) || (SystemClock.elapsedRealtime() <= e)) {
                break label382;
              }
            }
            label382:
            for (i = 1;; i = 0)
            {
              if (i != 0)
              {
                localhfa.l();
                e = (SystemClock.elapsedRealtime() + 5000L);
              }
              localhfa.c(targetBitRate);
              j += 1;
              break;
            }
          }
        }
      }
    }
    a.f.postDelayed(a.g, 200L);
  }
}

/* Location:
 * Qualified Name:     hfi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */