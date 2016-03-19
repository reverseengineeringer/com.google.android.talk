import android.content.Context;
import java.nio.ByteBuffer;

public final class ask
  implements ajb<ByteBuffer, asn>
{
  public static final aix<Boolean> a = aix.a("com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder.DisableAnimation", Boolean.valueOf(false));
  private static final asl b = new asl();
  private static final asm c = new asm();
  private final Context d;
  private final asm e;
  private final amd f;
  private final asl g;
  private final ail h;
  
  public ask(Context paramContext, amd paramamd, aly paramaly)
  {
    this(paramContext, paramamd, paramaly, c, b);
  }
  
  private ask(Context paramContext, amd paramamd, aly paramaly, asm paramasm, asl paramasl)
  {
    d = paramContext;
    f = paramamd;
    g = paramasl;
    h = new ail(paramamd, paramaly);
    e = paramasm;
  }
  
  /* Error */
  private asi a(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 12
    //   3: aload_0
    //   4: getfield 72	ask:e	Lasm;
    //   7: aload_1
    //   8: invokevirtual 76	asm:a	(Ljava/nio/ByteBuffer;)Laio;
    //   11: astore 13
    //   13: invokestatic 81	avm:a	()J
    //   16: lstore 9
    //   18: aload 13
    //   20: invokevirtual 86	aio:b	()Lain;
    //   23: astore 14
    //   25: aload 12
    //   27: astore 11
    //   29: aload 14
    //   31: invokevirtual 91	ain:c	()I
    //   34: ifle +19 -> 53
    //   37: aload 14
    //   39: invokevirtual 93	ain:d	()I
    //   42: istore 6
    //   44: iload 6
    //   46: ifeq +19 -> 65
    //   49: aload 12
    //   51: astore 11
    //   53: aload_0
    //   54: getfield 72	ask:e	Lasm;
    //   57: aload 13
    //   59: invokevirtual 96	asm:a	(Laio;)V
    //   62: aload 11
    //   64: areturn
    //   65: aload 14
    //   67: invokevirtual 98	ain:a	()I
    //   70: iload_3
    //   71: idiv
    //   72: aload 14
    //   74: invokevirtual 100	ain:b	()I
    //   77: iload_2
    //   78: idiv
    //   79: invokestatic 106	java/lang/Math:min	(II)I
    //   82: istore 6
    //   84: iload 6
    //   86: ifne +232 -> 318
    //   89: iconst_0
    //   90: istore 6
    //   92: iconst_1
    //   93: iload 6
    //   95: invokestatic 109	java/lang/Math:max	(II)I
    //   98: istore 6
    //   100: ldc 111
    //   102: iconst_2
    //   103: invokestatic 117	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   106: ifeq +96 -> 202
    //   109: ldc 119
    //   111: invokestatic 124	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   114: astore 11
    //   116: aload 14
    //   118: invokevirtual 100	ain:b	()I
    //   121: istore 7
    //   123: aload 14
    //   125: invokevirtual 98	ain:a	()I
    //   128: istore 8
    //   130: new 126	java/lang/StringBuilder
    //   133: dup
    //   134: aload 11
    //   136: invokestatic 124	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   139: invokevirtual 129	java/lang/String:length	()I
    //   142: bipush 95
    //   144: iadd
    //   145: invokespecial 132	java/lang/StringBuilder:<init>	(I)V
    //   148: aload 11
    //   150: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: iload 6
    //   155: invokevirtual 139	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   158: ldc -115
    //   160: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: iload_2
    //   164: invokevirtual 139	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   167: ldc -113
    //   169: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: iload_3
    //   173: invokevirtual 139	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   176: ldc -111
    //   178: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: iload 7
    //   183: invokevirtual 139	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   186: ldc -113
    //   188: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: iload 8
    //   193: invokevirtual 139	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   196: ldc -109
    //   198: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: pop
    //   202: new 149	aik
    //   205: dup
    //   206: aload_0
    //   207: getfield 70	ask:h	Lail;
    //   210: aload 14
    //   212: aload_1
    //   213: iload 6
    //   215: invokespecial 152	aik:<init>	(Lail;Lain;Ljava/nio/ByteBuffer;I)V
    //   218: astore_1
    //   219: aload_1
    //   220: invokevirtual 154	aik:b	()V
    //   223: aload_1
    //   224: invokevirtual 157	aik:g	()Landroid/graphics/Bitmap;
    //   227: astore 14
    //   229: aload 12
    //   231: astore 11
    //   233: aload 14
    //   235: ifnull -182 -> 53
    //   238: getstatic 162	aqt:b	Lajd;
    //   241: checkcast 159	aqt
    //   244: astore 11
    //   246: new 164	asn
    //   249: dup
    //   250: aload_0
    //   251: getfield 59	ask:d	Landroid/content/Context;
    //   254: aload_1
    //   255: aload_0
    //   256: getfield 61	ask:f	Lamd;
    //   259: aload 11
    //   261: iload_2
    //   262: iload_3
    //   263: aload 14
    //   265: invokespecial 167	asn:<init>	(Landroid/content/Context;Laik;Lamd;Lajd;IILandroid/graphics/Bitmap;)V
    //   268: astore_1
    //   269: ldc 111
    //   271: iconst_2
    //   272: invokestatic 117	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   275: ifeq +30 -> 305
    //   278: lload 9
    //   280: invokestatic 170	avm:a	(J)D
    //   283: dstore 4
    //   285: new 126	java/lang/StringBuilder
    //   288: dup
    //   289: bipush 51
    //   291: invokespecial 132	java/lang/StringBuilder:<init>	(I)V
    //   294: ldc -84
    //   296: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: dload 4
    //   301: invokevirtual 175	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   304: pop
    //   305: new 177	asi
    //   308: dup
    //   309: aload_1
    //   310: invokespecial 180	asi:<init>	(Lasn;)V
    //   313: astore 11
    //   315: goto -262 -> 53
    //   318: iload 6
    //   320: invokestatic 186	java/lang/Integer:highestOneBit	(I)I
    //   323: istore 6
    //   325: goto -233 -> 92
    //   328: astore_1
    //   329: aload_0
    //   330: getfield 72	ask:e	Lasm;
    //   333: aload 13
    //   335: invokevirtual 96	asm:a	(Laio;)V
    //   338: aload_1
    //   339: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	340	0	this	ask
    //   0	340	1	paramByteBuffer	ByteBuffer
    //   0	340	2	paramInt1	int
    //   0	340	3	paramInt2	int
    //   283	17	4	d1	double
    //   42	282	6	i	int
    //   121	61	7	j	int
    //   128	64	8	k	int
    //   16	263	9	l	long
    //   27	287	11	localObject1	Object
    //   1	229	12	localObject2	Object
    //   11	323	13	localaio	aio
    //   23	241	14	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   13	25	328	finally
    //   29	44	328	finally
    //   65	84	328	finally
    //   92	202	328	finally
    //   202	229	328	finally
    //   238	305	328	finally
    //   305	315	328	finally
    //   318	325	328	finally
  }
}

/* Location:
 * Qualified Name:     ask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */