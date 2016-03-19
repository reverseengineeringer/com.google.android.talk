package com.google.android.libraries.hangouts.video.internal;

import aal;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecInfo.VideoCapabilities;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import hbs;
import hen;
import heo;
import hep;
import heq;
import her;
import hes;
import het;
import heu;
import hev;
import hlk;
import java.nio.ByteBuffer;

public abstract class MediaCodecDecoder
{
  private static int f;
  private static final Object g = new Object();
  private static int k = Integer.MAX_VALUE;
  public volatile int a;
  public final hev b;
  public Surface c;
  public final Handler d;
  public final Runnable e = new hep(this);
  private final DecoderManager h;
  private volatile int i;
  private MediaCodec j;
  private boolean l;
  private volatile boolean m;
  private int n;
  private int o;
  private int p;
  private boolean q;
  private int r;
  private boolean s;
  private final Object t;
  private boolean u;
  private final HandlerThread v;
  private MediaFormat w;
  private final Runnable x = new hen(this);
  private final Runnable y = new heo(this);
  
  static
  {
    if ("manta".equals(Build.HARDWARE)) {
      k = 3;
    }
  }
  
  public MediaCodecDecoder(DecoderManager paramDecoderManager, hev paramhev)
  {
    h = paramDecoderManager;
    b = paramhev;
    a = 0;
    i = -1;
    t = new Object();
    u = true;
    q = true;
    v = new HandlerThread("DecoderHandlerThread", -4);
    v.start();
    d = new Handler(v.getLooper());
  }
  
  private String m()
  {
    if (i == 0) {
      return "video/x-vnd.on2.vp8";
    }
    if (i == 1) {
      return "video/avc";
    }
    int i1 = i;
    hbs.a(31 + "Unknown codec type: " + i1);
    return null;
  }
  
  private boolean n()
  {
    l = true;
    String str;
    for (;;)
    {
      synchronized (g)
      {
        if (f >= k)
        {
          l = false;
          if (!l) {
            break label124;
          }
        }
      }
      try
      {
        j = MediaCodec.createDecoderByType(m());
        if (j != null) {
          break label246;
        }
        hlk.a(6, "vclib", "Unable to create a MediaCodec decoder.");
        return false;
        f += 1;
        continue;
        localObject3 = finally;
        throw ((Throwable)localObject3);
      }
      catch (Throwable localThrowable1)
      {
        for (;;)
        {
          str = String.valueOf(localThrowable1);
          hlk.a(6, "vclib", String.valueOf(str).length() + 39 + "MediaCodec.createDecoderByType failed, " + str);
        }
      }
    }
    for (;;)
    {
      try
      {
        label124:
        hlk.a(5, "vclib", "Creating a software decoder.");
        if (i != 0) {
          break label198;
        }
        str = "OMX.google.vp8.decoder";
        j = MediaCodec.createByCodecName(str);
      }
      catch (Throwable localThrowable2)
      {
        localObject2 = String.valueOf(localThrowable2);
        hlk.a(6, "vclib", String.valueOf(localObject2).length() + 37 + "MediaCodec.createByCodecName failed, " + (String)localObject2);
      }
      break;
      label198:
      if (i == 1)
      {
        localObject2 = "OMX.google.h264.decoder";
      }
      else
      {
        int i1 = i;
        hbs.a(31 + "Unknown codec type: " + i1);
        localObject2 = null;
      }
    }
    label246:
    Object localObject2 = MediaFormat.createVideoFormat(m(), 640, 640);
    ((MediaFormat)localObject2).setInteger("max-width", 1920);
    ((MediaFormat)localObject2).setInteger("max-height", 1920);
    a(j);
    try
    {
      j.configure((MediaFormat)localObject2, c, null, 0);
      j.start();
      m = true;
      a();
      return true;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      hlk.a(6, "vclib", "MediaCodec decoder initialization failed.");
      a(localIllegalStateException);
    }
    return false;
  }
  
  public abstract ByteBuffer a(int paramInt);
  
  public void a() {}
  
  public void a(int paramInt, MediaCodec.BufferInfo paramBufferInfo)
  {
    hbs.e();
    r = 0;
    if (w == null) {}
    synchronized (t)
    {
      w = j.getOutputFormat();
      if (b != null) {
        aal.a(new het(this, j.getOutputFormat()));
      }
      long l1 = presentationTimeUs / 11L;
      int i1 = w.getInteger("width");
      int i2 = w.getInteger("height");
      j.releaseOutputBuffer(paramInt, true);
      h.frameDecoded(a, l1, i1, i2);
      return;
    }
  }
  
  public void a(MediaCodec paramMediaCodec) {}
  
  public void a(MediaFormat arg1)
  {
    int i1 = a;
    ??? = String.valueOf(???);
    hlk.a(4, "vclib", String.valueOf(???).length() + 59 + "decoder (ssrc=" + i1 + ") resolution changed. New format: " + ???);
    if ((w != null) && (!h.d()))
    {
      hlk.a(5, "vclib", "Missed a dynamic resolution change when handling incoming frames. Resetting hw decoder now.");
      j();
      return;
    }
    synchronized (t)
    {
      MediaFormat localMediaFormat = j.getOutputFormat();
      if ((!l) && (localMediaFormat.containsKey("crop-right")))
      {
        localMediaFormat.setInteger("width", localMediaFormat.getInteger("crop-right") + 1);
        localMediaFormat.setInteger("height", localMediaFormat.getInteger("crop-bottom") + 1);
      }
      w = localMediaFormat;
      if (b != null) {
        aal.a(new heu(this, localMediaFormat));
      }
      return;
    }
  }
  
  public void a(Surface paramSurface, Runnable paramRunnable)
  {
    d.post(new her(this, paramSurface, paramRunnable));
  }
  
  public void a(IllegalStateException paramIllegalStateException)
  {
    hlk.a("vclib", "MediaCodec reported exception: ", paramIllegalStateException);
    r += 1;
    if (r < 3)
    {
      hlk.a(6, "vclib", "Attempting to reset decoder.");
      d.postDelayed(x, 200L);
      return;
    }
    hlk.a(6, "vclib", "Too many consecutive hardware failures. Attempting software fallback.");
    s = true;
    k();
    h.notifyHardwareFailed(a);
  }
  
  public void b() {}
  
  public abstract void b(int paramInt);
  
  public abstract int c();
  
  void c(int paramInt)
  {
    if (i != paramInt)
    {
      i = paramInt;
      if (b != null) {
        aal.a(new heq(this, paramInt));
      }
    }
  }
  
  public MediaCodec d()
  {
    return j;
  }
  
  public void d(int paramInt)
  {
    if (a == paramInt) {
      return;
    }
    d.post(new hes(this, paramInt));
  }
  
  public Handler e()
  {
    return d;
  }
  
  public boolean f()
  {
    for (;;)
    {
      synchronized (t)
      {
        if ((m) && (q) && (!s))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public int g()
  {
    synchronized (t)
    {
      int i1 = i;
      return i1;
    }
  }
  
  public MediaFormat h()
  {
    synchronized (t)
    {
      MediaFormat localMediaFormat = w;
      return localMediaFormat;
    }
  }
  
  public void i()
  {
    int i4 = 4;
    hbs.e();
    int i1 = h.getCodecType(a);
    if (i != i1)
    {
      if (i1 == -1) {
        m = false;
      }
      j();
    }
    MediaCodecDecoder.FrameDataOutputParams localFrameDataOutputParams;
    do
    {
      return;
      localFrameDataOutputParams = new MediaCodecDecoder.FrameDataOutputParams();
    } while (!h.getNextEncodedFrameMetadata(a, u, localFrameDataOutputParams));
    i1 = width;
    int i2 = height;
    int i3;
    if ((i1 > 0) && (i2 > 0) && ((i1 != o) || (i2 != p)))
    {
      i1 = 1;
      if (i1 == 0) {
        break label467;
      }
      i1 = width;
      i2 = height;
      if (Build.VERSION.SDK_INT < 21) {
        break label433;
      }
      if (i2 <= i1) {
        break label670;
      }
      i3 = i2;
      i2 = i1;
    }
    for (;;)
    {
      label158:
      boolean bool;
      if (j == null)
      {
        hlk.a(6, "vclib", "Getting Codec info when mediaCodec is null");
        bool = false;
      }
      for (;;)
      {
        q = bool;
        if (!q)
        {
          i1 = a;
          i2 = width;
          i3 = height;
          hlk.a(5, "vclib", 81 + "Unsupported resolution for decode for ssrc: " + i1 + " (" + i2 + "x" + i3 + ")");
          h.notifyResolutionNotSupported(a, width, height);
        }
        if ((o == 0) || (p == 0)) {
          break label467;
        }
        i1 = a;
        i2 = o;
        i3 = p;
        int i5 = width;
        int i6 = height;
        hlk.a(4, "vclib", 109 + "Dynamic resolution change detected for ssrc: " + i1 + " (" + i2 + "x" + i3 + " -> " + i5 + "x" + i6 + ")");
        if (h.d()) {
          break label467;
        }
        j();
        return;
        i1 = 0;
        break;
        bool = j.getCodecInfo().getCapabilitiesForType(m()).getVideoCapabilities().isSizeSupported(i3, i2);
        continue;
        label433:
        if ((i1 > 1920) || (i2 > 1920) || ((i1 > 1080) && (i2 > 1080))) {
          break label158;
        }
        bool = true;
      }
      label467:
      u = false;
      if ((width != 0) && (height != 0))
      {
        o = width;
        p = height;
      }
      if (!q)
      {
        h.consumeNextEncodedFrame(a, timestamp, null);
        return;
      }
      i2 = c();
      if (i2 == -1)
      {
        n += 1;
        if (n < 100) {
          break;
        }
        a(new IllegalStateException("Too many failed getNextInputBuffer calls."));
        return;
      }
      n = 0;
      ByteBuffer localByteBuffer = a(i2);
      if (!h.consumeNextEncodedFrame(a, timestamp, localByteBuffer))
      {
        hlk.a(6, "vclib", "Unable to consume encoded frame.");
        return;
      }
      if (isEndOfStream) {}
      for (i1 = i4;; i1 = 0)
      {
        long l1 = timestamp;
        j.queueInputBuffer(i2, 0, size, l1 * 11L, i1);
        b(i2);
        return;
      }
      label670:
      i3 = i1;
    }
  }
  
  public void j()
  {
    k();
    synchronized (t)
    {
      if ((a == 0) || (c == null) || (!c.isValid())) {
        return;
      }
      int i1 = h.getCodecType(a);
      c(i1);
      if (i1 == -1)
      {
        m = false;
        d.postDelayed(x, 200L);
        return;
      }
    }
    if (n()) {
      d.post(e);
    }
  }
  
  public void k()
  {
    b();
    d.removeCallbacks(x);
    d.removeCallbacks(e);
    b(-1);
    n = 0;
    m = false;
    o = 0;
    p = 0;
    w = null;
    if (j != null) {}
    try
    {
      j.stop();
      j.release();
      j = null;
      if (l) {}
      synchronized (g)
      {
        f -= 1;
        u = true;
        return;
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  public void l()
  {
    d.postAtFrontOfQueue(y);
    v.quitSafely();
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.MediaCodecDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */