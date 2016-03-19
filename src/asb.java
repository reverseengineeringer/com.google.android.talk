import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;

public final class asb
  implements ajb<ParcelFileDescriptor, Bitmap>
{
  public static final aix<Long> a = aix.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", Long.valueOf(-1L), new asc());
  public static final aix<Integer> b = aix.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", null, new asd());
  private static final ase c = new ase();
  private final amd d;
  private final ase e;
  
  public asb(amd paramamd)
  {
    this(paramamd, c);
  }
  
  private asb(amd paramamd, ase paramase)
  {
    d = paramamd;
    e = paramase;
  }
  
  /* Error */
  private alr<Bitmap> a(int paramInt, aja paramaja)
  {
    // Byte code:
    //   0: aload_2
    //   1: getstatic 41	asb:a	Laix;
    //   4: invokevirtual 69	aja:a	(Laix;)Ljava/lang/Object;
    //   7: checkcast 25	java/lang/Long
    //   10: invokevirtual 73	java/lang/Long:longValue	()J
    //   13: lstore_3
    //   14: lload_3
    //   15: lconst_0
    //   16: lcmp
    //   17: ifge +40 -> 57
    //   20: lload_3
    //   21: ldc2_w 22
    //   24: lcmp
    //   25: ifeq +32 -> 57
    //   28: new 75	java/lang/IllegalArgumentException
    //   31: dup
    //   32: new 77	java/lang/StringBuilder
    //   35: dup
    //   36: bipush 83
    //   38: invokespecial 80	java/lang/StringBuilder:<init>	(I)V
    //   41: ldc 82
    //   43: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: lload_3
    //   47: invokevirtual 89	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   50: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: invokespecial 96	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   56: athrow
    //   57: aload_2
    //   58: getstatic 48	asb:b	Laix;
    //   61: invokevirtual 69	aja:a	(Laix;)Ljava/lang/Object;
    //   64: checkcast 98	java/lang/Integer
    //   67: astore_2
    //   68: new 100	android/media/MediaMetadataRetriever
    //   71: dup
    //   72: invokespecial 101	android/media/MediaMetadataRetriever:<init>	()V
    //   75: astore 5
    //   77: aload 5
    //   79: aload_1
    //   80: invokevirtual 107	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   83: invokevirtual 111	android/media/MediaMetadataRetriever:setDataSource	(Ljava/io/FileDescriptor;)V
    //   86: lload_3
    //   87: ldc2_w 22
    //   90: lcmp
    //   91: ifne +27 -> 118
    //   94: aload 5
    //   96: invokevirtual 115	android/media/MediaMetadataRetriever:getFrameAtTime	()Landroid/graphics/Bitmap;
    //   99: astore_2
    //   100: aload 5
    //   102: invokevirtual 118	android/media/MediaMetadataRetriever:release	()V
    //   105: aload_1
    //   106: invokevirtual 121	android/os/ParcelFileDescriptor:close	()V
    //   109: aload_2
    //   110: aload_0
    //   111: getfield 61	asb:d	Lamd;
    //   114: invokestatic 126	aqy:a	(Landroid/graphics/Bitmap;Lamd;)Laqy;
    //   117: areturn
    //   118: aload_2
    //   119: ifnonnull +13 -> 132
    //   122: aload 5
    //   124: lload_3
    //   125: invokevirtual 129	android/media/MediaMetadataRetriever:getFrameAtTime	(J)Landroid/graphics/Bitmap;
    //   128: astore_2
    //   129: goto -29 -> 100
    //   132: aload 5
    //   134: lload_3
    //   135: aload_2
    //   136: invokevirtual 133	java/lang/Integer:intValue	()I
    //   139: invokevirtual 136	android/media/MediaMetadataRetriever:getFrameAtTime	(JI)Landroid/graphics/Bitmap;
    //   142: astore_2
    //   143: goto -43 -> 100
    //   146: astore_1
    //   147: aload 5
    //   149: invokevirtual 118	android/media/MediaMetadataRetriever:release	()V
    //   152: aload_1
    //   153: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	154	0	this	asb
    //   0	154	1	paramInt	int
    //   0	154	2	paramaja	aja
    //   13	122	3	l	long
    //   75	73	5	localMediaMetadataRetriever	MediaMetadataRetriever
    // Exception table:
    //   from	to	target	type
    //   77	86	146	finally
    //   94	100	146	finally
    //   122	129	146	finally
    //   132	143	146	finally
  }
  
  private static boolean a(ParcelFileDescriptor paramParcelFileDescriptor)
  {
    MediaMetadataRetriever localMediaMetadataRetriever = new MediaMetadataRetriever();
    try
    {
      localMediaMetadataRetriever.setDataSource(paramParcelFileDescriptor.getFileDescriptor());
      localMediaMetadataRetriever.release();
      return true;
    }
    catch (RuntimeException paramParcelFileDescriptor)
    {
      paramParcelFileDescriptor = paramParcelFileDescriptor;
      localMediaMetadataRetriever.release();
      return false;
    }
    finally
    {
      paramParcelFileDescriptor = finally;
      localMediaMetadataRetriever.release();
      throw paramParcelFileDescriptor;
    }
  }
}

/* Location:
 * Qualified Name:     asb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */