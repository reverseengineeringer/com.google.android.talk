package com.google.android.libraries.hangouts.video.internal;

import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.apps.common.proguard.UsedByNative;
import hbs;
import hdo;
import hdr;
import hee;
import hfa;
import hfb;
import hfd;
import hfg;
import hfh;
import hfi;
import hfj;
import hfk;
import hlk;
import hlp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@UsedByNative
public final class MediaCodecSimulcastEncoder
  implements hdr
{
  public List<hfa> a;
  public boolean b;
  public boolean c;
  public boolean d;
  public long e;
  public final Handler f;
  public final Runnable g = new hfi(this);
  private final EncoderManager h;
  private final hee i;
  private final int j;
  private final int k;
  private final Object l;
  private int m;
  private int n;
  private hdo o;
  private final HandlerThread p;
  private final Runnable q = new hfg(this);
  private final Runnable r = new hfh(this);
  
  public MediaCodecSimulcastEncoder(EncoderManager paramEncoderManager, hee paramhee, int paramInt1, int paramInt2)
  {
    h = paramEncoderManager;
    i = paramhee;
    j = paramInt1;
    k = paramInt2;
    l = new Object();
    a = new ArrayList();
    p = new HandlerThread("EncoderHandlerThread", -4);
    p.start();
    f = new Handler(p.getLooper());
    o = new hdo();
  }
  
  private void a(List<hfa> paramList)
  {
    if (paramList.isEmpty()) {}
    ArrayList localArrayList;
    do
    {
      return;
      localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Object localObject = (hfa)paramList.next();
        if (localObject != null)
        {
          localObject = ((hfa)localObject).m();
          if (localObject != null) {
            localArrayList.add(localObject);
          }
        }
      }
    } while (localArrayList.isEmpty());
    i.a(new hfk(this, localArrayList));
  }
  
  public void a()
  {
    o.c();
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if ((m == paramInt1) && (n == paramInt2) && (b == paramBoolean)) {
      return;
    }
    ??? = String.valueOf("Encoder setResolution with new resolution: Input: ");
    new StringBuilder(String.valueOf(???).length() + 23).append((String)???).append(paramInt1).append("x").append(paramInt2);
    synchronized (l)
    {
      m = paramInt1;
      n = paramInt2;
      b = paramBoolean;
      f.post(g);
      return;
    }
  }
  
  public void a(boolean paramBoolean) {}
  
  /* Error */
  public boolean a(int paramInt, long paramLong, boolean paramBoolean, float[] paramArrayOfFloat)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 8
    //   3: iconst_0
    //   4: istore 7
    //   6: iload 8
    //   8: istore 6
    //   10: aload_0
    //   11: getfield 69	com/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder:l	Ljava/lang/Object;
    //   14: astore 9
    //   16: iload 8
    //   18: istore 6
    //   20: aload 9
    //   22: monitorenter
    //   23: iload 7
    //   25: istore 6
    //   27: aload_0
    //   28: getfield 187	com/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder:c	Z
    //   31: ifne +23 -> 54
    //   34: iload 7
    //   36: istore 6
    //   38: aload_0
    //   39: getfield 187	com/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder:c	Z
    //   42: istore 4
    //   44: iload 7
    //   46: istore 6
    //   48: aload 9
    //   50: monitorexit
    //   51: iload 4
    //   53: ireturn
    //   54: iload 7
    //   56: istore 6
    //   58: aload_0
    //   59: getfield 74	com/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder:a	Ljava/util/List;
    //   62: invokeinterface 114 1 0
    //   67: astore 10
    //   69: iconst_0
    //   70: istore 6
    //   72: aload 10
    //   74: invokeinterface 119 1 0
    //   79: ifeq +42 -> 121
    //   82: iload 6
    //   84: aload 10
    //   86: invokeinterface 123 1 0
    //   91: checkcast 125	hfa
    //   94: iload_1
    //   95: aload_0
    //   96: getfield 149	com/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder:m	I
    //   99: aload_0
    //   100: getfield 151	com/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder:n	I
    //   103: lload_2
    //   104: iload 4
    //   106: aload 5
    //   108: invokevirtual 190	hfa:a	(IIIJZ[F)Z
    //   111: ior
    //   112: istore 7
    //   114: iload 7
    //   116: istore 6
    //   118: goto -46 -> 72
    //   121: aload 9
    //   123: monitorexit
    //   124: iload 6
    //   126: ifeq +11 -> 137
    //   129: aload_0
    //   130: getfield 102	com/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder:o	Lhdo;
    //   133: invokevirtual 192	hdo:d	()Z
    //   136: pop
    //   137: iconst_1
    //   138: ireturn
    //   139: astore 5
    //   141: iload 6
    //   143: istore_1
    //   144: iload_1
    //   145: istore 6
    //   147: aload 9
    //   149: monitorexit
    //   150: iload_1
    //   151: istore 6
    //   153: aload 5
    //   155: athrow
    //   156: astore 5
    //   158: iload 6
    //   160: ifeq +11 -> 171
    //   163: aload_0
    //   164: getfield 102	com/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder:o	Lhdo;
    //   167: invokevirtual 192	hdo:d	()Z
    //   170: pop
    //   171: aload 5
    //   173: athrow
    //   174: astore 5
    //   176: iload 6
    //   178: istore_1
    //   179: goto -35 -> 144
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	182	0	this	MediaCodecSimulcastEncoder
    //   0	182	1	paramInt	int
    //   0	182	2	paramLong	long
    //   0	182	4	paramBoolean	boolean
    //   0	182	5	paramArrayOfFloat	float[]
    //   8	169	6	i1	int
    //   4	111	7	i2	int
    //   1	16	8	i3	int
    //   14	134	9	localObject	Object
    //   67	18	10	localIterator	Iterator
    // Exception table:
    //   from	to	target	type
    //   27	34	139	finally
    //   38	44	139	finally
    //   48	51	139	finally
    //   58	69	139	finally
    //   147	150	139	finally
    //   10	16	156	finally
    //   20	23	156	finally
    //   153	156	156	finally
    //   72	114	174	finally
    //   121	124	174	finally
  }
  
  public int b()
  {
    synchronized (l)
    {
      if (a.isEmpty()) {
        return -1;
      }
      int i1 = ((hfa)a.get(0)).h();
      return i1;
    }
  }
  
  public void c()
  {
    f.postAtFrontOfQueue(r);
    p.quitSafely();
  }
  
  public boolean d()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      hfa localhfa = (hfa)localIterator.next();
      if (localhfa.e())
      {
        if (localhfa.f())
        {
          hlk.a(6, "vclib", "An encoder instance has reported hardware failure. Resetting.");
          g();
        }
        for (;;)
        {
          return true;
          hlk.a(6, "vclib", "An encoder instance has reported a non-recoverable failure.");
        }
      }
    }
    return false;
  }
  
  public List<MediaCodecSimulcastEncoder.EncoderConfigurationOutputParams> e()
  {
    
    int i1;
    MediaCodecSimulcastEncoder.NativeSimulcastEncoderOutputParams localNativeSimulcastEncoderOutputParams;
    synchronized (l)
    {
      if (m >= n)
      {
        i1 = 1;
        localNativeSimulcastEncoderOutputParams = new MediaCodecSimulcastEncoder.NativeSimulcastEncoderOutputParams();
        if ((!h.getNativeSimulcastEncoderIds(localNativeSimulcastEncoderOutputParams)) || (nativeEncoderIds.length == 0)) {
          return null;
        }
      }
      else
      {
        i1 = 0;
      }
    }
    if (nativeEncoderIds.length > 4)
    {
      i1 = nativeEncoderIds.length;
      hbs.a(57 + "Got a request for too many simulcast streams: " + i1);
      return null;
    }
    if (nativeEncoderIds.length == 1) {}
    ArrayList localArrayList;
    int i3;
    MediaCodecSimulcastEncoder.EncoderConfigurationOutputParams localEncoderConfigurationOutputParams;
    for (int i2 = 1;; i2 = 0)
    {
      localArrayList = new ArrayList(nativeEncoderIds.length);
      i3 = 0;
      if (i3 >= nativeEncoderIds.length) {
        break label373;
      }
      localEncoderConfigurationOutputParams = new MediaCodecSimulcastEncoder.EncoderConfigurationOutputParams();
      if (h.getEncoderConfig(nativeEncoderIds[i3], localEncoderConfigurationOutputParams)) {
        break;
      }
      hlk.a(5, "vclib", "Native encoder reset in the middle of a fetch operation.");
      return null;
    }
    hlp localhlp;
    if ((i2 != 0) && (!b) && (j == 1))
    {
      localhlp = new hlp(width, height);
      if (targetBitRate <= 300)
      {
        ??? = hlp.a(localhlp, 76800);
        label258:
        width = a;
        height = b;
      }
    }
    else
    {
      if (width < height) {
        break label367;
      }
    }
    label367:
    for (int i4 = 1;; i4 = 0)
    {
      if (i1 != i4)
      {
        i4 = width;
        width = height;
        height = i4;
      }
      localArrayList.add(localEncoderConfigurationOutputParams);
      i3 += 1;
      break;
      ??? = localhlp;
      if (targetBitRate > 1500) {
        break label258;
      }
      ??? = hlp.a(localhlp, 307200);
      break label258;
    }
    label373:
    Collections.sort(localArrayList, new hfj(this));
    return localArrayList;
  }
  
  public void f()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (l)
    {
      localArrayList.addAll(a);
      a.clear();
      a(localArrayList);
      return;
    }
  }
  
  public void g()
  {
    d = true;
    f.removeCallbacks(q);
    f.removeCallbacks(g);
    f();
    List localList = e();
    if (localList == null)
    {
      c = false;
      f.postDelayed(q, 200L);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    int i1 = -1;
    int i3 = 0;
    label76:
    MediaCodecSimulcastEncoder.EncoderConfigurationOutputParams localEncoderConfigurationOutputParams;
    int i7;
    int i6;
    if (i3 < localList.size())
    {
      localEncoderConfigurationOutputParams = (MediaCodecSimulcastEncoder.EncoderConfigurationOutputParams)localList.get(i3);
      i7 = width;
      i6 = height;
      if (i1 != -1) {
        break label413;
      }
      if (codecType == 1) {
        i1 = 16;
      }
    }
    label131:
    label341:
    label413:
    for (;;)
    {
      int i5 = i7;
      int i4 = i6;
      int i2 = i1;
      if (i1 > 0)
      {
        i5 = i7 & (i1 - 1 ^ 0xFFFFFFFF);
        i4 = i6 & (i1 - 1 ^ 0xFFFFFFFF);
        i2 = i1 << 1;
      }
      if (Build.VERSION.SDK_INT < 21) {}
      for (??? = new hfb(h, o, nativeEncoderId, codecType, width, height, i5, i4, k, f);; ??? = new hfd(h, o, nativeEncoderId, codecType, width, height, i5, i4, k, temporalLayerCount))
      {
        if (((hfa)???).b(targetBitRate)) {
          break label341;
        }
        boolean bool = ((hfa)???).f();
        localArrayList.add(???);
        a(localArrayList);
        if (!bool) {
          break;
        }
        f.postDelayed(q, 1000L);
        return;
        i1 = 2;
        break label131;
      }
      localArrayList.add(???);
      i3 += 1;
      i1 = i2;
      break label76;
      synchronized (l)
      {
        a.addAll(localArrayList);
        c = true;
        f.postDelayed(g, 200L);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.MediaCodecSimulcastEncoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */