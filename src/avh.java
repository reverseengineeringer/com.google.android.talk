import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

public final class avh
{
  private static final AtomicReference<byte[]> a = new AtomicReference();
  
  /* Error */
  public static ByteBuffer a(java.io.File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 22	java/io/RandomAccessFile
    //   5: dup
    //   6: aload_0
    //   7: ldc 24
    //   9: invokespecial 27	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   12: astore_1
    //   13: aload_1
    //   14: invokevirtual 31	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   17: astore_3
    //   18: aload_3
    //   19: getstatic 37	java/nio/channels/FileChannel$MapMode:READ_ONLY	Ljava/nio/channels/FileChannel$MapMode;
    //   22: lconst_0
    //   23: aload_0
    //   24: invokevirtual 43	java/io/File:length	()J
    //   27: invokevirtual 49	java/nio/channels/FileChannel:map	(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    //   30: invokevirtual 55	java/nio/MappedByteBuffer:load	()Ljava/nio/MappedByteBuffer;
    //   33: astore_0
    //   34: aload_3
    //   35: ifnull +7 -> 42
    //   38: aload_3
    //   39: invokevirtual 58	java/nio/channels/FileChannel:close	()V
    //   42: aload_1
    //   43: invokevirtual 59	java/io/RandomAccessFile:close	()V
    //   46: aload_0
    //   47: areturn
    //   48: astore_0
    //   49: aconst_null
    //   50: astore_1
    //   51: aload_2
    //   52: ifnull +7 -> 59
    //   55: aload_2
    //   56: invokevirtual 58	java/nio/channels/FileChannel:close	()V
    //   59: aload_1
    //   60: ifnull +7 -> 67
    //   63: aload_1
    //   64: invokevirtual 59	java/io/RandomAccessFile:close	()V
    //   67: aload_0
    //   68: athrow
    //   69: astore_2
    //   70: goto -28 -> 42
    //   73: astore_1
    //   74: aload_0
    //   75: areturn
    //   76: astore_2
    //   77: goto -18 -> 59
    //   80: astore_1
    //   81: goto -14 -> 67
    //   84: astore_0
    //   85: goto -34 -> 51
    //   88: astore_0
    //   89: aload_3
    //   90: astore_2
    //   91: goto -40 -> 51
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	paramFile	java.io.File
    //   12	52	1	localRandomAccessFile	java.io.RandomAccessFile
    //   73	1	1	localIOException1	java.io.IOException
    //   80	1	1	localIOException2	java.io.IOException
    //   1	55	2	localObject1	Object
    //   69	1	2	localIOException3	java.io.IOException
    //   76	1	2	localIOException4	java.io.IOException
    //   90	1	2	localObject2	Object
    //   17	73	3	localFileChannel	java.nio.channels.FileChannel
    // Exception table:
    //   from	to	target	type
    //   2	13	48	finally
    //   38	42	69	java/io/IOException
    //   42	46	73	java/io/IOException
    //   55	59	76	java/io/IOException
    //   63	67	80	java/io/IOException
    //   13	18	84	finally
    //   18	34	88	finally
  }
  
  /* Error */
  public static void a(ByteBuffer paramByteBuffer, java.io.File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_2
    //   5: new 22	java/io/RandomAccessFile
    //   8: dup
    //   9: aload_1
    //   10: ldc 62
    //   12: invokespecial 27	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   15: astore_3
    //   16: aload 4
    //   18: astore_1
    //   19: aload_3
    //   20: invokevirtual 31	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   23: astore_2
    //   24: aload_2
    //   25: astore_1
    //   26: aload_2
    //   27: aload_0
    //   28: invokevirtual 66	java/nio/channels/FileChannel:write	(Ljava/nio/ByteBuffer;)I
    //   31: pop
    //   32: aload_2
    //   33: astore_1
    //   34: aload_2
    //   35: iconst_0
    //   36: invokevirtual 70	java/nio/channels/FileChannel:force	(Z)V
    //   39: aload_2
    //   40: astore_1
    //   41: aload_2
    //   42: invokevirtual 58	java/nio/channels/FileChannel:close	()V
    //   45: aload_2
    //   46: astore_1
    //   47: aload_3
    //   48: invokevirtual 59	java/io/RandomAccessFile:close	()V
    //   51: aload_2
    //   52: ifnull +7 -> 59
    //   55: aload_2
    //   56: invokevirtual 58	java/nio/channels/FileChannel:close	()V
    //   59: aload_3
    //   60: invokevirtual 59	java/io/RandomAccessFile:close	()V
    //   63: return
    //   64: astore_0
    //   65: aconst_null
    //   66: astore_1
    //   67: aload_2
    //   68: ifnull +7 -> 75
    //   71: aload_2
    //   72: invokevirtual 58	java/nio/channels/FileChannel:close	()V
    //   75: aload_1
    //   76: ifnull +7 -> 83
    //   79: aload_1
    //   80: invokevirtual 59	java/io/RandomAccessFile:close	()V
    //   83: aload_0
    //   84: athrow
    //   85: astore_0
    //   86: goto -27 -> 59
    //   89: astore_0
    //   90: return
    //   91: astore_2
    //   92: goto -17 -> 75
    //   95: astore_1
    //   96: goto -13 -> 83
    //   99: astore_0
    //   100: aload_1
    //   101: astore_2
    //   102: aload_3
    //   103: astore_1
    //   104: goto -37 -> 67
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	paramByteBuffer	ByteBuffer
    //   0	107	1	paramFile	java.io.File
    //   4	68	2	localFileChannel	java.nio.channels.FileChannel
    //   91	1	2	localIOException	java.io.IOException
    //   101	1	2	localFile	java.io.File
    //   15	88	3	localRandomAccessFile	java.io.RandomAccessFile
    //   1	16	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   5	16	64	finally
    //   55	59	85	java/io/IOException
    //   59	63	89	java/io/IOException
    //   71	75	91	java/io/IOException
    //   79	83	95	java/io/IOException
    //   19	24	99	finally
    //   26	32	99	finally
    //   34	39	99	finally
    //   41	45	99	finally
    //   47	51	99	finally
  }
  
  public static byte[] a(ByteBuffer paramByteBuffer)
  {
    if ((!paramByteBuffer.isReadOnly()) && (paramByteBuffer.hasArray())) {}
    for (Object localObject = new avj(paramByteBuffer.array(), paramByteBuffer.arrayOffset(), paramByteBuffer.limit()); (localObject != null) && (a == 0) && (b == c.length); localObject = null) {
      return paramByteBuffer.array();
    }
    paramByteBuffer = paramByteBuffer.asReadOnlyBuffer();
    localObject = new byte[paramByteBuffer.limit()];
    paramByteBuffer.position(0);
    paramByteBuffer.get((byte[])localObject);
    return (byte[])localObject;
  }
  
  public static InputStream b(ByteBuffer paramByteBuffer)
  {
    return new avi(paramByteBuffer);
  }
}

/* Location:
 * Qualified Name:     avh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */