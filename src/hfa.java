import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.os.Bundle;
import com.google.android.libraries.hangouts.video.internal.EncoderManager;
import java.nio.ByteBuffer;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class hfa
{
  private final EncoderManager a;
  private hdo b;
  private MediaCodec c;
  private hdq d;
  private final long e;
  private final int f;
  private final AtomicInteger g;
  private int h;
  private int i;
  private final int j;
  private final int k;
  private final int l;
  private ByteBuffer m;
  private int n;
  private final Object o;
  private int p;
  private volatile boolean q;
  private final hgc r;
  private volatile boolean s = false;
  private volatile boolean t = false;
  private volatile float u;
  private int v;
  private int w;
  private final Random x = new Random();
  private long y;
  
  public hfa(EncoderManager paramEncoderManager, hdo paramhdo, long paramLong, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    a = paramEncoderManager;
    b = paramhdo;
    e = paramLong;
    f = paramInt1;
    k = paramInt2;
    l = paramInt3;
    h = paramInt4;
    i = paramInt5;
    if (paramInt6 > 0) {}
    for (;;)
    {
      j = paramInt6;
      hlk.a("vclib", "Maximum outstanding encoder frames set to %d", new Object[] { Integer.valueOf(j) });
      g = new AtomicInteger(0);
      n = 0;
      o = new Object();
      q = false;
      u = 0.0F;
      v = 0;
      w = 0;
      r = new hgc("MediaCodecEncoder");
      return;
      paramInt6 = 2;
    }
  }
  
  private static ByteBuffer a(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2)
  {
    paramByteBuffer = paramByteBuffer.duplicate();
    paramByteBuffer.position(paramInt1);
    paramByteBuffer.limit(paramInt1 + paramInt2);
    return paramByteBuffer.slice();
  }
  
  protected int a(long paramLong, ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean)
  {
    return a.sendEncodedFrame(e, paramLong, paramByteBuffer, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramBoolean);
  }
  
  protected MediaCodec a(String paramString)
  {
    return MediaCodec.createEncoderByType(paramString);
  }
  
  protected abstract ByteBuffer a(int paramInt);
  
  protected abstract void a();
  
  public void a(int paramInt, MediaCodec.BufferInfo paramBufferInfo)
  {
    boolean bool = true;
    hbs.f();
    if (s) {
      return;
    }
    Object localObject = a(paramInt);
    if ((flags & 0x2) != 0)
    {
      if (f == 1) {}
      for (;;)
      {
        hbs.a("Expected condition to be true", bool);
        m = ByteBuffer.allocateDirect(size);
        m.put(a((ByteBuffer)localObject, offset, size));
        c.releaseOutputBuffer(paramInt, false);
        return;
        bool = false;
      }
    }
    long l1 = System.currentTimeMillis();
    if ((l1 - y >= 1000L) && (w != 0))
    {
      y = l1;
      u = (0.25F * (v / (v + w)) + 0.75F * u);
      v = 0;
      w = 0;
    }
    if ((flags & 0x1) != 0)
    {
      bool = true;
      label178:
      if (!bool) {
        break label428;
      }
      n = 0;
      if (m != null) {
        break label334;
      }
    }
    label195:
    label334:
    label428:
    for (;;)
    {
      l1 = presentationTimeUs / 1000L;
      int i1 = b();
      n += 1;
      if (a(l1, (ByteBuffer)localObject, offset, size, h, i, i1, bool) > 0)
      {
        q = true;
        v += 1;
      }
      for (;;)
      {
        c.releaseOutputBuffer(paramInt, false);
        paramInt = g.decrementAndGet();
        if (paramInt >= 0) {
          break;
        }
        hlk.c("vclib", "The encoder for resolution: (%dx%d) produced extra frames, recovering.", new Object[] { Integer.valueOf(k), Integer.valueOf(l) });
        g.compareAndSet(paramInt, 0);
        return;
        bool = false;
        break label178;
        m.rewind();
        ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(m.capacity() + size);
        localByteBuffer.put(m);
        localByteBuffer.put(a((ByteBuffer)localObject, offset, size));
        localByteBuffer.rewind();
        offset = 0;
        size = localByteBuffer.capacity();
        localObject = localByteBuffer;
        break label195;
        w += 1;
      }
    }
  }
  
  protected abstract void a(MediaCodec paramMediaCodec, MediaFormat paramMediaFormat);
  
  protected void a(MediaFormat paramMediaFormat)
  {
    if (s) {}
    while ((h == paramMediaFormat.getInteger("width")) && (i == paramMediaFormat.getInteger("height"))) {
      return;
    }
    ??? = String.valueOf("Encoder is unable to handle the exact requested camera size. Original size requested: ");
    int i1 = h;
    int i2 = i;
    String str = String.valueOf(paramMediaFormat);
    hlk.a(6, "vclib", String.valueOf(???).length() + 37 + String.valueOf(str).length() + (String)??? + i1 + "x" + i2 + ", new format: " + str);
    synchronized (o)
    {
      h = paramMediaFormat.getInteger("width");
      i = paramMediaFormat.getInteger("height");
      return;
    }
  }
  
  protected void a(IllegalStateException paramIllegalStateException, boolean paramBoolean)
  {
    hlk.a("vclib", "MediaCodec encoder exception:", paramIllegalStateException);
    s = true;
    t = paramBoolean;
  }
  
  public boolean a(int paramInt1, int paramInt2, int paramInt3, long paramLong, boolean paramBoolean, float[] paramArrayOfFloat)
  {
    synchronized (o)
    {
      if (s) {
        return false;
      }
      if (d == null) {
        return false;
      }
    }
    int i1;
    if (!q)
    {
      float f1 = u;
      if (x.nextFloat() >= f1) {
        break label279;
      }
      i1 = 1;
    }
    for (;;)
    {
      q = false;
      int i2 = g.intValue();
      if (i2 >= j)
      {
        i1 = k;
        i1 = l;
        i1 = 1;
      }
      if (i1 != 0) {
        return false;
      }
      d.a();
      if (!d.a(paramLong))
      {
        paramInt1 = k;
        paramInt2 = l;
        hlk.a(6, "vclib", 85 + "Unable to start frame operation for encoder: (" + paramInt1 + "x" + paramInt2 + ". Encode failed.");
        return false;
      }
      r.a(paramInt1, paramInt2, paramInt3, false, paramBoolean);
      r.a(h, i, true);
      r.b(paramArrayOfFloat);
      r.d();
      d.c();
      g.incrementAndGet();
      return true;
      for (;;)
      {
        if (i1 == 0) {
          break label285;
        }
        i1 = 1;
        break;
        label279:
        i1 = 0;
      }
      label285:
      i1 = 0;
    }
  }
  
  protected abstract int b();
  
  /* Error */
  public boolean b(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: sipush 950
    //   5: imul
    //   6: putfield 320	hfa:p	I
    //   9: aload_0
    //   10: aload_0
    //   11: aload_0
    //   12: invokevirtual 322	hfa:k	()Ljava/lang/String;
    //   15: invokevirtual 324	hfa:a	(Ljava/lang/String;)Landroid/media/MediaCodec;
    //   18: putfield 185	hfa:c	Landroid/media/MediaCodec;
    //   21: aload_0
    //   22: getfield 185	hfa:c	Landroid/media/MediaCodec;
    //   25: ifnonnull +108 -> 133
    //   28: ldc_w 326
    //   31: invokestatic 328	hbs:a	(Ljava/lang/String;)V
    //   34: aload_0
    //   35: invokevirtual 322	hfa:k	()Ljava/lang/String;
    //   38: invokestatic 246	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   41: astore 4
    //   43: aload 4
    //   45: invokevirtual 251	java/lang/String:length	()I
    //   48: ifeq +70 -> 118
    //   51: ldc_w 330
    //   54: aload 4
    //   56: invokevirtual 334	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   59: astore 4
    //   61: bipush 6
    //   63: ldc 76
    //   65: aload 4
    //   67: invokestatic 269	hlk:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   70: iconst_0
    //   71: ireturn
    //   72: astore 4
    //   74: aload 4
    //   76: invokestatic 246	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   79: astore 4
    //   81: new 248	java/lang/StringBuilder
    //   84: dup
    //   85: aload 4
    //   87: invokestatic 246	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   90: invokevirtual 251	java/lang/String:length	()I
    //   93: bipush 46
    //   95: iadd
    //   96: invokespecial 252	java/lang/StringBuilder:<init>	(I)V
    //   99: ldc_w 336
    //   102: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: aload 4
    //   107: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual 266	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokestatic 328	hbs:a	(Ljava/lang/String;)V
    //   116: iconst_0
    //   117: ireturn
    //   118: new 243	java/lang/String
    //   121: dup
    //   122: ldc_w 330
    //   125: invokespecial 337	java/lang/String:<init>	(Ljava/lang/String;)V
    //   128: astore 4
    //   130: goto -69 -> 61
    //   133: invokestatic 338	hlk:a	()Z
    //   136: ifeq +41 -> 177
    //   139: aload_0
    //   140: getfield 66	hfa:k	I
    //   143: istore_1
    //   144: aload_0
    //   145: getfield 68	hfa:l	I
    //   148: istore_1
    //   149: aload_0
    //   150: getfield 70	hfa:h	I
    //   153: istore_1
    //   154: aload_0
    //   155: getfield 72	hfa:i	I
    //   158: istore_1
    //   159: aload_0
    //   160: getfield 320	hfa:p	I
    //   163: istore_1
    //   164: aload_0
    //   165: getfield 185	hfa:c	Landroid/media/MediaCodec;
    //   168: invokevirtual 341	android/media/MediaCodec:getName	()Ljava/lang/String;
    //   171: pop
    //   172: aload_0
    //   173: getfield 62	hfa:e	J
    //   176: lstore_2
    //   177: aload_0
    //   178: invokevirtual 322	hfa:k	()Ljava/lang/String;
    //   181: aload_0
    //   182: getfield 70	hfa:h	I
    //   185: aload_0
    //   186: getfield 72	hfa:i	I
    //   189: invokestatic 345	android/media/MediaFormat:createVideoFormat	(Ljava/lang/String;II)Landroid/media/MediaFormat;
    //   192: astore 4
    //   194: aload 4
    //   196: ldc_w 347
    //   199: ldc_w 348
    //   202: invokevirtual 352	android/media/MediaFormat:setInteger	(Ljava/lang/String;I)V
    //   205: aload 4
    //   207: ldc_w 354
    //   210: aload_0
    //   211: getfield 320	hfa:p	I
    //   214: invokevirtual 352	android/media/MediaFormat:setInteger	(Ljava/lang/String;I)V
    //   217: aload 4
    //   219: ldc_w 356
    //   222: bipush 30
    //   224: invokevirtual 352	android/media/MediaFormat:setInteger	(Ljava/lang/String;I)V
    //   227: aload 4
    //   229: ldc_w 358
    //   232: bipush 120
    //   234: invokevirtual 352	android/media/MediaFormat:setInteger	(Ljava/lang/String;I)V
    //   237: aload_0
    //   238: aload_0
    //   239: getfield 185	hfa:c	Landroid/media/MediaCodec;
    //   242: aload 4
    //   244: invokevirtual 360	hfa:a	(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    //   247: aload_0
    //   248: getfield 185	hfa:c	Landroid/media/MediaCodec;
    //   251: aload 4
    //   253: aconst_null
    //   254: aconst_null
    //   255: iconst_1
    //   256: invokevirtual 364	android/media/MediaCodec:configure	(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    //   259: new 287	hdq
    //   262: dup
    //   263: aload_0
    //   264: getfield 60	hfa:b	Lhdo;
    //   267: aload_0
    //   268: getfield 185	hfa:c	Landroid/media/MediaCodec;
    //   271: invokevirtual 368	android/media/MediaCodec:createInputSurface	()Landroid/view/Surface;
    //   274: invokespecial 371	hdq:<init>	(Lhdo;Landroid/view/Surface;)V
    //   277: astore 5
    //   279: aload_0
    //   280: getfield 185	hfa:c	Landroid/media/MediaCodec;
    //   283: invokevirtual 374	android/media/MediaCodec:start	()V
    //   286: aload_0
    //   287: getfield 100	hfa:o	Ljava/lang/Object;
    //   290: astore 4
    //   292: aload 4
    //   294: monitorenter
    //   295: aload_0
    //   296: getfield 278	hfa:d	Lhdq;
    //   299: ifnull +16 -> 315
    //   302: ldc_w 376
    //   305: invokestatic 328	hbs:a	(Ljava/lang/String;)V
    //   308: aload_0
    //   309: getfield 278	hfa:d	Lhdq;
    //   312: invokevirtual 378	hdq:b	()V
    //   315: aload_0
    //   316: aload 5
    //   318: putfield 278	hfa:d	Lhdq;
    //   321: aload 4
    //   323: monitorexit
    //   324: aload_0
    //   325: invokevirtual 380	hfa:a	()V
    //   328: iconst_1
    //   329: ireturn
    //   330: astore 4
    //   332: bipush 6
    //   334: ldc 76
    //   336: ldc_w 382
    //   339: invokestatic 269	hlk:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   342: aload_0
    //   343: aload 4
    //   345: iconst_1
    //   346: invokevirtual 384	hfa:a	(Ljava/lang/IllegalStateException;Z)V
    //   349: iconst_0
    //   350: ireturn
    //   351: astore 5
    //   353: aload 4
    //   355: monitorexit
    //   356: aload 5
    //   358: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	359	0	this	hfa
    //   0	359	1	paramInt	int
    //   176	1	2	l1	long
    //   41	25	4	str	String
    //   72	3	4	localIOException	java.io.IOException
    //   330	24	4	localIllegalStateException	IllegalStateException
    //   277	40	5	localhdq	hdq
    //   351	6	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   9	21	72	java/io/IOException
    //   247	295	330	java/lang/IllegalStateException
    //   324	328	330	java/lang/IllegalStateException
    //   356	359	330	java/lang/IllegalStateException
    //   295	315	351	finally
    //   315	324	351	finally
    //   353	356	351	finally
  }
  
  protected MediaCodec c()
  {
    return c;
  }
  
  public void c(int paramInt)
  {
    if (s) {}
    do
    {
      return;
      paramInt *= 950;
    } while (paramInt == p);
    int i1 = k;
    int i2 = l;
    hlk.a(4, "vclib", 81 + "Encoder bitrate changing to " + paramInt + " for resolution: (" + i1 + "x" + i2 + ")");
    p = paramInt;
    Bundle localBundle = new Bundle();
    localBundle.putInt("video-bitrate", p);
    c.setParameters(localBundle);
  }
  
  protected int d()
  {
    return n;
  }
  
  public boolean e()
  {
    return s;
  }
  
  public boolean f()
  {
    return t;
  }
  
  public long g()
  {
    return e;
  }
  
  public int h()
  {
    return f;
  }
  
  public int i()
  {
    return k;
  }
  
  public int j()
  {
    return l;
  }
  
  public String k()
  {
    if (f == 0) {
      return "video/x-vnd.on2.vp8";
    }
    if (f == 1) {
      return "video/avc";
    }
    int i1 = f;
    hbs.a(31 + "Unknown codec type: " + i1);
    return null;
  }
  
  public void l()
  {
    if (s) {
      return;
    }
    int i1 = k;
    int i2 = l;
    hlk.a(4, "vclib", 66 + "Encoder keyframe request for resolution: (" + i1 + "," + i2 + ")");
    Bundle localBundle = new Bundle();
    localBundle.putInt("request-sync", 0);
    c.setParameters(localBundle);
  }
  
  public hdq m()
  {
    hdq localhdq;
    synchronized (o)
    {
      localhdq = d;
      d = null;
      if (c != null)
      {
        ??? = String.valueOf(c.getName());
        int i1 = k;
        int i2 = l;
        new StringBuilder(String.valueOf(???).length() + 50).append("Releasing encoder: ").append((String)???).append(", size: ").append(i1).append("x").append(i2);
      }
    }
    try
    {
      c.stop();
      c.release();
      c = null;
      return localhdq;
      localObject1 = finally;
      throw ((Throwable)localObject1);
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     hfa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */