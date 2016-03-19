import com.google.api.client.http.HttpTransport;

class hgz<T>
{
  public final long a;
  public final String b;
  public final byte[] c;
  public final int d;
  final HttpTransport e;
  public final String f;
  public final hhb g;
  public String h;
  public String i;
  
  hgz(long paramLong, String paramString1, byte[] paramArrayOfByte, int paramInt, HttpTransport paramHttpTransport, String paramString2, hhb paramhhb)
  {
    a = paramLong;
    b = paramString1;
    c = paramArrayOfByte;
    d = paramInt;
    e = paramHttpTransport;
    f = paramString2;
    g = paramhhb;
  }
  
  /* Error */
  private static byte[] a(hha paramhha)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 48	hha:a	()Ljava/io/InputStream;
    //   7: astore_2
    //   8: aload_2
    //   9: astore_3
    //   10: new 50	java/io/BufferedInputStream
    //   13: dup
    //   14: aload_2
    //   15: invokespecial 53	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   18: astore 5
    //   20: aload_2
    //   21: astore_3
    //   22: new 55	java/io/ByteArrayOutputStream
    //   25: dup
    //   26: invokespecial 56	java/io/ByteArrayOutputStream:<init>	()V
    //   29: astore 6
    //   31: aload_2
    //   32: astore_3
    //   33: aload 5
    //   35: invokevirtual 60	java/io/BufferedInputStream:read	()I
    //   38: istore_1
    //   39: iload_1
    //   40: iconst_m1
    //   41: if_icmpeq +23 -> 64
    //   44: aload_2
    //   45: astore_3
    //   46: aload 6
    //   48: iload_1
    //   49: i2b
    //   50: invokevirtual 64	java/io/ByteArrayOutputStream:write	(I)V
    //   53: aload_2
    //   54: astore_3
    //   55: aload 5
    //   57: invokevirtual 60	java/io/BufferedInputStream:read	()I
    //   60: istore_1
    //   61: goto -22 -> 39
    //   64: aload_2
    //   65: astore_3
    //   66: aload_0
    //   67: ldc 66
    //   69: invokevirtual 69	hha:a	(Ljava/lang/String;)Ljava/lang/String;
    //   72: ldc 71
    //   74: invokestatic 77	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   77: ifeq +31 -> 108
    //   80: aload_2
    //   81: astore_3
    //   82: aload 6
    //   84: invokevirtual 81	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   87: iconst_0
    //   88: invokestatic 87	android/util/Base64:decode	([BI)[B
    //   91: astore_0
    //   92: aload_0
    //   93: astore_3
    //   94: aload_3
    //   95: astore_0
    //   96: aload_2
    //   97: ifnull +9 -> 106
    //   100: aload_2
    //   101: invokevirtual 92	java/io/InputStream:close	()V
    //   104: aload_3
    //   105: astore_0
    //   106: aload_0
    //   107: areturn
    //   108: aload_2
    //   109: astore_3
    //   110: aload 6
    //   112: invokevirtual 81	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   115: astore_0
    //   116: aload_0
    //   117: astore_3
    //   118: aload_3
    //   119: astore_0
    //   120: aload_2
    //   121: ifnull -15 -> 106
    //   124: aload_2
    //   125: invokevirtual 92	java/io/InputStream:close	()V
    //   128: aload_3
    //   129: areturn
    //   130: astore_0
    //   131: aload_3
    //   132: areturn
    //   133: astore_0
    //   134: aconst_null
    //   135: astore_2
    //   136: aload_2
    //   137: astore_3
    //   138: iconst_5
    //   139: ldc 94
    //   141: ldc 96
    //   143: aload_0
    //   144: invokestatic 101	hlk:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   147: aload 4
    //   149: astore_0
    //   150: aload_2
    //   151: ifnull -45 -> 106
    //   154: aload_2
    //   155: invokevirtual 92	java/io/InputStream:close	()V
    //   158: aconst_null
    //   159: areturn
    //   160: astore_0
    //   161: aconst_null
    //   162: areturn
    //   163: astore_0
    //   164: aconst_null
    //   165: astore_3
    //   166: aload_3
    //   167: ifnull +7 -> 174
    //   170: aload_3
    //   171: invokevirtual 92	java/io/InputStream:close	()V
    //   174: aload_0
    //   175: athrow
    //   176: astore_0
    //   177: aload_3
    //   178: areturn
    //   179: astore_2
    //   180: goto -6 -> 174
    //   183: astore_0
    //   184: goto -18 -> 166
    //   187: astore_0
    //   188: goto -52 -> 136
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	paramhha	hha
    //   38	23	1	j	int
    //   7	148	2	localInputStream	java.io.InputStream
    //   179	1	2	localIOException	java.io.IOException
    //   9	169	3	localObject1	Object
    //   1	147	4	localObject2	Object
    //   18	38	5	localBufferedInputStream	java.io.BufferedInputStream
    //   29	82	6	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   124	128	130	java/io/IOException
    //   3	8	133	java/io/IOException
    //   154	158	160	java/io/IOException
    //   3	8	163	finally
    //   100	104	176	java/io/IOException
    //   170	174	179	java/io/IOException
    //   10	20	183	finally
    //   22	31	183	finally
    //   33	39	183	finally
    //   46	53	183	finally
    //   55	61	183	finally
    //   66	80	183	finally
    //   82	92	183	finally
    //   110	116	183	finally
    //   138	147	183	finally
    //   10	20	187	java/io/IOException
    //   22	31	187	java/io/IOException
    //   33	39	187	java/io/IOException
    //   46	53	187	java/io/IOException
    //   55	61	187	java/io/IOException
    //   66	80	187	java/io/IOException
    //   82	92	187	java/io/IOException
    //   110	116	187	java/io/IOException
  }
  
  public void a()
  {
    g.a(a, b);
  }
  
  public void a(String paramString, long paramLong)
  {
    h = paramString;
    if (paramLong == 0L) {}
    for (paramString = "none";; paramString = Long.toString(paramLong))
    {
      i = paramString;
      return;
    }
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    if (g != null)
    {
      if (paramArrayOfByte == null) {
        g.a(a);
      }
    }
    else {
      return;
    }
    g.a(a, paramArrayOfByte);
  }
  
  /* Error */
  public byte[] c()
  {
    // Byte code:
    //   0: new 140	iqi
    //   3: dup
    //   4: invokespecial 141	iqi:<init>	()V
    //   7: aload_0
    //   8: getfield 116	hgz:h	Ljava/lang/String;
    //   11: invokevirtual 144	iqi:c	(Ljava/lang/String;)Liqi;
    //   14: pop
    //   15: aload_0
    //   16: getfield 116	hgz:h	Ljava/lang/String;
    //   19: astore_2
    //   20: aload_0
    //   21: getfield 120	hgz:i	Ljava/lang/String;
    //   24: astore_3
    //   25: aload_0
    //   26: getfield 33	hgz:d	I
    //   29: istore_1
    //   30: new 140	iqi
    //   33: dup
    //   34: invokespecial 141	iqi:<init>	()V
    //   37: astore 4
    //   39: aload 4
    //   41: aload_2
    //   42: invokevirtual 144	iqi:c	(Ljava/lang/String;)Liqi;
    //   45: pop
    //   46: new 146	hgx
    //   49: dup
    //   50: aload_3
    //   51: aload_2
    //   52: aload 4
    //   54: iload_1
    //   55: invokespecial 149	hgx:<init>	(Ljava/lang/String;Ljava/lang/String;Liqi;I)V
    //   58: astore_2
    //   59: aload_0
    //   60: getfield 35	hgz:e	Lcom/google/api/client/http/HttpTransport;
    //   63: aload_2
    //   64: invokevirtual 155	com/google/api/client/http/HttpTransport:createRequestFactory	(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;
    //   67: astore_2
    //   68: new 157	hgy
    //   71: dup
    //   72: aload_0
    //   73: getfield 31	hgz:c	[B
    //   76: invokespecial 159	hgy:<init>	([B)V
    //   79: astore_3
    //   80: new 161	java/net/URL
    //   83: dup
    //   84: new 161	java/net/URL
    //   87: dup
    //   88: aload_0
    //   89: getfield 37	hgz:f	Ljava/lang/String;
    //   92: invokespecial 164	java/net/URL:<init>	(Ljava/lang/String;)V
    //   95: aload_0
    //   96: getfield 29	hgz:b	Ljava/lang/String;
    //   99: invokespecial 167	java/net/URL:<init>	(Ljava/net/URL;Ljava/lang/String;)V
    //   102: astore 4
    //   104: new 169	com/google/api/client/http/GenericUrl
    //   107: dup
    //   108: aload 4
    //   110: invokespecial 172	com/google/api/client/http/GenericUrl:<init>	(Ljava/net/URL;)V
    //   113: astore 4
    //   115: new 45	hha
    //   118: dup
    //   119: aload_2
    //   120: aload 4
    //   122: aload_3
    //   123: invokevirtual 178	com/google/api/client/http/HttpRequestFactory:buildPostRequest	(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    //   126: invokevirtual 184	com/google/api/client/http/HttpRequest:execute	()Lcom/google/api/client/http/HttpResponse;
    //   129: invokespecial 187	hha:<init>	(Lcom/google/api/client/http/HttpResponse;)V
    //   132: invokestatic 189	hgz:a	(Lhha;)[B
    //   135: astore_2
    //   136: aload_2
    //   137: areturn
    //   138: astore_2
    //   139: iconst_5
    //   140: ldc 94
    //   142: ldc -65
    //   144: aload_2
    //   145: invokestatic 101	hlk:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   148: aconst_null
    //   149: areturn
    //   150: astore_2
    //   151: iconst_5
    //   152: ldc 94
    //   154: ldc -63
    //   156: aload_2
    //   157: invokestatic 101	hlk:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   160: aconst_null
    //   161: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	162	0	this	hgz
    //   29	26	1	j	int
    //   19	118	2	localObject1	Object
    //   138	7	2	localMalformedURLException	java.net.MalformedURLException
    //   150	7	2	localIOException	java.io.IOException
    //   24	99	3	localObject2	Object
    //   37	84	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   80	104	138	java/net/MalformedURLException
    //   115	136	150	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     hgz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */