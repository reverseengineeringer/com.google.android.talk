import com.google.api.client.http.LowLevelHttpRequest;
import java.net.HttpURLConnection;

final class iqo
  extends LowLevelHttpRequest
{
  private final HttpURLConnection a;
  
  iqo(HttpURLConnection paramHttpURLConnection)
  {
    a = paramHttpURLConnection;
    paramHttpURLConnection.setInstanceFollowRedirects(false);
  }
  
  public void addHeader(String paramString1, String paramString2)
  {
    a.addRequestProperty(paramString1, paramString2);
  }
  
  /* Error */
  public com.google.api.client.http.LowLevelHttpResponse execute()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 13	iqo:a	Ljava/net/HttpURLConnection;
    //   4: astore 4
    //   6: aload_0
    //   7: invokevirtual 31	iqo:getStreamingContent	()Lisq;
    //   10: ifnull +139 -> 149
    //   13: aload_0
    //   14: invokevirtual 35	iqo:getContentType	()Ljava/lang/String;
    //   17: astore 5
    //   19: aload 5
    //   21: ifnull +11 -> 32
    //   24: aload_0
    //   25: ldc 37
    //   27: aload 5
    //   29: invokevirtual 39	iqo:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   32: aload_0
    //   33: invokevirtual 42	iqo:getContentEncoding	()Ljava/lang/String;
    //   36: astore 5
    //   38: aload 5
    //   40: ifnull +11 -> 51
    //   43: aload_0
    //   44: ldc 44
    //   46: aload 5
    //   48: invokevirtual 39	iqo:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   51: aload_0
    //   52: invokevirtual 48	iqo:getContentLength	()J
    //   55: lstore_1
    //   56: lload_1
    //   57: lconst_0
    //   58: lcmp
    //   59: iflt +13 -> 72
    //   62: aload_0
    //   63: ldc 50
    //   65: lload_1
    //   66: invokestatic 56	java/lang/Long:toString	(J)Ljava/lang/String;
    //   69: invokevirtual 39	iqo:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   72: aload 4
    //   74: invokevirtual 59	java/net/HttpURLConnection:getRequestMethod	()Ljava/lang/String;
    //   77: astore 5
    //   79: ldc 61
    //   81: aload 5
    //   83: invokevirtual 67	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   86: ifne +13 -> 99
    //   89: ldc 69
    //   91: aload 5
    //   93: invokevirtual 67	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   96: ifeq +91 -> 187
    //   99: aload 4
    //   101: iconst_1
    //   102: invokevirtual 72	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   105: lload_1
    //   106: lconst_0
    //   107: lcmp
    //   108: iflt +60 -> 168
    //   111: lload_1
    //   112: ldc2_w 73
    //   115: lcmp
    //   116: ifgt +52 -> 168
    //   119: aload 4
    //   121: lload_1
    //   122: l2i
    //   123: invokevirtual 78	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   126: aload 4
    //   128: invokevirtual 82	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   131: astore 5
    //   133: aload_0
    //   134: invokevirtual 31	iqo:getStreamingContent	()Lisq;
    //   137: aload 5
    //   139: invokeinterface 88 2 0
    //   144: aload 5
    //   146: invokevirtual 93	java/io/OutputStream:close	()V
    //   149: aload 4
    //   151: invokevirtual 96	java/net/HttpURLConnection:connect	()V
    //   154: new 98	iqp
    //   157: dup
    //   158: aload 4
    //   160: invokespecial 100	iqp:<init>	(Ljava/net/HttpURLConnection;)V
    //   163: astore 5
    //   165: aload 5
    //   167: areturn
    //   168: aload 4
    //   170: iconst_0
    //   171: invokevirtual 103	java/net/HttpURLConnection:setChunkedStreamingMode	(I)V
    //   174: goto -48 -> 126
    //   177: astore 4
    //   179: aload 5
    //   181: invokevirtual 93	java/io/OutputStream:close	()V
    //   184: aload 4
    //   186: athrow
    //   187: lload_1
    //   188: lconst_0
    //   189: lcmp
    //   190: ifne +23 -> 213
    //   193: iconst_1
    //   194: istore_3
    //   195: iload_3
    //   196: ldc 105
    //   198: iconst_1
    //   199: anewarray 107	java/lang/Object
    //   202: dup
    //   203: iconst_0
    //   204: aload 5
    //   206: aastore
    //   207: invokestatic 112	fii:a	(ZLjava/lang/String;[Ljava/lang/Object;)V
    //   210: goto -61 -> 149
    //   213: iconst_0
    //   214: istore_3
    //   215: goto -20 -> 195
    //   218: astore 5
    //   220: aload 4
    //   222: invokevirtual 115	java/net/HttpURLConnection:disconnect	()V
    //   225: aload 5
    //   227: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	228	0	this	iqo
    //   55	133	1	l	long
    //   194	21	3	bool	boolean
    //   4	165	4	localHttpURLConnection	HttpURLConnection
    //   177	44	4	localObject1	Object
    //   17	188	5	localObject2	Object
    //   218	8	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   133	144	177	finally
    //   149	165	218	finally
  }
  
  public void setTimeout(int paramInt1, int paramInt2)
  {
    a.setReadTimeout(paramInt2);
    a.setConnectTimeout(paramInt1);
  }
}

/* Location:
 * Qualified Name:     iqo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */