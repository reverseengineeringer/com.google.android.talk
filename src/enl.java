import android.content.Context;
import android.text.TextUtils;

public final class enl
{
  public static final boolean a = false;
  
  static
  {
    imx localimx = ezi.r;
  }
  
  public static adw a(Context paramContext, byte[] paramArrayOfByte, String paramString)
  {
    Object localObject;
    if (a)
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() == 0) {
        break label63;
      }
      "MmsTransaction.downloadMmsViaMmsSendReceiveManager: ".concat((String)localObject);
    }
    adg localadg;
    for (;;)
    {
      try
      {
        localObject = ene.b(paramContext);
        localadg = ene.a(paramContext, (eol)localObject, paramString);
        if (localadg != null) {
          break;
        }
        throw new end(137, "MmsTransactions: retrieve: get empty or invalid response");
      }
      finally
      {
        ene.c(paramContext);
      }
      label63:
      new String("MmsTransaction.downloadMmsViaMmsSendReceiveManager: ");
    }
    if (!(localadg instanceof adw))
    {
      a(paramContext, (eol)localObject, paramArrayOfByte, paramString, 132);
      throw new enk("MmsTransactions: retrieve: get invalid response type");
    }
    a(paramContext, (eol)localObject, paramArrayOfByte, paramString, 129);
    paramArrayOfByte = (adw)localadg;
    ene.c(paramContext);
    return paramArrayOfByte;
  }
  
  private static enm a(Context paramContext, ady paramady)
  {
    if (a)
    {
      Object localObject = String.valueOf(paramady.c().c());
      if (((String)localObject).length() != 0)
      {
        "====> from=".concat((String)localObject);
        localObject = paramady.e();
        int j = localObject.length;
        i = 0;
        label46:
        if (i >= j) {
          break label112;
        }
        String str = String.valueOf(localObject[i].c());
        if (str.length() == 0) {
          break label99;
        }
        "====> to=".concat(str);
      }
      for (;;)
      {
        i += 1;
        break label46;
        new String("====> from=");
        break;
        label99:
        new String("====> to=");
      }
      label112:
      long l = paramady.f();
      new StringBuilder(31).append("====> size=").append(l);
      int i = paramady.d().b();
      new StringBuilder(23).append("====> parts=").append(i);
    }
    if (enn.a(paramContext)) {
      return new enm(paramady, ((eni)ilh.a(paramContext, eni.class)).a(paramContext, paramady));
    }
    return b(paramContext, paramady);
  }
  
  public static enm a(Context paramContext, String[] paramArrayOfString, String paramString1, String paramString2, long paramLong)
  {
    hbs.b("Expected non-null", paramContext);
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0)) {
      throw new IllegalArgumentException("MmsTransactions: forwardMessage: no recipient");
    }
    if (TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("MmsTransactions: forwardMessage: no mms uri");
    }
    try
    {
      ady localady = new ady();
      String str = aee.a(paramContext);
      if (!TextUtils.isEmpty(str)) {
        localady.a(new adf(str));
      }
      paramArrayOfString = adf.a(paramArrayOfString);
      if (paramArrayOfString != null) {
        localady.a(paramArrayOfString);
      }
      if (!TextUtils.isEmpty(paramString1)) {
        localady.b(new adf(paramString1));
      }
      localady.a(paramLong / 1000000L);
      paramArrayOfString = enn.a(paramContext, paramString2);
      if (a <= 0) {
        a = 1048;
      }
      localady.a(b);
      localady.c(a);
      localady.b("personal".getBytes());
      localady.b(604800L);
      localady.d(129);
      localady.e(129);
      localady.f(129);
      return a(paramContext, localady);
    }
    catch (adc paramContext)
    {
      throw new end("Fail to create forward SendReq", paramContext);
    }
  }
  
  public static enm a(Context paramContext, String[] paramArrayOfString, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, int paramInt3, long paramLong)
  {
    hbs.b("Expected non-null", paramContext);
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0)) {
      throw new IllegalArgumentException("MmsTransactions: send: no recipient");
    }
    if ((TextUtils.isEmpty(paramString1)) && (TextUtils.isEmpty(paramString2)) && (TextUtils.isEmpty(paramString3))) {
      throw new IllegalArgumentException("MmsTransactions: send: no content (subject or text or image)");
    }
    Object localObject = new String[paramArrayOfString.length];
    int i = 0;
    if (i < paramArrayOfString.length)
    {
      str = paramArrayOfString[i];
      if (bzq.a(paramArrayOfString[i])) {
        localObject[i] = str;
      }
      for (;;)
      {
        i += 1;
        break;
        localObject[i] = a(str);
      }
    }
    paramArrayOfString = new ady();
    String str = aee.a(paramContext);
    if (!TextUtils.isEmpty(str)) {
      paramArrayOfString.a(new adf(str));
    }
    localObject = adf.a((String[])localObject);
    if (localObject != null) {
      paramArrayOfString.a((adf[])localObject);
    }
    if (!TextUtils.isEmpty(paramString1)) {
      paramArrayOfString.b(new adf(paramString1));
    }
    paramArrayOfString.a(paramLong / 1000000L);
    paramString1 = enn.a(paramContext, paramString2, paramString3, paramString4, paramInt1, paramInt2, paramInt3);
    if (a <= 0) {
      throw new IllegalArgumentException("MmsTransactions: send: zero size body");
    }
    paramArrayOfString.a(b);
    paramArrayOfString.c(a);
    paramArrayOfString.b("personal".getBytes());
    paramArrayOfString.b(604800L);
    paramArrayOfString.d(129);
    paramArrayOfString.e(129);
    paramArrayOfString.f(129);
    return a(paramContext, paramArrayOfString);
  }
  
  private static String a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    int j = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(j);
    int i = 0;
    while (i < j)
    {
      char c = paramString.charAt(i);
      if ((Character.isLetterOrDigit(c)) || (c == '+') || (c == '*') || (c == '#')) {
        localStringBuilder.append(c);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  private static void a(Context paramContext, eol parameol, byte[] paramArrayOfByte, String paramString, int paramInt)
  {
    if (a)
    {
      String str = String.valueOf(paramString);
      if (str.length() != 0) {
        "MmsTransaction.sendNotifyResponse: ".concat(str);
      }
    }
    else
    {
      paramArrayOfByte = new adg(paramArrayOfByte, paramInt);
      if (!emy.a().s()) {
        break label72;
      }
    }
    for (;;)
    {
      ene.a(paramContext, parameol, paramArrayOfByte, paramString);
      return;
      new String("MmsTransaction.sendNotifyResponse: ");
      break;
      label72:
      paramString = null;
    }
  }
  
  private static enm b(Context paramContext, ady paramady)
  {
    try
    {
      localObject = ene.a(paramContext, ene.b(paramContext), paramady, null);
      if (localObject == null) {
        throw new enk("MmsTransactions: send: get empty response");
      }
    }
    catch (OutOfMemoryError paramady)
    {
      throw new enk(paramady);
    }
    finally
    {
      ene.c(paramContext);
    }
    if (!(localObject instanceof adx)) {
      throw new enk("MmsTransactions: send: get invalid response type");
    }
    Object localObject = (adx)localObject;
    int i = ((adx)localObject).e();
    if (i != 128) {
      ezi.e("Babel_SMS", 31 + "MMS error, status = " + i, new Object[0]);
    }
    for (;;)
    {
      throw new enk("MmsTransactions: send: resp error");
      paramady = new enm(paramady, (adx)localObject);
      ene.c(paramContext);
      return paramady;
      throw new end(119, "mms error response");
      throw new end(128, "mms error response");
      throw new end(127, "mms error response");
      throw new end(129, "mms error response");
      throw new end(125, "mms error response");
      throw new end(126, "mms error response");
      throw new end(124, "mms error response");
      throw new end(130, "mms error response");
      throw new end(131, "mms error response");
      throw new end(132, "mms error response");
      throw new end(133, "mms error response");
      switch (i)
      {
      }
    }
  }
}

/* Location:
 * Qualified Name:     enl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */