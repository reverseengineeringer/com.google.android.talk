package com.google.android.libraries.hangouts.video.internal;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByNative;
import gvj;
import hcd;
import hdi;
import hdr;
import hds;
import hfl;
import java.nio.ByteBuffer;

public final class EncoderManager
{
  private final Context a;
  private int b = -1;
  @UsedByNative
  private long nativeContext;
  
  public EncoderManager(Context paramContext)
  {
    a = paramContext;
    nativeInit();
    setSupportedCodecs(d());
  }
  
  public static int a(Context paramContext)
  {
    int j = 0;
    int i = 0;
    if (!gvj.a(paramContext.getContentResolver(), "babel_hangout_hardware_encode", true)) {}
    for (;;)
    {
      return i & hfl.a(paramContext, true);
      if (gvj.a(paramContext.getContentResolver(), "babel_hangout_vp8_hardware_encode", true)) {
        j = 1;
      }
      i = j;
      if (gvj.a(paramContext.getContentResolver(), "babel_hangout_h264_hardware_encode2", true)) {
        i = j | 0x2;
      }
    }
  }
  
  public static boolean a(Context paramContext, int paramInt)
  {
    boolean bool = true;
    int i = a(paramContext);
    switch (paramInt)
    {
    default: 
      bool = false;
    }
    do
    {
      do
      {
        return bool;
      } while ((i & 0x1) != 0);
      return false;
    } while ((i & 0x2) != 0);
    return false;
  }
  
  private int d()
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
  
  public hdr a(int paramInt, hcd paramhcd, hds paramhds)
  {
    if (d() != 0) {}
    for (boolean bool = true;; bool = false) {
      return new hdi(paramInt, paramhcd, bool, paramhds, gvj.a(a.getContentResolver(), "babel_hangout_encoder_quality_scaling_mode", 0), gvj.a(a.getContentResolver(), "babel_hangout_max_outstanding_encoder_frames", 0));
    }
  }
  
  public void a()
  {
    b = -3;
    setSupportedCodecs(d());
  }
  
  public void b()
  {
    nativeRelease();
  }
  
  public long c()
  {
    return nativeContext;
  }
  
  native boolean getEncoderConfig(long paramLong, Object paramObject);
  
  native boolean getNativeSimulcastEncoderIds(Object paramObject);
  
  public native int sendEncodedFrame(long paramLong1, long paramLong2, ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.EncoderManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */