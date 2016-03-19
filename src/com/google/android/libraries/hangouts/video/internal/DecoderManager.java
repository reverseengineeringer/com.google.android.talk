package com.google.android.libraries.hangouts.video.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build.VERSION;
import com.google.android.apps.common.proguard.UsedByNative;
import gvj;
import hev;
import hew;
import hey;
import hfl;
import java.nio.ByteBuffer;

@UsedByNative
public final class DecoderManager
{
  private final Context a;
  private int b = -1;
  @UsedByNative
  private long nativeContext;
  
  public DecoderManager(Context paramContext)
  {
    a = paramContext;
    nativeInit();
    setSupportedCodecs(e());
  }
  
  public static int a(Context paramContext)
  {
    int i;
    if (!gvj.a(paramContext.getContentResolver(), "babel_hangout_hardware_decode", true))
    {
      i = 0;
      return i & hfl.a(paramContext, false);
    }
    if (gvj.a(paramContext.getContentResolver(), "babel_hangout_vp8_hardware_decode", true)) {}
    for (int j = 1;; j = 0)
    {
      i = j;
      if (!gvj.a(paramContext.getContentResolver(), "babel_hangout_h264_hardware_decode2", true)) {
        break;
      }
      i = j | 0x2;
      break;
    }
  }
  
  private int e()
  {
    int j = a(a);
    int i = j;
    if (b != -1) {
      i = j & b;
    }
    return i;
  }
  
  private final native void nativeInit();
  
  private final native void nativeRelease();
  
  private final native boolean setSupportedCodecs(int paramInt);
  
  public MediaCodecDecoder a(hev paramhev)
  {
    if (a(a) == 0) {
      return null;
    }
    if (Build.VERSION.SDK_INT < 21) {
      return new hew(this, paramhev);
    }
    return new hey(this, paramhev);
  }
  
  public void a()
  {
    nativeRelease();
  }
  
  public long b()
  {
    return nativeContext;
  }
  
  public void c()
  {
    b = -3;
    setSupportedCodecs(e());
  }
  
  native boolean consumeNextEncodedFrame(int paramInt, long paramLong, ByteBuffer paramByteBuffer);
  
  public boolean d()
  {
    ContentResolver localContentResolver = a.getContentResolver();
    if (Build.VERSION.SDK_INT >= 21) {}
    for (boolean bool = true;; bool = false) {
      return gvj.a(localContentResolver, "babel_hangout_hardware_decode_supports_dynamic_resolution_changes", bool);
    }
  }
  
  native boolean frameDecoded(int paramInt1, long paramLong, int paramInt2, int paramInt3);
  
  native int getCodecType(int paramInt);
  
  native boolean getNextEncodedFrameMetadata(int paramInt, boolean paramBoolean, Object paramObject);
  
  native boolean notifyHardwareFailed(int paramInt);
  
  native boolean notifyResolutionNotSupported(int paramInt1, int paramInt2, int paramInt3);
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.DecoderManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */