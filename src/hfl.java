import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecInfo.VideoCapabilities;
import android.media.MediaCodecList;
import android.os.Build.VERSION;

public final class hfl
{
  private static final String[] a = { "OMX.google.", "OMX.SEC.", "OMX.Intel.VideoEncoder.VP8" };
  
  public static int a(Context paramContext, boolean paramBoolean)
  {
    int i = 0;
    if (a(paramContext, "video/x-vnd.on2.vp8", paramBoolean)) {
      i = 1;
    }
    int j = i;
    if (a(paramContext, "video/avc", paramBoolean)) {
      j = i | 0x2;
    }
    return j;
  }
  
  private static boolean a(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT < 18) {}
    label70:
    label90:
    label134:
    label161:
    label186:
    label193:
    label264:
    label269:
    label281:
    for (;;)
    {
      return false;
      if ((!paramBoolean) || ((Build.VERSION.SDK_INT >= 19) && ((!"video/x-vnd.on2.vp8".equals(paramString)) || (Build.VERSION.SDK_INT >= 21))))
      {
        int k = MediaCodecList.getCodecCount();
        int j = 0;
        MediaCodecInfo localMediaCodecInfo;
        Object localObject;
        int i;
        if (j < k)
        {
          localMediaCodecInfo = MediaCodecList.getCodecInfoAt(j);
          localObject = localMediaCodecInfo.getSupportedTypes();
          i = 0;
          if (i < localObject.length) {
            if (localObject[i].equalsIgnoreCase(paramString))
            {
              i = 1;
              if ((i == 0) || (localMediaCodecInfo.isEncoder() != paramBoolean)) {
                break label269;
              }
              localObject = new String[0];
              if (!gvj.a(paramContext.getContentResolver(), "babel_hangout_allow_software_media_codec", false)) {
                localObject = a;
              }
              int m = localObject.length;
              i = 0;
              if (i >= m) {
                break label193;
              }
              String str = localObject[i];
              if (!localMediaCodecInfo.getName().startsWith(str)) {
                break label186;
              }
              i = 0;
              if (i == 0) {
                break label269;
              }
            }
          }
        }
        for (paramContext = localMediaCodecInfo;; paramContext = null)
        {
          if (paramContext == null) {
            break label281;
          }
          return true;
          i += 1;
          break label70;
          i = 0;
          break label90;
          i += 1;
          break label134;
          if (Build.VERSION.SDK_INT >= 21)
          {
            localObject = localMediaCodecInfo.getCapabilitiesForType(paramString);
            if (localObject == null) {
              i = 0;
            }
            for (;;)
            {
              if (i != 0) {
                break label264;
              }
              i = 0;
              break;
              localObject = ((MediaCodecInfo.CodecCapabilities)localObject).getVideoCapabilities();
              if ((localObject == null) || (!((MediaCodecInfo.VideoCapabilities)localObject).areSizeAndRateSupported(1280, 720, 30.0D))) {
                i = 0;
              } else {
                i = 1;
              }
            }
          }
          i = 1;
          break label161;
          j += 1;
          break;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     hfl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */