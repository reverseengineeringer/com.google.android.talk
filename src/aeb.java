import android.content.Context;
import android.drm.DrmConvertedStatus;
import android.drm.DrmManagerClient;

public final class aeb
{
  private DrmManagerClient a;
  private int b;
  
  private aeb(DrmManagerClient paramDrmManagerClient, int paramInt)
  {
    a = paramDrmManagerClient;
    b = paramInt;
  }
  
  public static aeb a(Context paramContext, String paramString)
  {
    if ((paramContext != null) && (paramString != null) && (!paramString.equals(""))) {}
    for (;;)
    {
      try
      {
        paramContext = new DrmManagerClient(paramContext);
      }
      catch (IllegalArgumentException paramContext)
      {
        paramContext = null;
        i = -1;
        continue;
      }
      catch (IllegalStateException paramContext)
      {
        paramContext = null;
        i = -1;
        continue;
      }
      try
      {
        i = paramContext.openConvertSession(paramString);
        if ((paramContext == null) || (i < 0)) {
          return null;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException) {}catch (IllegalStateException paramString)
      {
        try
        {
          new StringBuilder(String.valueOf(paramString).length() + 42).append("Conversion of Mimetype: ").append(paramString).append(" is not supported.");
          i = -1;
        }
        catch (IllegalStateException paramString)
        {
          continue;
        }
        catch (IllegalArgumentException paramString)
        {
          continue;
        }
        paramString = paramString;
        i = -1;
        continue;
      }
      return new aeb(paramContext, i);
      int i = -1;
      paramContext = null;
    }
  }
  
  /* Error */
  public int a(String paramString)
  {
    // Byte code:
    //   0: sipush 492
    //   3: istore 4
    //   5: sipush 491
    //   8: istore_2
    //   9: aload_0
    //   10: getfield 15	aeb:a	Landroid/drm/DrmManagerClient;
    //   13: ifnull +651 -> 664
    //   16: aload_0
    //   17: getfield 17	aeb:b	I
    //   20: iflt +644 -> 664
    //   23: iload_2
    //   24: istore_3
    //   25: aload_0
    //   26: getfield 15	aeb:a	Landroid/drm/DrmManagerClient;
    //   29: aload_0
    //   30: getfield 17	aeb:b	I
    //   33: invokevirtual 73	android/drm/DrmManagerClient:closeConvertSession	(I)Landroid/drm/DrmConvertedStatus;
    //   36: astore 7
    //   38: aload 7
    //   40: ifnull +28 -> 68
    //   43: iload_2
    //   44: istore_3
    //   45: aload 7
    //   47: getfield 78	android/drm/DrmConvertedStatus:statusCode	I
    //   50: iconst_1
    //   51: if_icmpne +17 -> 68
    //   54: iload_2
    //   55: istore_3
    //   56: aload 7
    //   58: getfield 82	android/drm/DrmConvertedStatus:convertedData	[B
    //   61: astore 5
    //   63: aload 5
    //   65: ifnonnull +9 -> 74
    //   68: sipush 406
    //   71: istore_2
    //   72: iload_2
    //   73: ireturn
    //   74: aconst_null
    //   75: astore 6
    //   77: new 84	java/io/RandomAccessFile
    //   80: dup
    //   81: aload_1
    //   82: ldc 86
    //   84: invokespecial 89	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   87: astore 5
    //   89: aload 5
    //   91: astore 6
    //   93: aload 5
    //   95: aload 7
    //   97: getfield 92	android/drm/DrmConvertedStatus:offset	I
    //   100: i2l
    //   101: invokevirtual 96	java/io/RandomAccessFile:seek	(J)V
    //   104: aload 5
    //   106: astore 6
    //   108: aload 5
    //   110: aload 7
    //   112: getfield 82	android/drm/DrmConvertedStatus:convertedData	[B
    //   115: invokevirtual 100	java/io/RandomAccessFile:write	([B)V
    //   118: sipush 200
    //   121: istore_3
    //   122: aload 5
    //   124: invokevirtual 103	java/io/RandomAccessFile:close	()V
    //   127: sipush 200
    //   130: ireturn
    //   131: astore 5
    //   133: new 42	java/lang/StringBuilder
    //   136: dup
    //   137: aload_1
    //   138: invokestatic 46	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   141: invokevirtual 50	java/lang/String:length	()I
    //   144: bipush 22
    //   146: iadd
    //   147: invokespecial 53	java/lang/StringBuilder:<init>	(I)V
    //   150: ldc 105
    //   152: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: aload_1
    //   156: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: ldc 107
    //   161: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: pop
    //   165: sipush 492
    //   168: ireturn
    //   169: astore_1
    //   170: aload_0
    //   171: getfield 17	aeb:b	I
    //   174: istore_2
    //   175: new 42	java/lang/StringBuilder
    //   178: dup
    //   179: bipush 59
    //   181: invokespecial 53	java/lang/StringBuilder:<init>	(I)V
    //   184: ldc 109
    //   186: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: iload_2
    //   190: invokevirtual 112	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   193: pop
    //   194: iload 4
    //   196: ireturn
    //   197: astore 5
    //   199: aconst_null
    //   200: astore 5
    //   202: new 42	java/lang/StringBuilder
    //   205: dup
    //   206: aload_1
    //   207: invokestatic 46	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   210: invokevirtual 50	java/lang/String:length	()I
    //   213: bipush 26
    //   215: iadd
    //   216: invokespecial 53	java/lang/StringBuilder:<init>	(I)V
    //   219: ldc 114
    //   221: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: aload_1
    //   225: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: ldc 116
    //   230: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: pop
    //   234: iload 4
    //   236: istore_2
    //   237: aload 5
    //   239: ifnull -167 -> 72
    //   242: aload 5
    //   244: invokevirtual 103	java/io/RandomAccessFile:close	()V
    //   247: sipush 492
    //   250: ireturn
    //   251: astore 5
    //   253: new 42	java/lang/StringBuilder
    //   256: dup
    //   257: aload_1
    //   258: invokestatic 46	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   261: invokevirtual 50	java/lang/String:length	()I
    //   264: bipush 22
    //   266: iadd
    //   267: invokespecial 53	java/lang/StringBuilder:<init>	(I)V
    //   270: ldc 105
    //   272: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: aload_1
    //   276: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: ldc 107
    //   281: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   284: pop
    //   285: sipush 492
    //   288: ireturn
    //   289: astore 5
    //   291: aconst_null
    //   292: astore 5
    //   294: new 42	java/lang/StringBuilder
    //   297: dup
    //   298: aload_1
    //   299: invokestatic 46	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   302: invokevirtual 50	java/lang/String:length	()I
    //   305: bipush 25
    //   307: iadd
    //   308: invokespecial 53	java/lang/StringBuilder:<init>	(I)V
    //   311: ldc 118
    //   313: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: aload_1
    //   317: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: ldc 120
    //   322: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: pop
    //   326: iload 4
    //   328: istore_2
    //   329: aload 5
    //   331: ifnull -259 -> 72
    //   334: aload 5
    //   336: invokevirtual 103	java/io/RandomAccessFile:close	()V
    //   339: sipush 492
    //   342: ireturn
    //   343: astore 5
    //   345: new 42	java/lang/StringBuilder
    //   348: dup
    //   349: aload_1
    //   350: invokestatic 46	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   353: invokevirtual 50	java/lang/String:length	()I
    //   356: bipush 22
    //   358: iadd
    //   359: invokespecial 53	java/lang/StringBuilder:<init>	(I)V
    //   362: ldc 105
    //   364: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: aload_1
    //   368: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: ldc 107
    //   373: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: pop
    //   377: sipush 492
    //   380: ireturn
    //   381: astore 5
    //   383: aconst_null
    //   384: astore 5
    //   386: iload 4
    //   388: istore_2
    //   389: aload 5
    //   391: ifnull -319 -> 72
    //   394: aload 5
    //   396: invokevirtual 103	java/io/RandomAccessFile:close	()V
    //   399: sipush 492
    //   402: ireturn
    //   403: astore 5
    //   405: new 42	java/lang/StringBuilder
    //   408: dup
    //   409: aload_1
    //   410: invokestatic 46	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   413: invokevirtual 50	java/lang/String:length	()I
    //   416: bipush 22
    //   418: iadd
    //   419: invokespecial 53	java/lang/StringBuilder:<init>	(I)V
    //   422: ldc 105
    //   424: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   427: aload_1
    //   428: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   431: ldc 107
    //   433: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: pop
    //   437: sipush 492
    //   440: ireturn
    //   441: astore 5
    //   443: aconst_null
    //   444: astore 5
    //   446: aload 5
    //   448: astore 6
    //   450: new 42	java/lang/StringBuilder
    //   453: dup
    //   454: aload_1
    //   455: invokestatic 46	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   458: invokevirtual 50	java/lang/String:length	()I
    //   461: bipush 54
    //   463: iadd
    //   464: invokespecial 53	java/lang/StringBuilder:<init>	(I)V
    //   467: ldc 122
    //   469: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   472: aload_1
    //   473: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   476: ldc 124
    //   478: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   481: pop
    //   482: aload 5
    //   484: ifnull +180 -> 664
    //   487: iload_2
    //   488: istore_3
    //   489: aload 5
    //   491: invokevirtual 103	java/io/RandomAccessFile:close	()V
    //   494: sipush 491
    //   497: ireturn
    //   498: astore 5
    //   500: new 42	java/lang/StringBuilder
    //   503: dup
    //   504: aload_1
    //   505: invokestatic 46	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   508: invokevirtual 50	java/lang/String:length	()I
    //   511: bipush 22
    //   513: iadd
    //   514: invokespecial 53	java/lang/StringBuilder:<init>	(I)V
    //   517: ldc 105
    //   519: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   522: aload_1
    //   523: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   526: ldc 107
    //   528: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   531: pop
    //   532: sipush 492
    //   535: ireturn
    //   536: astore 5
    //   538: iload_2
    //   539: istore_3
    //   540: aload 6
    //   542: ifnull +12 -> 554
    //   545: iload_2
    //   546: istore_3
    //   547: aload 6
    //   549: invokevirtual 103	java/io/RandomAccessFile:close	()V
    //   552: iload_2
    //   553: istore_3
    //   554: aload 5
    //   556: athrow
    //   557: astore_1
    //   558: iload_3
    //   559: istore 4
    //   561: goto -391 -> 170
    //   564: astore 6
    //   566: new 42	java/lang/StringBuilder
    //   569: dup
    //   570: aload_1
    //   571: invokestatic 46	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   574: invokevirtual 50	java/lang/String:length	()I
    //   577: bipush 22
    //   579: iadd
    //   580: invokespecial 53	java/lang/StringBuilder:<init>	(I)V
    //   583: ldc 105
    //   585: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   588: aload_1
    //   589: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   592: ldc 107
    //   594: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   597: pop
    //   598: sipush 492
    //   601: istore_3
    //   602: goto -48 -> 554
    //   605: astore 5
    //   607: goto -69 -> 538
    //   610: astore 7
    //   612: aload 5
    //   614: astore 6
    //   616: sipush 492
    //   619: istore_2
    //   620: aload 7
    //   622: astore 5
    //   624: goto -86 -> 538
    //   627: astore 7
    //   629: aload 5
    //   631: astore 6
    //   633: aload 7
    //   635: astore 5
    //   637: sipush 492
    //   640: istore_2
    //   641: goto -103 -> 538
    //   644: astore 6
    //   646: goto -200 -> 446
    //   649: astore 6
    //   651: goto -265 -> 386
    //   654: astore 6
    //   656: goto -362 -> 294
    //   659: astore 6
    //   661: goto -459 -> 202
    //   664: sipush 491
    //   667: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	668	0	this	aeb
    //   0	668	1	paramString	String
    //   8	633	2	i	int
    //   24	578	3	j	int
    //   3	557	4	k	int
    //   61	62	5	localObject1	Object
    //   131	1	5	localIOException1	java.io.IOException
    //   197	1	5	localFileNotFoundException1	java.io.FileNotFoundException
    //   200	43	5	localObject2	Object
    //   251	1	5	localIOException2	java.io.IOException
    //   289	1	5	localIOException3	java.io.IOException
    //   292	43	5	localObject3	Object
    //   343	1	5	localIOException4	java.io.IOException
    //   381	1	5	localIllegalArgumentException1	IllegalArgumentException
    //   384	11	5	localObject4	Object
    //   403	1	5	localIOException5	java.io.IOException
    //   441	1	5	localSecurityException1	SecurityException
    //   444	46	5	localObject5	Object
    //   498	1	5	localIOException6	java.io.IOException
    //   536	19	5	localObject6	Object
    //   605	8	5	localObject7	Object
    //   622	14	5	localObject8	Object
    //   75	473	6	localObject9	Object
    //   564	1	6	localIOException7	java.io.IOException
    //   614	18	6	localObject10	Object
    //   644	1	6	localSecurityException2	SecurityException
    //   649	1	6	localIllegalArgumentException2	IllegalArgumentException
    //   654	1	6	localIOException8	java.io.IOException
    //   659	1	6	localFileNotFoundException2	java.io.FileNotFoundException
    //   36	75	7	localDrmConvertedStatus	DrmConvertedStatus
    //   610	11	7	localObject11	Object
    //   627	7	7	localObject12	Object
    // Exception table:
    //   from	to	target	type
    //   122	127	131	java/io/IOException
    //   133	165	169	java/lang/IllegalStateException
    //   242	247	169	java/lang/IllegalStateException
    //   253	285	169	java/lang/IllegalStateException
    //   334	339	169	java/lang/IllegalStateException
    //   345	377	169	java/lang/IllegalStateException
    //   394	399	169	java/lang/IllegalStateException
    //   405	437	169	java/lang/IllegalStateException
    //   500	532	169	java/lang/IllegalStateException
    //   566	598	169	java/lang/IllegalStateException
    //   77	89	197	java/io/FileNotFoundException
    //   242	247	251	java/io/IOException
    //   77	89	289	java/io/IOException
    //   334	339	343	java/io/IOException
    //   77	89	381	java/lang/IllegalArgumentException
    //   394	399	403	java/io/IOException
    //   77	89	441	java/lang/SecurityException
    //   489	494	498	java/io/IOException
    //   77	89	536	finally
    //   25	38	557	java/lang/IllegalStateException
    //   45	54	557	java/lang/IllegalStateException
    //   56	63	557	java/lang/IllegalStateException
    //   122	127	557	java/lang/IllegalStateException
    //   489	494	557	java/lang/IllegalStateException
    //   547	552	557	java/lang/IllegalStateException
    //   554	557	557	java/lang/IllegalStateException
    //   547	552	564	java/io/IOException
    //   93	104	605	finally
    //   108	118	605	finally
    //   450	482	605	finally
    //   202	234	610	finally
    //   294	326	627	finally
    //   93	104	644	java/lang/SecurityException
    //   108	118	644	java/lang/SecurityException
    //   93	104	649	java/lang/IllegalArgumentException
    //   108	118	649	java/lang/IllegalArgumentException
    //   93	104	654	java/io/IOException
    //   108	118	654	java/io/IOException
    //   93	104	659	java/io/FileNotFoundException
    //   108	118	659	java/io/FileNotFoundException
  }
  
  public byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte != null) {
      try
      {
        if (paramInt != paramArrayOfByte.length)
        {
          byte[] arrayOfByte = new byte[paramInt];
          System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramInt);
          paramArrayOfByte = a.convertData(b, arrayOfByte);
        }
        while ((paramArrayOfByte != null) && (statusCode == 1) && (convertedData != null))
        {
          return convertedData;
          paramArrayOfByte = a.convertData(b, paramArrayOfByte);
          continue;
          throw new IllegalArgumentException("Parameter inBuffer is null");
        }
      }
      catch (IllegalArgumentException paramArrayOfByte)
      {
        paramInt = b;
        new StringBuilder(67).append("Buffer with data to convert is illegal. Convertsession: ").append(paramInt);
        return null;
      }
      catch (IllegalStateException paramArrayOfByte)
      {
        paramInt = b;
        new StringBuilder(51).append("Could not convert data. Convertsession: ").append(paramInt);
        return null;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     aeb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */