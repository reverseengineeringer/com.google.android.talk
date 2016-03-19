package com.google.api.client.http;

import fii;
import isl;
import iso;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

public final class HttpRequest
{
  public static final int DEFAULT_NUMBER_OF_RETRIES = 10;
  public static final String USER_AGENT_SUFFIX = "Google-HTTP-Java-Client/1.21.0-SNAPSHOT (gzip)";
  public static final String VERSION = "1.21.0-SNAPSHOT";
  @Deprecated
  private BackOffPolicy backOffPolicy;
  private int connectTimeout = 20000;
  private HttpContent content;
  private int contentLoggingLimit = 16384;
  private boolean curlLoggingEnabled = true;
  private HttpEncoding encoding;
  private HttpExecuteInterceptor executeInterceptor;
  private boolean followRedirects = true;
  private HttpHeaders headers = new HttpHeaders();
  private HttpIOExceptionHandler ioExceptionHandler;
  private boolean loggingEnabled = true;
  private int numRetries = 10;
  private isl objectParser;
  private int readTimeout = 20000;
  private String requestMethod;
  private HttpHeaders responseHeaders = new HttpHeaders();
  private HttpResponseInterceptor responseInterceptor;
  @Deprecated
  private boolean retryOnExecuteIOException = false;
  private iso sleeper = iso.a;
  private boolean suppressUserAgentSuffix;
  private boolean throwExceptionOnExecuteError = true;
  private final HttpTransport transport;
  private HttpUnsuccessfulResponseHandler unsuccessfulResponseHandler;
  private GenericUrl url;
  
  HttpRequest(HttpTransport paramHttpTransport, String paramString)
  {
    transport = paramHttpTransport;
    setRequestMethod(paramString);
  }
  
  /* Error */
  public HttpResponse execute()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 66	com/google/api/client/http/HttpRequest:numRetries	I
    //   4: iflt +911 -> 915
    //   7: iconst_1
    //   8: istore 4
    //   10: iload 4
    //   12: invokestatic 107	fii:a	(Z)V
    //   15: aload_0
    //   16: getfield 66	com/google/api/client/http/HttpRequest:numRetries	I
    //   19: istore_1
    //   20: aload_0
    //   21: getfield 109	com/google/api/client/http/HttpRequest:backOffPolicy	Lcom/google/api/client/http/BackOffPolicy;
    //   24: ifnull +12 -> 36
    //   27: aload_0
    //   28: getfield 109	com/google/api/client/http/HttpRequest:backOffPolicy	Lcom/google/api/client/http/BackOffPolicy;
    //   31: invokeinterface 114 1 0
    //   36: aconst_null
    //   37: astore 9
    //   39: aload_0
    //   40: getfield 116	com/google/api/client/http/HttpRequest:requestMethod	Ljava/lang/String;
    //   43: invokestatic 119	fii:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   46: pop
    //   47: aload_0
    //   48: getfield 121	com/google/api/client/http/HttpRequest:url	Lcom/google/api/client/http/GenericUrl;
    //   51: invokestatic 119	fii:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   54: pop
    //   55: aload 9
    //   57: ifnull +8 -> 65
    //   60: aload 9
    //   62: invokevirtual 126	com/google/api/client/http/HttpResponse:ignore	()V
    //   65: aload_0
    //   66: getfield 128	com/google/api/client/http/HttpRequest:executeInterceptor	Lcom/google/api/client/http/HttpExecuteInterceptor;
    //   69: ifnull +13 -> 82
    //   72: aload_0
    //   73: getfield 128	com/google/api/client/http/HttpRequest:executeInterceptor	Lcom/google/api/client/http/HttpExecuteInterceptor;
    //   76: aload_0
    //   77: invokeinterface 134 2 0
    //   82: aload_0
    //   83: getfield 121	com/google/api/client/http/HttpRequest:url	Lcom/google/api/client/http/GenericUrl;
    //   86: invokevirtual 140	com/google/api/client/http/GenericUrl:build	()Ljava/lang/String;
    //   89: astore 15
    //   91: aload_0
    //   92: getfield 91	com/google/api/client/http/HttpRequest:transport	Lcom/google/api/client/http/HttpTransport;
    //   95: aload_0
    //   96: getfield 116	com/google/api/client/http/HttpRequest:requestMethod	Ljava/lang/String;
    //   99: aload 15
    //   101: invokevirtual 146	com/google/api/client/http/HttpTransport:buildRequest	(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    //   104: astore 16
    //   106: getstatic 150	com/google/api/client/http/HttpTransport:LOGGER	Ljava/util/logging/Logger;
    //   109: astore 14
    //   111: aload_0
    //   112: getfield 70	com/google/api/client/http/HttpRequest:loggingEnabled	Z
    //   115: ifeq +806 -> 921
    //   118: aload 14
    //   120: getstatic 156	java/util/logging/Level:CONFIG	Ljava/util/logging/Level;
    //   123: invokevirtual 162	java/util/logging/Logger:isLoggable	(Ljava/util/logging/Level;)Z
    //   126: ifeq +795 -> 921
    //   129: iconst_1
    //   130: istore_2
    //   131: aconst_null
    //   132: astore 11
    //   134: aconst_null
    //   135: astore 9
    //   137: aload 9
    //   139: astore 10
    //   141: iload_2
    //   142: ifeq +121 -> 263
    //   145: new 164	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 165	java/lang/StringBuilder:<init>	()V
    //   152: astore 12
    //   154: aload 12
    //   156: ldc -89
    //   158: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: getstatic 175	isr:a	Ljava/lang/String;
    //   164: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: pop
    //   168: aload 12
    //   170: aload_0
    //   171: getfield 116	com/google/api/client/http/HttpRequest:requestMethod	Ljava/lang/String;
    //   174: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: bipush 32
    //   179: invokevirtual 178	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   182: aload 15
    //   184: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: getstatic 175	isr:a	Ljava/lang/String;
    //   190: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: pop
    //   194: aload 9
    //   196: astore 10
    //   198: aload 12
    //   200: astore 11
    //   202: aload_0
    //   203: getfield 72	com/google/api/client/http/HttpRequest:curlLoggingEnabled	Z
    //   206: ifeq +57 -> 263
    //   209: new 164	java/lang/StringBuilder
    //   212: dup
    //   213: ldc -76
    //   215: invokespecial 183	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   218: astore 9
    //   220: aload 9
    //   222: astore 10
    //   224: aload 12
    //   226: astore 11
    //   228: aload_0
    //   229: getfield 116	com/google/api/client/http/HttpRequest:requestMethod	Ljava/lang/String;
    //   232: ldc -71
    //   234: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   237: ifne +26 -> 263
    //   240: aload 9
    //   242: ldc -63
    //   244: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: aload_0
    //   248: getfield 116	com/google/api/client/http/HttpRequest:requestMethod	Ljava/lang/String;
    //   251: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: pop
    //   255: aload 12
    //   257: astore 11
    //   259: aload 9
    //   261: astore 10
    //   263: aload_0
    //   264: getfield 62	com/google/api/client/http/HttpRequest:headers	Lcom/google/api/client/http/HttpHeaders;
    //   267: invokevirtual 196	com/google/api/client/http/HttpHeaders:getUserAgent	()Ljava/lang/String;
    //   270: astore 9
    //   272: aload_0
    //   273: getfield 198	com/google/api/client/http/HttpRequest:suppressUserAgentSuffix	Z
    //   276: ifne +18 -> 294
    //   279: aload 9
    //   281: ifnonnull +645 -> 926
    //   284: aload_0
    //   285: getfield 62	com/google/api/client/http/HttpRequest:headers	Lcom/google/api/client/http/HttpHeaders;
    //   288: ldc 11
    //   290: invokevirtual 202	com/google/api/client/http/HttpHeaders:setUserAgent	(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    //   293: pop
    //   294: aload_0
    //   295: getfield 62	com/google/api/client/http/HttpRequest:headers	Lcom/google/api/client/http/HttpHeaders;
    //   298: aload 11
    //   300: aload 10
    //   302: aload 14
    //   304: aload 16
    //   306: invokestatic 206	com/google/api/client/http/HttpHeaders:serializeHeaders	(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;)V
    //   309: aload_0
    //   310: getfield 198	com/google/api/client/http/HttpRequest:suppressUserAgentSuffix	Z
    //   313: ifne +13 -> 326
    //   316: aload_0
    //   317: getfield 62	com/google/api/client/http/HttpRequest:headers	Lcom/google/api/client/http/HttpHeaders;
    //   320: aload 9
    //   322: invokevirtual 202	com/google/api/client/http/HttpHeaders:setUserAgent	(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    //   325: pop
    //   326: aload_0
    //   327: getfield 208	com/google/api/client/http/HttpRequest:content	Lcom/google/api/client/http/HttpContent;
    //   330: astore 9
    //   332: aload 9
    //   334: ifnull +15 -> 349
    //   337: aload_0
    //   338: getfield 208	com/google/api/client/http/HttpRequest:content	Lcom/google/api/client/http/HttpContent;
    //   341: invokeinterface 214 1 0
    //   346: ifeq +647 -> 993
    //   349: iconst_1
    //   350: istore_3
    //   351: aload 9
    //   353: astore 12
    //   355: aload 9
    //   357: ifnull +332 -> 689
    //   360: aload_0
    //   361: getfield 208	com/google/api/client/http/HttpRequest:content	Lcom/google/api/client/http/HttpContent;
    //   364: invokeinterface 217 1 0
    //   369: astore 17
    //   371: iload_2
    //   372: ifeq +968 -> 1340
    //   375: new 219	ish
    //   378: dup
    //   379: aload 9
    //   381: getstatic 150	com/google/api/client/http/HttpTransport:LOGGER	Ljava/util/logging/Logger;
    //   384: getstatic 156	java/util/logging/Level:CONFIG	Ljava/util/logging/Level;
    //   387: aload_0
    //   388: getfield 68	com/google/api/client/http/HttpRequest:contentLoggingLimit	I
    //   391: invokespecial 222	ish:<init>	(Lisq;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    //   394: astore 9
    //   396: aload_0
    //   397: getfield 224	com/google/api/client/http/HttpRequest:encoding	Lcom/google/api/client/http/HttpEncoding;
    //   400: ifnonnull +598 -> 998
    //   403: aload_0
    //   404: getfield 208	com/google/api/client/http/HttpRequest:content	Lcom/google/api/client/http/HttpContent;
    //   407: invokeinterface 228 1 0
    //   412: lstore 7
    //   414: aconst_null
    //   415: astore 12
    //   417: iload_2
    //   418: ifeq +225 -> 643
    //   421: aload 17
    //   423: ifnull +88 -> 511
    //   426: aload 17
    //   428: invokestatic 232	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   431: astore 13
    //   433: aload 13
    //   435: invokevirtual 236	java/lang/String:length	()I
    //   438: ifeq +608 -> 1046
    //   441: ldc -18
    //   443: aload 13
    //   445: invokevirtual 242	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   448: astore 13
    //   450: aload 11
    //   452: aload 13
    //   454: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   457: getstatic 175	isr:a	Ljava/lang/String;
    //   460: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   463: pop
    //   464: aload 10
    //   466: ifnull +45 -> 511
    //   469: aload 10
    //   471: new 164	java/lang/StringBuilder
    //   474: dup
    //   475: aload 13
    //   477: invokestatic 232	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   480: invokevirtual 236	java/lang/String:length	()I
    //   483: bipush 6
    //   485: iadd
    //   486: invokespecial 245	java/lang/StringBuilder:<init>	(I)V
    //   489: ldc -9
    //   491: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   494: aload 13
    //   496: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   499: ldc -7
    //   501: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   504: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   507: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   510: pop
    //   511: aload 12
    //   513: ifnull +88 -> 601
    //   516: aload 12
    //   518: invokestatic 232	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   521: astore 13
    //   523: aload 13
    //   525: invokevirtual 236	java/lang/String:length	()I
    //   528: ifeq +532 -> 1060
    //   531: ldc -2
    //   533: aload 13
    //   535: invokevirtual 242	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   538: astore 13
    //   540: aload 11
    //   542: aload 13
    //   544: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   547: getstatic 175	isr:a	Ljava/lang/String;
    //   550: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   553: pop
    //   554: aload 10
    //   556: ifnull +45 -> 601
    //   559: aload 10
    //   561: new 164	java/lang/StringBuilder
    //   564: dup
    //   565: aload 13
    //   567: invokestatic 232	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   570: invokevirtual 236	java/lang/String:length	()I
    //   573: bipush 6
    //   575: iadd
    //   576: invokespecial 245	java/lang/StringBuilder:<init>	(I)V
    //   579: ldc -9
    //   581: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   584: aload 13
    //   586: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   589: ldc -7
    //   591: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   594: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   597: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   600: pop
    //   601: lload 7
    //   603: lconst_0
    //   604: lcmp
    //   605: iflt +38 -> 643
    //   608: aload 11
    //   610: new 164	java/lang/StringBuilder
    //   613: dup
    //   614: bipush 36
    //   616: invokespecial 245	java/lang/StringBuilder:<init>	(I)V
    //   619: ldc_w 256
    //   622: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   625: lload 7
    //   627: invokevirtual 259	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   630: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   633: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   636: getstatic 175	isr:a	Ljava/lang/String;
    //   639: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   642: pop
    //   643: aload 10
    //   645: ifnull +12 -> 657
    //   648: aload 10
    //   650: ldc_w 261
    //   653: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   656: pop
    //   657: aload 16
    //   659: aload 17
    //   661: invokevirtual 266	com/google/api/client/http/LowLevelHttpRequest:setContentType	(Ljava/lang/String;)V
    //   664: aload 16
    //   666: aload 12
    //   668: invokevirtual 269	com/google/api/client/http/LowLevelHttpRequest:setContentEncoding	(Ljava/lang/String;)V
    //   671: aload 16
    //   673: lload 7
    //   675: invokevirtual 273	com/google/api/client/http/LowLevelHttpRequest:setContentLength	(J)V
    //   678: aload 16
    //   680: aload 9
    //   682: invokevirtual 277	com/google/api/client/http/LowLevelHttpRequest:setStreamingContent	(Lisq;)V
    //   685: aload 9
    //   687: astore 12
    //   689: iload_2
    //   690: ifeq +75 -> 765
    //   693: aload 14
    //   695: aload 11
    //   697: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   700: invokevirtual 280	java/util/logging/Logger:config	(Ljava/lang/String;)V
    //   703: aload 10
    //   705: ifnull +60 -> 765
    //   708: aload 10
    //   710: ldc_w 282
    //   713: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   716: pop
    //   717: aload 10
    //   719: aload 15
    //   721: ldc -7
    //   723: ldc_w 284
    //   726: invokevirtual 288	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   729: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   732: pop
    //   733: aload 10
    //   735: ldc -7
    //   737: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   740: pop
    //   741: aload 12
    //   743: ifnull +12 -> 755
    //   746: aload 10
    //   748: ldc_w 290
    //   751: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   754: pop
    //   755: aload 14
    //   757: aload 10
    //   759: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   762: invokevirtual 280	java/util/logging/Logger:config	(Ljava/lang/String;)V
    //   765: iload_3
    //   766: ifeq +308 -> 1074
    //   769: iload_1
    //   770: ifle +304 -> 1074
    //   773: iconst_1
    //   774: istore 6
    //   776: aload 16
    //   778: aload_0
    //   779: getfield 74	com/google/api/client/http/HttpRequest:connectTimeout	I
    //   782: aload_0
    //   783: getfield 76	com/google/api/client/http/HttpRequest:readTimeout	I
    //   786: invokevirtual 294	com/google/api/client/http/LowLevelHttpRequest:setTimeout	(II)V
    //   789: aload 16
    //   791: invokevirtual 297	com/google/api/client/http/LowLevelHttpRequest:execute	()Lcom/google/api/client/http/LowLevelHttpResponse;
    //   794: astore 10
    //   796: new 123	com/google/api/client/http/HttpResponse
    //   799: dup
    //   800: aload_0
    //   801: aload 10
    //   803: invokespecial 300	com/google/api/client/http/HttpResponse:<init>	(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    //   806: astore 9
    //   808: aconst_null
    //   809: astore 10
    //   811: aload 9
    //   813: ifnull +424 -> 1237
    //   816: aload 9
    //   818: invokevirtual 303	com/google/api/client/http/HttpResponse:isSuccessStatusCode	()Z
    //   821: ifne +416 -> 1237
    //   824: iconst_0
    //   825: istore 4
    //   827: aload_0
    //   828: getfield 305	com/google/api/client/http/HttpRequest:unsuccessfulResponseHandler	Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
    //   831: ifnull +19 -> 850
    //   834: aload_0
    //   835: getfield 305	com/google/api/client/http/HttpRequest:unsuccessfulResponseHandler	Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
    //   838: aload_0
    //   839: aload 9
    //   841: iload 6
    //   843: invokeinterface 311 4 0
    //   848: istore 4
    //   850: iload 4
    //   852: istore 5
    //   854: iload 4
    //   856: ifne +23 -> 879
    //   859: aload_0
    //   860: aload 9
    //   862: invokevirtual 314	com/google/api/client/http/HttpResponse:getStatusCode	()I
    //   865: aload 9
    //   867: invokevirtual 318	com/google/api/client/http/HttpResponse:getHeaders	()Lcom/google/api/client/http/HttpHeaders;
    //   870: invokevirtual 322	com/google/api/client/http/HttpRequest:handleRedirect	(ILcom/google/api/client/http/HttpHeaders;)Z
    //   873: ifeq +282 -> 1155
    //   876: iconst_1
    //   877: istore 5
    //   879: iload 6
    //   881: iload 5
    //   883: iand
    //   884: istore_3
    //   885: iload_3
    //   886: istore_2
    //   887: iload_3
    //   888: ifeq +10 -> 898
    //   891: aload 9
    //   893: invokevirtual 126	com/google/api/client/http/HttpResponse:ignore	()V
    //   896: iload_3
    //   897: istore_2
    //   898: aload 9
    //   900: ifnull +3 -> 903
    //   903: iload_2
    //   904: ifne +429 -> 1333
    //   907: aload 9
    //   909: ifnonnull +363 -> 1272
    //   912: aload 10
    //   914: athrow
    //   915: iconst_0
    //   916: istore 4
    //   918: goto -908 -> 10
    //   921: iconst_0
    //   922: istore_2
    //   923: goto -792 -> 131
    //   926: aload_0
    //   927: getfield 62	com/google/api/client/http/HttpRequest:headers	Lcom/google/api/client/http/HttpHeaders;
    //   930: astore 12
    //   932: ldc 11
    //   934: invokestatic 232	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   937: astore 13
    //   939: aload 12
    //   941: new 164	java/lang/StringBuilder
    //   944: dup
    //   945: aload 9
    //   947: invokestatic 232	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   950: invokevirtual 236	java/lang/String:length	()I
    //   953: iconst_1
    //   954: iadd
    //   955: aload 13
    //   957: invokestatic 232	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   960: invokevirtual 236	java/lang/String:length	()I
    //   963: iadd
    //   964: invokespecial 245	java/lang/StringBuilder:<init>	(I)V
    //   967: aload 9
    //   969: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   972: ldc_w 324
    //   975: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   978: aload 13
    //   980: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   983: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   986: invokevirtual 202	com/google/api/client/http/HttpHeaders:setUserAgent	(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    //   989: pop
    //   990: goto -696 -> 294
    //   993: iconst_0
    //   994: istore_3
    //   995: goto -644 -> 351
    //   998: aload_0
    //   999: getfield 224	com/google/api/client/http/HttpRequest:encoding	Lcom/google/api/client/http/HttpEncoding;
    //   1002: invokeinterface 329 1 0
    //   1007: astore 12
    //   1009: new 331	com/google/api/client/http/HttpEncodingStreamingContent
    //   1012: dup
    //   1013: aload 9
    //   1015: aload_0
    //   1016: getfield 224	com/google/api/client/http/HttpRequest:encoding	Lcom/google/api/client/http/HttpEncoding;
    //   1019: invokespecial 334	com/google/api/client/http/HttpEncodingStreamingContent:<init>	(Lisq;Lcom/google/api/client/http/HttpEncoding;)V
    //   1022: astore 9
    //   1024: iload_3
    //   1025: ifeq +13 -> 1038
    //   1028: aload 9
    //   1030: invokestatic 339	aal:a	(Lisq;)J
    //   1033: lstore 7
    //   1035: goto -618 -> 417
    //   1038: ldc2_w 340
    //   1041: lstore 7
    //   1043: goto -626 -> 417
    //   1046: new 187	java/lang/String
    //   1049: dup
    //   1050: ldc -18
    //   1052: invokespecial 342	java/lang/String:<init>	(Ljava/lang/String;)V
    //   1055: astore 13
    //   1057: goto -607 -> 450
    //   1060: new 187	java/lang/String
    //   1063: dup
    //   1064: ldc -2
    //   1066: invokespecial 342	java/lang/String:<init>	(Ljava/lang/String;)V
    //   1069: astore 13
    //   1071: goto -531 -> 540
    //   1074: iconst_0
    //   1075: istore 6
    //   1077: goto -301 -> 776
    //   1080: astore 9
    //   1082: aload 10
    //   1084: invokevirtual 348	com/google/api/client/http/LowLevelHttpResponse:getContent	()Ljava/io/InputStream;
    //   1087: astore 10
    //   1089: aload 10
    //   1091: ifnull +8 -> 1099
    //   1094: aload 10
    //   1096: invokevirtual 353	java/io/InputStream:close	()V
    //   1099: aload 9
    //   1101: athrow
    //   1102: astore 10
    //   1104: aload_0
    //   1105: getfield 82	com/google/api/client/http/HttpRequest:retryOnExecuteIOException	Z
    //   1108: ifne +28 -> 1136
    //   1111: aload_0
    //   1112: getfield 355	com/google/api/client/http/HttpRequest:ioExceptionHandler	Lcom/google/api/client/http/HttpIOExceptionHandler;
    //   1115: ifnull +18 -> 1133
    //   1118: aload_0
    //   1119: getfield 355	com/google/api/client/http/HttpRequest:ioExceptionHandler	Lcom/google/api/client/http/HttpIOExceptionHandler;
    //   1122: aload_0
    //   1123: iload 6
    //   1125: invokeinterface 361 3 0
    //   1130: ifne +6 -> 1136
    //   1133: aload 10
    //   1135: athrow
    //   1136: aload 14
    //   1138: getstatic 364	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   1141: ldc_w 366
    //   1144: aload 10
    //   1146: invokevirtual 370	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1149: aconst_null
    //   1150: astore 9
    //   1152: goto -341 -> 811
    //   1155: iload 4
    //   1157: istore 5
    //   1159: iload 6
    //   1161: ifeq -282 -> 879
    //   1164: iload 4
    //   1166: istore 5
    //   1168: aload_0
    //   1169: getfield 109	com/google/api/client/http/HttpRequest:backOffPolicy	Lcom/google/api/client/http/BackOffPolicy;
    //   1172: ifnull -293 -> 879
    //   1175: iload 4
    //   1177: istore 5
    //   1179: aload_0
    //   1180: getfield 109	com/google/api/client/http/HttpRequest:backOffPolicy	Lcom/google/api/client/http/BackOffPolicy;
    //   1183: aload 9
    //   1185: invokevirtual 314	com/google/api/client/http/HttpResponse:getStatusCode	()I
    //   1188: invokeinterface 374 2 0
    //   1193: ifeq -314 -> 879
    //   1196: aload_0
    //   1197: getfield 109	com/google/api/client/http/HttpRequest:backOffPolicy	Lcom/google/api/client/http/BackOffPolicy;
    //   1200: invokeinterface 377 1 0
    //   1205: lstore 7
    //   1207: iload 4
    //   1209: istore 5
    //   1211: lload 7
    //   1213: ldc2_w 340
    //   1216: lcmp
    //   1217: ifeq -338 -> 879
    //   1220: aload_0
    //   1221: getfield 89	com/google/api/client/http/HttpRequest:sleeper	Liso;
    //   1224: lload 7
    //   1226: invokeinterface 379 3 0
    //   1231: iconst_1
    //   1232: istore 5
    //   1234: goto -355 -> 879
    //   1237: aload 9
    //   1239: ifnonnull +13 -> 1252
    //   1242: iconst_1
    //   1243: istore_2
    //   1244: iload 6
    //   1246: iload_2
    //   1247: iand
    //   1248: istore_2
    //   1249: goto -351 -> 898
    //   1252: iconst_0
    //   1253: istore_2
    //   1254: goto -10 -> 1244
    //   1257: astore 10
    //   1259: aload 9
    //   1261: ifnull +8 -> 1269
    //   1264: aload 9
    //   1266: invokevirtual 382	com/google/api/client/http/HttpResponse:disconnect	()V
    //   1269: aload 10
    //   1271: athrow
    //   1272: aload_0
    //   1273: getfield 384	com/google/api/client/http/HttpRequest:responseInterceptor	Lcom/google/api/client/http/HttpResponseInterceptor;
    //   1276: ifnull +14 -> 1290
    //   1279: aload_0
    //   1280: getfield 384	com/google/api/client/http/HttpRequest:responseInterceptor	Lcom/google/api/client/http/HttpResponseInterceptor;
    //   1283: aload 9
    //   1285: invokeinterface 390 2 0
    //   1290: aload_0
    //   1291: getfield 80	com/google/api/client/http/HttpRequest:throwExceptionOnExecuteError	Z
    //   1294: ifeq +31 -> 1325
    //   1297: aload 9
    //   1299: invokevirtual 303	com/google/api/client/http/HttpResponse:isSuccessStatusCode	()Z
    //   1302: ifne +23 -> 1325
    //   1305: new 392	com/google/api/client/http/HttpResponseException
    //   1308: dup
    //   1309: aload 9
    //   1311: invokespecial 394	com/google/api/client/http/HttpResponseException:<init>	(Lcom/google/api/client/http/HttpResponse;)V
    //   1314: athrow
    //   1315: astore 10
    //   1317: aload 9
    //   1319: invokevirtual 382	com/google/api/client/http/HttpResponse:disconnect	()V
    //   1322: aload 10
    //   1324: athrow
    //   1325: aload 9
    //   1327: areturn
    //   1328: astore 11
    //   1330: goto -99 -> 1231
    //   1333: iload_1
    //   1334: iconst_1
    //   1335: isub
    //   1336: istore_1
    //   1337: goto -1282 -> 55
    //   1340: goto -944 -> 396
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1343	0	this	HttpRequest
    //   19	1318	1	i	int
    //   130	1124	2	bool1	boolean
    //   350	675	3	bool2	boolean
    //   8	1200	4	bool3	boolean
    //   852	381	5	bool4	boolean
    //   774	474	6	bool5	boolean
    //   412	813	7	l	long
    //   37	992	9	localObject1	Object
    //   1080	20	9	localObject2	Object
    //   1150	176	9	localHttpResponse	HttpResponse
    //   139	956	10	localObject3	Object
    //   1102	43	10	localIOException	java.io.IOException
    //   1257	13	10	localObject4	Object
    //   1315	8	10	localObject5	Object
    //   132	564	11	localObject6	Object
    //   1328	1	11	localInterruptedException	InterruptedException
    //   152	856	12	localObject7	Object
    //   431	639	13	str1	String
    //   109	1028	14	localLogger	java.util.logging.Logger
    //   89	631	15	str2	String
    //   104	686	16	localLowLevelHttpRequest	LowLevelHttpRequest
    //   369	291	17	str3	String
    // Exception table:
    //   from	to	target	type
    //   796	808	1080	finally
    //   789	796	1102	java/io/IOException
    //   1082	1089	1102	java/io/IOException
    //   1094	1099	1102	java/io/IOException
    //   1099	1102	1102	java/io/IOException
    //   816	824	1257	finally
    //   827	850	1257	finally
    //   859	876	1257	finally
    //   891	896	1257	finally
    //   1168	1175	1257	finally
    //   1179	1207	1257	finally
    //   1220	1231	1257	finally
    //   1305	1315	1315	finally
    //   1220	1231	1328	java/lang/InterruptedException
  }
  
  public Future<HttpResponse> executeAsync()
  {
    return executeAsync(Executors.newSingleThreadExecutor());
  }
  
  public Future<HttpResponse> executeAsync(Executor paramExecutor)
  {
    FutureTask localFutureTask = new FutureTask(new HttpRequest.1(this));
    paramExecutor.execute(localFutureTask);
    return localFutureTask;
  }
  
  @Deprecated
  public BackOffPolicy getBackOffPolicy()
  {
    return backOffPolicy;
  }
  
  public int getConnectTimeout()
  {
    return connectTimeout;
  }
  
  public HttpContent getContent()
  {
    return content;
  }
  
  public int getContentLoggingLimit()
  {
    return contentLoggingLimit;
  }
  
  public HttpEncoding getEncoding()
  {
    return encoding;
  }
  
  public boolean getFollowRedirects()
  {
    return followRedirects;
  }
  
  public HttpHeaders getHeaders()
  {
    return headers;
  }
  
  public HttpIOExceptionHandler getIOExceptionHandler()
  {
    return ioExceptionHandler;
  }
  
  public HttpExecuteInterceptor getInterceptor()
  {
    return executeInterceptor;
  }
  
  public int getNumberOfRetries()
  {
    return numRetries;
  }
  
  public final isl getParser()
  {
    return objectParser;
  }
  
  public int getReadTimeout()
  {
    return readTimeout;
  }
  
  public String getRequestMethod()
  {
    return requestMethod;
  }
  
  public HttpHeaders getResponseHeaders()
  {
    return responseHeaders;
  }
  
  public HttpResponseInterceptor getResponseInterceptor()
  {
    return responseInterceptor;
  }
  
  @Deprecated
  public boolean getRetryOnExecuteIOException()
  {
    return retryOnExecuteIOException;
  }
  
  public iso getSleeper()
  {
    return sleeper;
  }
  
  public boolean getSuppressUserAgentSuffix()
  {
    return suppressUserAgentSuffix;
  }
  
  public boolean getThrowExceptionOnExecuteError()
  {
    return throwExceptionOnExecuteError;
  }
  
  public HttpTransport getTransport()
  {
    return transport;
  }
  
  public HttpUnsuccessfulResponseHandler getUnsuccessfulResponseHandler()
  {
    return unsuccessfulResponseHandler;
  }
  
  public GenericUrl getUrl()
  {
    return url;
  }
  
  public boolean handleRedirect(int paramInt, HttpHeaders paramHttpHeaders)
  {
    paramHttpHeaders = paramHttpHeaders.getLocation();
    if ((getFollowRedirects()) && (HttpStatusCodes.isRedirect(paramInt)) && (paramHttpHeaders != null))
    {
      setUrl(new GenericUrl(url.toURL(paramHttpHeaders)));
      if (paramInt == 303)
      {
        setRequestMethod("GET");
        setContent(null);
      }
      headers.setAuthorization(null);
      headers.setIfMatch(null);
      headers.setIfNoneMatch(null);
      headers.setIfModifiedSince(null);
      headers.setIfUnmodifiedSince(null);
      headers.setIfRange(null);
      return true;
    }
    return false;
  }
  
  public boolean isCurlLoggingEnabled()
  {
    return curlLoggingEnabled;
  }
  
  public boolean isLoggingEnabled()
  {
    return loggingEnabled;
  }
  
  @Deprecated
  public HttpRequest setBackOffPolicy(BackOffPolicy paramBackOffPolicy)
  {
    backOffPolicy = paramBackOffPolicy;
    return this;
  }
  
  public HttpRequest setConnectTimeout(int paramInt)
  {
    if (paramInt >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      connectTimeout = paramInt;
      return this;
    }
  }
  
  public HttpRequest setContent(HttpContent paramHttpContent)
  {
    content = paramHttpContent;
    return this;
  }
  
  public HttpRequest setContentLoggingLimit(int paramInt)
  {
    if (paramInt >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool, "The content logging limit must be non-negative.");
      contentLoggingLimit = paramInt;
      return this;
    }
  }
  
  public HttpRequest setCurlLoggingEnabled(boolean paramBoolean)
  {
    curlLoggingEnabled = paramBoolean;
    return this;
  }
  
  public HttpRequest setEncoding(HttpEncoding paramHttpEncoding)
  {
    encoding = paramHttpEncoding;
    return this;
  }
  
  public HttpRequest setFollowRedirects(boolean paramBoolean)
  {
    followRedirects = paramBoolean;
    return this;
  }
  
  public HttpRequest setHeaders(HttpHeaders paramHttpHeaders)
  {
    headers = ((HttpHeaders)fii.a(paramHttpHeaders));
    return this;
  }
  
  public HttpRequest setIOExceptionHandler(HttpIOExceptionHandler paramHttpIOExceptionHandler)
  {
    ioExceptionHandler = paramHttpIOExceptionHandler;
    return this;
  }
  
  public HttpRequest setInterceptor(HttpExecuteInterceptor paramHttpExecuteInterceptor)
  {
    executeInterceptor = paramHttpExecuteInterceptor;
    return this;
  }
  
  public HttpRequest setLoggingEnabled(boolean paramBoolean)
  {
    loggingEnabled = paramBoolean;
    return this;
  }
  
  public HttpRequest setNumberOfRetries(int paramInt)
  {
    if (paramInt >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      numRetries = paramInt;
      return this;
    }
  }
  
  public HttpRequest setParser(isl paramisl)
  {
    objectParser = paramisl;
    return this;
  }
  
  public HttpRequest setReadTimeout(int paramInt)
  {
    if (paramInt >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      readTimeout = paramInt;
      return this;
    }
  }
  
  public HttpRequest setRequestMethod(String paramString)
  {
    if ((paramString == null) || (HttpMediaType.matchesToken(paramString))) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      requestMethod = paramString;
      return this;
    }
  }
  
  public HttpRequest setResponseHeaders(HttpHeaders paramHttpHeaders)
  {
    responseHeaders = ((HttpHeaders)fii.a(paramHttpHeaders));
    return this;
  }
  
  public HttpRequest setResponseInterceptor(HttpResponseInterceptor paramHttpResponseInterceptor)
  {
    responseInterceptor = paramHttpResponseInterceptor;
    return this;
  }
  
  @Deprecated
  public HttpRequest setRetryOnExecuteIOException(boolean paramBoolean)
  {
    retryOnExecuteIOException = paramBoolean;
    return this;
  }
  
  public HttpRequest setSleeper(iso paramiso)
  {
    sleeper = ((iso)fii.a(paramiso));
    return this;
  }
  
  public HttpRequest setSuppressUserAgentSuffix(boolean paramBoolean)
  {
    suppressUserAgentSuffix = paramBoolean;
    return this;
  }
  
  public HttpRequest setThrowExceptionOnExecuteError(boolean paramBoolean)
  {
    throwExceptionOnExecuteError = paramBoolean;
    return this;
  }
  
  public HttpRequest setUnsuccessfulResponseHandler(HttpUnsuccessfulResponseHandler paramHttpUnsuccessfulResponseHandler)
  {
    unsuccessfulResponseHandler = paramHttpUnsuccessfulResponseHandler;
    return this;
  }
  
  public HttpRequest setUrl(GenericUrl paramGenericUrl)
  {
    url = ((GenericUrl)fii.a(paramGenericUrl));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */