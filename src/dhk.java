import android.os.AsyncTask;
import android.os.ConditionVariable;
import java.io.File;

public final class dhk
  extends AsyncTask<Void, Void, Void>
{
  private File a;
  private File b;
  private ConditionVariable c;
  
  public dhk(File paramFile1, File paramFile2, ConditionVariable paramConditionVariable)
  {
    a = paramFile1;
    b = paramFile2;
    c = paramConditionVariable;
  }
  
  /* Error */
  private Void a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aload_0
    //   4: getfield 19	dhk:b	Ljava/io/File;
    //   7: invokevirtual 31	java/io/File:exists	()Z
    //   10: ifeq +11 -> 21
    //   13: aload_0
    //   14: getfield 19	dhk:b	Ljava/io/File;
    //   17: invokevirtual 34	java/io/File:delete	()Z
    //   20: pop
    //   21: new 36	java/io/BufferedOutputStream
    //   24: dup
    //   25: new 38	java/io/FileOutputStream
    //   28: dup
    //   29: aload_0
    //   30: getfield 19	dhk:b	Ljava/io/File;
    //   33: invokespecial 41	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   36: invokespecial 44	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   39: astore 7
    //   41: new 46	java/io/BufferedInputStream
    //   44: dup
    //   45: new 48	java/io/FileInputStream
    //   48: dup
    //   49: aload_0
    //   50: getfield 17	dhk:a	Ljava/io/File;
    //   53: invokespecial 49	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   56: invokespecial 52	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   59: astore 6
    //   61: aload 6
    //   63: astore 10
    //   65: aload 7
    //   67: astore 8
    //   69: sipush 16384
    //   72: newarray <illegal type>
    //   74: astore 9
    //   76: aload 6
    //   78: astore 10
    //   80: aload 7
    //   82: astore 8
    //   84: aload 6
    //   86: aload 9
    //   88: invokevirtual 56	java/io/BufferedInputStream:read	([B)I
    //   91: istore_1
    //   92: iload_1
    //   93: ifle +121 -> 214
    //   96: aload 6
    //   98: astore 10
    //   100: aload 7
    //   102: astore 8
    //   104: aload 7
    //   106: aload 9
    //   108: iconst_0
    //   109: iload_1
    //   110: invokevirtual 60	java/io/BufferedOutputStream:write	([BII)V
    //   113: goto -37 -> 76
    //   116: astore 9
    //   118: aload 6
    //   120: astore 10
    //   122: aload 7
    //   124: astore 8
    //   126: ldc 62
    //   128: ldc 64
    //   130: aload 9
    //   132: invokestatic 69	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   135: aload 7
    //   137: ifnull +8 -> 145
    //   140: aload 7
    //   142: invokevirtual 72	java/io/BufferedOutputStream:close	()V
    //   145: aload 6
    //   147: ifnull +8 -> 155
    //   150: aload 6
    //   152: invokevirtual 73	java/io/BufferedInputStream:close	()V
    //   155: aload_0
    //   156: getfield 17	dhk:a	Ljava/io/File;
    //   159: invokevirtual 77	java/io/File:length	()J
    //   162: lstore_2
    //   163: aload_0
    //   164: getfield 19	dhk:b	Ljava/io/File;
    //   167: invokevirtual 77	java/io/File:length	()J
    //   170: lstore 4
    //   172: ldc 62
    //   174: new 79	java/lang/StringBuilder
    //   177: dup
    //   178: bipush 79
    //   180: invokespecial 82	java/lang/StringBuilder:<init>	(I)V
    //   183: ldc 84
    //   185: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: lload_2
    //   189: invokevirtual 91	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   192: ldc 93
    //   194: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: lload 4
    //   199: invokevirtual 91	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   202: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: iconst_0
    //   206: anewarray 99	java/lang/Object
    //   209: invokestatic 102	ezi:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   212: aconst_null
    //   213: areturn
    //   214: aload 7
    //   216: invokevirtual 72	java/io/BufferedOutputStream:close	()V
    //   219: aload 6
    //   221: invokevirtual 73	java/io/BufferedInputStream:close	()V
    //   224: aload_0
    //   225: getfield 17	dhk:a	Ljava/io/File;
    //   228: invokevirtual 77	java/io/File:length	()J
    //   231: lstore_2
    //   232: aload_0
    //   233: getfield 19	dhk:b	Ljava/io/File;
    //   236: invokevirtual 77	java/io/File:length	()J
    //   239: lstore 4
    //   241: ldc 62
    //   243: new 79	java/lang/StringBuilder
    //   246: dup
    //   247: bipush 79
    //   249: invokespecial 82	java/lang/StringBuilder:<init>	(I)V
    //   252: ldc 84
    //   254: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: lload_2
    //   258: invokevirtual 91	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   261: ldc 93
    //   263: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: lload 4
    //   268: invokevirtual 91	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   271: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   274: iconst_0
    //   275: anewarray 99	java/lang/Object
    //   278: invokestatic 102	ezi:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   281: aconst_null
    //   282: areturn
    //   283: astore 7
    //   285: ldc 62
    //   287: ldc 104
    //   289: aload 7
    //   291: invokestatic 69	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   294: goto -75 -> 219
    //   297: astore 6
    //   299: ldc 62
    //   301: ldc 104
    //   303: aload 6
    //   305: invokestatic 69	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   308: goto -84 -> 224
    //   311: astore 7
    //   313: ldc 62
    //   315: ldc 104
    //   317: aload 7
    //   319: invokestatic 69	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   322: goto -177 -> 145
    //   325: astore 6
    //   327: ldc 62
    //   329: ldc 104
    //   331: aload 6
    //   333: invokestatic 69	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   336: goto -181 -> 155
    //   339: astore 6
    //   341: aconst_null
    //   342: astore 7
    //   344: aload 7
    //   346: ifnull +8 -> 354
    //   349: aload 7
    //   351: invokevirtual 72	java/io/BufferedOutputStream:close	()V
    //   354: aload 9
    //   356: ifnull +8 -> 364
    //   359: aload 9
    //   361: invokevirtual 73	java/io/BufferedInputStream:close	()V
    //   364: aload_0
    //   365: getfield 17	dhk:a	Ljava/io/File;
    //   368: invokevirtual 77	java/io/File:length	()J
    //   371: lstore_2
    //   372: aload_0
    //   373: getfield 19	dhk:b	Ljava/io/File;
    //   376: invokevirtual 77	java/io/File:length	()J
    //   379: lstore 4
    //   381: ldc 62
    //   383: new 79	java/lang/StringBuilder
    //   386: dup
    //   387: bipush 79
    //   389: invokespecial 82	java/lang/StringBuilder:<init>	(I)V
    //   392: ldc 84
    //   394: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: lload_2
    //   398: invokevirtual 91	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   401: ldc 93
    //   403: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   406: lload 4
    //   408: invokevirtual 91	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   411: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   414: iconst_0
    //   415: anewarray 99	java/lang/Object
    //   418: invokestatic 102	ezi:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   421: aload 6
    //   423: athrow
    //   424: astore 7
    //   426: ldc 62
    //   428: ldc 104
    //   430: aload 7
    //   432: invokestatic 69	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   435: goto -81 -> 354
    //   438: astore 7
    //   440: ldc 62
    //   442: ldc 104
    //   444: aload 7
    //   446: invokestatic 69	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   449: goto -85 -> 364
    //   452: astore 6
    //   454: goto -110 -> 344
    //   457: astore 6
    //   459: aload 10
    //   461: astore 9
    //   463: aload 8
    //   465: astore 7
    //   467: goto -123 -> 344
    //   470: astore 9
    //   472: aconst_null
    //   473: astore 6
    //   475: aconst_null
    //   476: astore 7
    //   478: goto -360 -> 118
    //   481: astore 9
    //   483: aconst_null
    //   484: astore 6
    //   486: goto -368 -> 118
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	489	0	this	dhk
    //   91	19	1	i	int
    //   162	236	2	l1	long
    //   170	237	4	l2	long
    //   59	161	6	localBufferedInputStream1	java.io.BufferedInputStream
    //   297	7	6	localIOException1	java.io.IOException
    //   325	7	6	localIOException2	java.io.IOException
    //   339	83	6	localObject1	Object
    //   452	1	6	localObject2	Object
    //   457	1	6	localObject3	Object
    //   473	12	6	localObject4	Object
    //   39	176	7	localBufferedOutputStream1	java.io.BufferedOutputStream
    //   283	7	7	localIOException3	java.io.IOException
    //   311	7	7	localIOException4	java.io.IOException
    //   342	8	7	localObject5	Object
    //   424	7	7	localIOException5	java.io.IOException
    //   438	7	7	localIOException6	java.io.IOException
    //   465	12	7	localObject6	Object
    //   67	397	8	localBufferedOutputStream2	java.io.BufferedOutputStream
    //   1	106	9	arrayOfByte	byte[]
    //   116	244	9	localIOException7	java.io.IOException
    //   461	1	9	localObject7	Object
    //   470	1	9	localIOException8	java.io.IOException
    //   481	1	9	localIOException9	java.io.IOException
    //   63	397	10	localBufferedInputStream2	java.io.BufferedInputStream
    // Exception table:
    //   from	to	target	type
    //   69	76	116	java/io/IOException
    //   84	92	116	java/io/IOException
    //   104	113	116	java/io/IOException
    //   214	219	283	java/io/IOException
    //   219	224	297	java/io/IOException
    //   140	145	311	java/io/IOException
    //   150	155	325	java/io/IOException
    //   3	21	339	finally
    //   21	41	339	finally
    //   349	354	424	java/io/IOException
    //   359	364	438	java/io/IOException
    //   41	61	452	finally
    //   69	76	457	finally
    //   84	92	457	finally
    //   104	113	457	finally
    //   126	135	457	finally
    //   3	21	470	java/io/IOException
    //   21	41	470	java/io/IOException
    //   41	61	481	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     dhk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */