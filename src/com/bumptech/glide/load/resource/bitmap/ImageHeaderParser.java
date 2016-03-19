package com.bumptech.glide.load.resource.bitmap;

import aal;
import amg;
import android.util.Log;
import arq;
import arr;
import ars;
import art;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

public final class ImageHeaderParser
{
  private static final byte[] a = "Exif\000\000".getBytes(Charset.forName("UTF-8"));
  private static final int[] b = { 0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8 };
  private final amg c;
  private final ars d;
  
  public ImageHeaderParser(InputStream paramInputStream, amg paramamg)
  {
    aal.a(paramInputStream, "Argument must not be null");
    c = ((amg)aal.a(paramamg, "Argument must not be null"));
    d = new art(paramInputStream);
  }
  
  public ImageHeaderParser(ByteBuffer paramByteBuffer, amg paramamg)
  {
    aal.a(paramByteBuffer, "Argument must not be null");
    c = ((amg)aal.a(paramamg, "Argument must not be null"));
    d = new arq(paramByteBuffer);
  }
  
  private static int a(arr paramarr)
  {
    int i = paramarr.b(6);
    ByteOrder localByteOrder;
    label50:
    int n;
    int m;
    int i1;
    if (i != 19789) {
      if (i == 18761)
      {
        localByteOrder = ByteOrder.LITTLE_ENDIAN;
        paramarr.a(localByteOrder);
        int j = paramarr.a(10) + 6;
        int k = paramarr.b(j);
        i = 0;
        if (i >= k) {
          break label428;
        }
        n = j + 2 + i * 12;
        m = paramarr.b(n);
        if (m == 274)
        {
          i1 = paramarr.b(n + 2);
          if ((i1 > 0) && (i1 <= 12)) {
            break label175;
          }
          if (Log.isLoggable("ImageHeaderParser", 3)) {
            new StringBuilder(37).append("Got invalid format code = ").append(i1);
          }
        }
      }
    }
    for (;;)
    {
      i += 1;
      break label50;
      if (Log.isLoggable("ImageHeaderParser", 3)) {
        new StringBuilder(27).append("Unknown endianness = ").append(i);
      }
      localByteOrder = ByteOrder.BIG_ENDIAN;
      break;
      label175:
      int i2 = paramarr.a(n + 4);
      if (i2 < 0)
      {
        if (!Log.isLoggable("ImageHeaderParser", 3)) {}
      }
      else
      {
        if (Log.isLoggable("ImageHeaderParser", 3)) {
          new StringBuilder(94).append("Got tagIndex=").append(i).append(" tagType=").append(m).append(" formatCode=").append(i1).append(" componentCount=").append(i2);
        }
        i2 += b[i1];
        if (i2 > 4)
        {
          if (Log.isLoggable("ImageHeaderParser", 3)) {
            new StringBuilder(71).append("Got byte count > 4, not orientation, continuing, formatCode=").append(i1);
          }
        }
        else
        {
          n += 8;
          if ((n < 0) || (n > paramarr.a()))
          {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
              new StringBuilder(54).append("Illegal tagValueOffset=").append(n).append(" tagType=").append(m);
            }
          }
          else
          {
            if ((i2 >= 0) && (n + i2 <= paramarr.a())) {
              break label421;
            }
            if (Log.isLoggable("ImageHeaderParser", 3)) {
              new StringBuilder(59).append("Illegal number of bytes for TI tag data tagType=").append(m);
            }
          }
        }
      }
    }
    label421:
    return paramarr.b(n);
    label428:
    return -1;
  }
  
  private static boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool;
    if ((paramArrayOfByte != null) && (paramInt > a.length))
    {
      bool = true;
      if (bool) {
        paramInt = 0;
      }
    }
    else
    {
      for (;;)
      {
        if (paramInt >= a.length) {
          return bool;
        }
        if (paramArrayOfByte[paramInt] != a[paramInt])
        {
          return false;
          bool = false;
          break;
        }
        paramInt += 1;
      }
    }
    return bool;
  }
  
  private int d()
  {
    int i = d.b();
    if (i != 255) {
      if (Log.isLoggable("ImageHeaderParser", 3)) {
        new StringBuilder(24).append("Unknown segmentId=").append(i);
      }
    }
    int j;
    long l;
    do
    {
      do
      {
        return -1;
        i = d.b();
      } while ((i == 218) || (i == 217));
      j = d.a() - 2;
      if (i == 225) {
        return j;
      }
      l = d.a(j);
      if (l == j) {
        break;
      }
    } while (!Log.isLoggable("ImageHeaderParser", 3));
    String str = String.valueOf("Unable to skip enough data, type: ");
    new StringBuilder(String.valueOf(str).length() + 79).append(str).append(i).append(", wanted to skip: ").append(j).append(", but actually skipped: ").append(l);
    return -1;
    return j;
  }
  
  public boolean a()
  {
    return b().hasAlpha();
  }
  
  public ImageHeaderParser.ImageType b()
  {
    int i = d.a();
    if (i == 65496) {
      return ImageHeaderParser.ImageType.JPEG;
    }
    i = i << 16 & 0xFFFF0000 | d.a() & 0xFFFF;
    if (i == -1991225785)
    {
      d.a(21L);
      if (d.c() >= 3) {
        return ImageHeaderParser.ImageType.PNG_A;
      }
      return ImageHeaderParser.ImageType.PNG;
    }
    if (i >> 8 == 4671814) {
      return ImageHeaderParser.ImageType.GIF;
    }
    if (i != 1380533830) {
      return ImageHeaderParser.ImageType.UNKNOWN;
    }
    d.a(4L);
    if ((d.a() << 16 & 0xFFFF0000 | d.a() & 0xFFFF) != 1464156752) {
      return ImageHeaderParser.ImageType.UNKNOWN;
    }
    i = d.a() << 16 & 0xFFFF0000 | d.a() & 0xFFFF;
    if ((i & 0xFF00) != 1448097792) {
      return ImageHeaderParser.ImageType.UNKNOWN;
    }
    if ((i & 0xFF) == 88)
    {
      d.a(4L);
      if ((d.c() & 0x10) != 0) {
        return ImageHeaderParser.ImageType.WEBP_A;
      }
      return ImageHeaderParser.ImageType.WEBP;
    }
    if ((i & 0xFF) == 76)
    {
      d.a(4L);
      if ((d.c() & 0x8) != 0) {
        return ImageHeaderParser.ImageType.WEBP_A;
      }
      return ImageHeaderParser.ImageType.WEBP;
    }
    return ImageHeaderParser.ImageType.WEBP;
  }
  
  /* Error */
  public int c()
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore_2
    //   2: aload_0
    //   3: getfield 57	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:d	Lars;
    //   6: invokeinterface 134 1 0
    //   11: istore_3
    //   12: iload_3
    //   13: ldc -93
    //   15: iand
    //   16: ldc -93
    //   18: if_icmpeq +17 -> 35
    //   21: iload_3
    //   22: sipush 19789
    //   25: if_icmpeq +10 -> 35
    //   28: iload_3
    //   29: sipush 18761
    //   32: if_icmpne +39 -> 71
    //   35: iconst_1
    //   36: istore_1
    //   37: iload_1
    //   38: ifne +38 -> 76
    //   41: ldc 83
    //   43: iconst_3
    //   44: invokestatic 89	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   47: ifeq +22 -> 69
    //   50: new 91	java/lang/StringBuilder
    //   53: dup
    //   54: bipush 47
    //   56: invokespecial 94	java/lang/StringBuilder:<init>	(I)V
    //   59: ldc -56
    //   61: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: iload_3
    //   65: invokevirtual 103	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: iconst_m1
    //   70: ireturn
    //   71: iconst_0
    //   72: istore_1
    //   73: goto -36 -> 37
    //   76: aload_0
    //   77: invokespecial 202	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:d	()I
    //   80: istore_3
    //   81: iload_3
    //   82: iconst_m1
    //   83: if_icmpeq -14 -> 69
    //   86: aload_0
    //   87: getfield 50	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:c	Lamg;
    //   90: iload_3
    //   91: invokevirtual 205	amg:a	(I)[B
    //   94: astore 5
    //   96: aload_0
    //   97: getfield 57	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:d	Lars;
    //   100: aload 5
    //   102: iload_3
    //   103: invokeinterface 208 3 0
    //   108: istore 4
    //   110: iload 4
    //   112: iload_3
    //   113: if_icmpeq +72 -> 185
    //   116: iload_2
    //   117: istore_1
    //   118: ldc 83
    //   120: iconst_3
    //   121: invokestatic 89	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   124: ifeq +50 -> 174
    //   127: ldc -46
    //   129: invokestatic 143	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   132: astore 6
    //   134: new 91	java/lang/StringBuilder
    //   137: dup
    //   138: aload 6
    //   140: invokestatic 143	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   143: invokevirtual 146	java/lang/String:length	()I
    //   146: bipush 39
    //   148: iadd
    //   149: invokespecial 94	java/lang/StringBuilder:<init>	(I)V
    //   152: aload 6
    //   154: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: iload_3
    //   158: invokevirtual 103	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   161: ldc -44
    //   163: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: iload 4
    //   168: invokevirtual 103	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   171: pop
    //   172: iload_2
    //   173: istore_1
    //   174: aload_0
    //   175: getfield 50	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:c	Lamg;
    //   178: aload 5
    //   180: invokevirtual 215	amg:a	([B)V
    //   183: iload_1
    //   184: ireturn
    //   185: iload_2
    //   186: istore_1
    //   187: aload 5
    //   189: iload_3
    //   190: invokestatic 217	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:a	([BI)Z
    //   193: ifeq -19 -> 174
    //   196: new 66	arr
    //   199: dup
    //   200: aload 5
    //   202: iload_3
    //   203: invokespecial 220	arr:<init>	([BI)V
    //   206: invokestatic 222	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:a	(Larr;)I
    //   209: istore_1
    //   210: goto -36 -> 174
    //   213: astore 6
    //   215: aload_0
    //   216: getfield 50	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:c	Lamg;
    //   219: aload 5
    //   221: invokevirtual 215	amg:a	([B)V
    //   224: aload 6
    //   226: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	227	0	this	ImageHeaderParser
    //   36	174	1	i	int
    //   1	185	2	j	int
    //   11	192	3	k	int
    //   108	59	4	m	int
    //   94	126	5	arrayOfByte	byte[]
    //   132	21	6	str	String
    //   213	12	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   96	110	213	finally
    //   118	172	213	finally
    //   187	210	213	finally
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.ImageHeaderParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */