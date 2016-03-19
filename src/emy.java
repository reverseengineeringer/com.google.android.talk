import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

public final class emy
  extends aei
{
  static Bundle b;
  private static final boolean c;
  private static final Map<String, Object> d;
  private static final Map<String, Object> e;
  private static String f = null;
  private static String g = null;
  
  static
  {
    imx localimx = ezi.r;
    c = false;
    d = new HashMap();
    e = new HashMap();
    b = null;
    d.put("enabledMMS", Boolean.valueOf(true));
    d.put("enabledTransID", Boolean.valueOf(false));
    d.put("enabledNotifyWapMMSC", Boolean.valueOf(false));
    d.put("aliasEnabled", Boolean.valueOf(false));
    d.put("allowAttachAudio", Boolean.valueOf(true));
    d.put("enableMultipartSMS", Boolean.valueOf(true));
    d.put("enableSMSDeliveryReports", Boolean.valueOf(true));
    d.put("enableGroupMms", Boolean.valueOf(true));
    d.put("supportMmsContentDisposition", Boolean.valueOf(true));
    d.put("config_cellBroadcastAppLinks", Boolean.valueOf(true));
    d.put("sendMultipartSmsAsSeparateMessages", Boolean.valueOf(false));
    d.put("enableMMSReadReports", Boolean.valueOf(false));
    d.put("enableMMSDeliveryReports", Boolean.valueOf(false));
    d.put("maxMessageSize", Integer.valueOf(307200));
    d.put("maxImageHeight", Integer.valueOf(480));
    d.put("maxImageWidth", Integer.valueOf(640));
    d.put("recipientLimit", Integer.valueOf(Integer.MAX_VALUE));
    d.put("httpSocketTimeout", Integer.valueOf(60000));
    d.put("aliasMinChars", Integer.valueOf(2));
    d.put("aliasMaxChars", Integer.valueOf(48));
    d.put("smsToMmsTextThreshold", Integer.valueOf(-1));
    d.put("smsToMmsTextLengthThreshold", Integer.valueOf(-1));
    d.put("maxMessageTextSize", Integer.valueOf(-1));
    d.put("maxSubjectLength", Integer.valueOf(40));
    d.put("mUaProfTagName", "x-wap-profile");
    d.put("httpParams", null);
    d.put("emailGatewayNumber", null);
    d.put("naiSuffix", null);
  }
  
  private static String a(boolean paramBoolean)
  {
    Object localObject = aal.oJ;
    String str = ezm.g();
    localObject = str;
    if (paramBoolean)
    {
      localObject = str;
      if (!TextUtils.isEmpty(str))
      {
        str = ezm.k(str);
        localObject = str;
        if (str.charAt(0) == '+') {
          localObject = str.substring(1);
        }
      }
    }
    return (String)localObject;
  }
  
  public static void a(Context paramContext)
  {
    ezi.c("Babel_SMS", "MmsConfig.loadMmsSettings", new Object[0]);
    e.clear();
    e.putAll(d);
    Object localObject1;
    Object localObject2;
    if (Build.VERSION.SDK_INT >= 19)
    {
      localObject1 = (TelephonyManager)paramContext.getSystemService("phone");
      f = ((TelephonyManager)localObject1).getMmsUserAgent();
      g = ((TelephonyManager)localObject1).getMmsUAProfUrl();
      localObject1 = f;
      localObject2 = g;
      ezi.c("Babel_SMS", String.valueOf(localObject1).length() + 66 + String.valueOf(localObject2).length() + "MmsConfig.loadDeviceMmsSettings from API: mUserAgent=" + (String)localObject1 + ", mUaProfUrl=" + (String)localObject2, new Object[0]);
    }
    if (b(paramContext))
    {
      if (enn.a(paramContext))
      {
        localObject1 = SmsManager.getDefault().getCarrierConfigValues();
        localObject2 = new Bundle();
        a("enabledMMS", "enabledMMS", (Bundle)localObject1, (Bundle)localObject2);
        a("enabledTransID", "enabledTransID", (Bundle)localObject1, (Bundle)localObject2);
        a("enabledNotifyWapMMSC", "enabledNotifyWapMMSC", (Bundle)localObject1, (Bundle)localObject2);
        a("aliasEnabled", "aliasEnabled", (Bundle)localObject1, (Bundle)localObject2);
        a("allowAttachAudio", "allowAttachAudio", (Bundle)localObject1, (Bundle)localObject2);
        a("enableMultipartSMS", "enableMultipartSMS", (Bundle)localObject1, (Bundle)localObject2);
        a("enableSMSDeliveryReports", "enableSMSDeliveryReports", (Bundle)localObject1, (Bundle)localObject2);
        a("enableGroupMms", "enableGroupMms", (Bundle)localObject1, (Bundle)localObject2);
        a("supportMmsContentDisposition", "supportMmsContentDisposition", (Bundle)localObject1, (Bundle)localObject2);
        a("config_cellBroadcastAppLinks", "config_cellBroadcastAppLinks", (Bundle)localObject1, (Bundle)localObject2);
        a("sendMultipartSmsAsSeparateMessages", "sendMultipartSmsAsSeparateMessages", (Bundle)localObject1, (Bundle)localObject2);
        a("enableMMSReadReports", "enableMMSReadReports", (Bundle)localObject1, (Bundle)localObject2);
        a("enableMMSDeliveryReports", "enableMMSDeliveryReports", (Bundle)localObject1, (Bundle)localObject2);
        a("maxMessageSize", "maxMessageSize", (Bundle)localObject1, (Bundle)localObject2);
        a("maxImageHeight", "maxImageWidth", (Bundle)localObject1, (Bundle)localObject2);
        a("maxImageWidth", "maxImageHeight", (Bundle)localObject1, (Bundle)localObject2);
        a("recipientLimit", "recipientLimit", (Bundle)localObject1, (Bundle)localObject2);
        a("httpSocketTimeout", "httpSocketTimeout", (Bundle)localObject1, (Bundle)localObject2);
        a("aliasMinChars", "aliasMinChars", (Bundle)localObject1, (Bundle)localObject2);
        a("aliasMaxChars", "aliasMaxChars", (Bundle)localObject1, (Bundle)localObject2);
        a("smsToMmsTextThreshold", "smsToMmsTextThreshold", (Bundle)localObject1, (Bundle)localObject2);
        a("smsToMmsTextLengthThreshold", "smsToMmsTextLengthThreshold", (Bundle)localObject1, (Bundle)localObject2);
        a("maxMessageTextSize", "maxMessageTextSize", (Bundle)localObject1, (Bundle)localObject2);
        a("maxSubjectLength", "maxSubjectLength", (Bundle)localObject1, (Bundle)localObject2);
        a("mUaProfTagName", "uaProfTagName", (Bundle)localObject1, (Bundle)localObject2);
        a("httpParams", "httpParams", (Bundle)localObject1, (Bundle)localObject2);
        a("emailGatewayNumber", "emailGatewayNumber", (Bundle)localObject1, (Bundle)localObject2);
        a("naiSuffix", "naiSuffix", (Bundle)localObject1, (Bundle)localObject2);
        localObject1 = localObject2;
        if (((Bundle)localObject2).isEmpty()) {
          localObject1 = null;
        }
        b = (Bundle)localObject1;
      }
      if (TextUtils.isEmpty(f))
      {
        localObject1 = String.valueOf("Hangouts/");
        localObject2 = String.valueOf(String.valueOf(((fak)ilh.a(paramContext, fak.class)).c()));
        if (((String)localObject2).length() == 0) {
          break label669;
        }
        localObject1 = ((String)localObject1).concat((String)localObject2);
      }
    }
    for (;;)
    {
      f = (String)localObject1;
      if (TextUtils.isEmpty(g))
      {
        paramContext.getContentResolver();
        g = aal.a(aal.oJ, "babel_mms_uaprofurl", "https://ssl.gstatic.com/android/hangouts/hangouts_mms_ua_profile.xml");
      }
      paramContext = f;
      localObject1 = g;
      ezi.c("Babel_SMS", String.valueOf(paramContext).length() + 51 + String.valueOf(localObject1).length() + "MmsConfig.loadMmsSettings: mUserAgent=" + paramContext + ", mUaProfUrl=" + (String)localObject1, new Object[0]);
      if (c)
      {
        paramContext = String.valueOf(e);
        new StringBuilder(String.valueOf(paramContext).length() + 25).append("MmsConfig: all values -- ").append(paramContext);
      }
      return;
      ezi.c("Babel_SMS", "MmsConfig.loadFromResources", new Object[0]);
      localObject1 = paramContext.getResources().getXml(aal.hX);
      localObject2 = emp.a((XmlPullParser)localObject1);
      ((emp)localObject2).a(new ena());
      label669:
      try
      {
        ((emp)localObject2).a();
        ((XmlResourceParser)localObject1).close();
      }
      finally
      {
        ((XmlResourceParser)localObject1).close();
      }
    }
  }
  
  private static void a(String paramString1, String paramString2, Bundle paramBundle1, Bundle paramBundle2)
  {
    paramString1 = e.get(paramString1);
    if ((paramString1 == null) || ((paramString1 instanceof String)))
    {
      paramString1 = (String)paramString1;
      if (!TextUtils.equals(paramBundle1.getString(paramString2), paramString1)) {
        paramBundle2.putString(paramString2, paramString1);
      }
    }
    boolean bool;
    do
    {
      do
      {
        int i;
        do
        {
          return;
          if (!(paramString1 instanceof Integer)) {
            break;
          }
          i = aal.a((Integer)paramString1, 0);
        } while (paramBundle1.getInt(paramString2) == i);
        paramBundle2.putInt(paramString2, i);
        return;
      } while (!(paramString1 instanceof Boolean));
      bool = aal.a((Boolean)paramString1, false);
    } while (paramBundle1.getBoolean(paramString2) == bool);
    paramBundle2.putBoolean(paramString2, bool);
  }
  
  public static void a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      if ("int".equals(paramString3))
      {
        e.put(paramString1, Integer.valueOf(Integer.parseInt(paramString2)));
        return;
      }
      if ("bool".equals(paramString3))
      {
        e.put(paramString1, Boolean.valueOf(Boolean.parseBoolean(paramString2)));
        return;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      ezi.e("Babel_SMS", String.valueOf(paramString1).length() + 28 + String.valueOf(paramString2).length() + String.valueOf(paramString3).length() + "MmsConfig.update: invalid " + paramString1 + "," + paramString2 + "," + paramString3, new Object[0]);
      return;
    }
    if ("string".equals(paramString3)) {
      e.put(paramString1, paramString2);
    }
  }
  
  /* Error */
  private static boolean b(Context paramContext)
  {
    // Byte code:
    //   0: ldc -100
    //   2: ldc_w 373
    //   5: iconst_0
    //   6: anewarray 160	java/lang/Object
    //   9: invokestatic 163	ezi:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   12: aload_0
    //   13: invokestatic 378	bei:a	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   16: astore_0
    //   17: invokestatic 381	ezm:k	()Landroid/telephony/TelephonyManager;
    //   20: invokevirtual 384	android/telephony/TelephonyManager:getSimOperator	()Ljava/lang/String;
    //   23: invokestatic 388	eol:a	(Ljava/lang/String;)Ljava/lang/String;
    //   26: astore_1
    //   27: aload_1
    //   28: invokestatic 139	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   31: ifeq +5 -> 36
    //   34: iconst_0
    //   35: ireturn
    //   36: aload_0
    //   37: ldc_w 390
    //   40: getstatic 393	bei:c	[Ljava/lang/String;
    //   43: ldc_w 395
    //   46: iconst_1
    //   47: anewarray 145	java/lang/String
    //   50: dup
    //   51: iconst_0
    //   52: aload_1
    //   53: aastore
    //   54: aconst_null
    //   55: aconst_null
    //   56: aconst_null
    //   57: invokevirtual 401	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   60: astore_1
    //   61: aload_1
    //   62: ifnull +116 -> 178
    //   65: aload_1
    //   66: astore_0
    //   67: aload_1
    //   68: invokeinterface 406 1 0
    //   73: ifeq +93 -> 166
    //   76: aload_1
    //   77: astore_0
    //   78: aload_1
    //   79: iconst_0
    //   80: invokeinterface 408 2 0
    //   85: aload_1
    //   86: iconst_1
    //   87: invokeinterface 408 2 0
    //   92: aload_1
    //   93: iconst_2
    //   94: invokeinterface 408 2 0
    //   99: invokestatic 410	emy:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   102: goto -37 -> 65
    //   105: astore_2
    //   106: aload_1
    //   107: astore_0
    //   108: aload_2
    //   109: invokestatic 197	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   112: astore_2
    //   113: aload_1
    //   114: astore_0
    //   115: ldc -100
    //   117: new 194	java/lang/StringBuilder
    //   120: dup
    //   121: aload_2
    //   122: invokestatic 197	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   125: invokevirtual 201	java/lang/String:length	()I
    //   128: bipush 30
    //   130: iadd
    //   131: invokespecial 204	java/lang/StringBuilder:<init>	(I)V
    //   134: ldc_w 412
    //   137: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload_2
    //   141: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 215	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: iconst_0
    //   148: anewarray 160	java/lang/Object
    //   151: invokestatic 163	ezi:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   154: aload_1
    //   155: ifnull +9 -> 164
    //   158: aload_1
    //   159: invokeinterface 413 1 0
    //   164: iconst_0
    //   165: ireturn
    //   166: aload_1
    //   167: ifnull +9 -> 176
    //   170: aload_1
    //   171: invokeinterface 413 1 0
    //   176: iconst_1
    //   177: ireturn
    //   178: aload_1
    //   179: ifnull -15 -> 164
    //   182: aload_1
    //   183: invokeinterface 413 1 0
    //   188: goto -24 -> 164
    //   191: astore_1
    //   192: aconst_null
    //   193: astore_0
    //   194: aload_0
    //   195: ifnull +9 -> 204
    //   198: aload_0
    //   199: invokeinterface 413 1 0
    //   204: aload_1
    //   205: athrow
    //   206: astore_1
    //   207: goto -13 -> 194
    //   210: astore_2
    //   211: aconst_null
    //   212: astore_1
    //   213: goto -107 -> 106
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	216	0	paramContext	Context
    //   26	157	1	localObject1	Object
    //   191	14	1	localObject2	Object
    //   206	1	1	localObject3	Object
    //   212	1	1	localObject4	Object
    //   105	4	2	localSQLiteException1	android.database.sqlite.SQLiteException
    //   112	29	2	str	String
    //   210	1	2	localSQLiteException2	android.database.sqlite.SQLiteException
    // Exception table:
    //   from	to	target	type
    //   67	76	105	android/database/sqlite/SQLiteException
    //   78	102	105	android/database/sqlite/SQLiteException
    //   36	61	191	finally
    //   67	76	206	finally
    //   78	102	206	finally
    //   108	113	206	finally
    //   115	154	206	finally
    //   36	61	210	android/database/sqlite/SQLiteException
  }
  
  private static String c(String paramString)
  {
    paramString = e.get(paramString);
    if (paramString != null) {
      return (String)paramString;
    }
    return null;
  }
  
  private static String x()
  {
    Object localObject2 = aes.a("persist.radio.cdma.nai");
    Object localObject1 = localObject2;
    if (!TextUtils.isEmpty((CharSequence)localObject2))
    {
      String str = a().w();
      localObject1 = localObject2;
      if (!TextUtils.isEmpty(str))
      {
        localObject1 = String.valueOf(localObject2);
        localObject2 = String.valueOf(str);
        if (((String)localObject2).length() == 0) {
          break label85;
        }
      }
    }
    for (localObject1 = ((String)localObject1).concat((String)localObject2);; localObject1 = new String((String)localObject1))
    {
      try
      {
        localObject2 = Base64.encode(((String)localObject1).getBytes("UTF-8"), 2);
        localObject1 = localObject2;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException1)
      {
        for (;;)
        {
          label85:
          localObject1 = Base64.encode(((String)localObject1).getBytes(), 2);
        }
      }
      try
      {
        localObject2 = new String((byte[])localObject1, "UTF-8");
        localObject1 = localObject2;
        return (String)localObject1;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException2) {}
    }
    return new String((byte[])localObject1);
  }
  
  public boolean a(String paramString)
  {
    if (!aal.a((Boolean)e.get("aliasEnabled"), false)) {
      return false;
    }
    if (paramString == null) {
      return false;
    }
    int j = paramString.length();
    if ((j < aal.a((Integer)e.get("aliasMinChars"), 0)) || (j > aal.a((Integer)e.get("aliasMaxChars"), 0))) {
      return false;
    }
    if (!Character.isLetter(paramString.charAt(0))) {
      return false;
    }
    int i = 1;
    while (i < j)
    {
      char c1 = paramString.charAt(i);
      if ((!Character.isLetterOrDigit(c1)) && (c1 != '.')) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (d.containsKey(paramString1)))
    {
      paramString1 = d.get(paramString1);
      if (paramString1 != null) {
        paramString1 = paramString1.getClass();
      }
      while ("int".equals(paramString2)) {
        if (paramString1 == Integer.class)
        {
          return true;
          paramString1 = String.class;
        }
        else
        {
          return false;
        }
      }
      if ("bool".equals(paramString2)) {
        return paramString1 == Boolean.class;
      }
      if ("string".equals(paramString2)) {
        return paramString1 == String.class;
      }
    }
    return false;
  }
  
  public int b()
  {
    return aal.a((Integer)e.get("smsToMmsTextThreshold"), 0);
  }
  
  public String b(String paramString)
  {
    if ("LINE1".equals(paramString)) {
      return a(false);
    }
    if ("LINE1WITHCOUNTRYCODE".equals(paramString)) {
      return a(true);
    }
    if ("NAI".equals(paramString)) {
      return x();
    }
    return null;
  }
  
  public int c()
  {
    return aal.a((Integer)e.get("smsToMmsTextLengthThreshold"), 0);
  }
  
  public boolean d()
  {
    return aal.a((Boolean)e.get("enabledMMS"), false);
  }
  
  public int e()
  {
    return aal.a((Integer)e.get("maxMessageSize"), 0);
  }
  
  public boolean f()
  {
    return aal.a((Boolean)e.get("enabledTransID"), false);
  }
  
  public String g()
  {
    return f;
  }
  
  public String h()
  {
    return c("mUaProfTagName");
  }
  
  public String i()
  {
    return g;
  }
  
  public String j()
  {
    return c("httpParams");
  }
  
  public String k()
  {
    return c("emailGatewayNumber");
  }
  
  public int l()
  {
    return aal.a((Integer)e.get("maxImageHeight"), 0);
  }
  
  public int m()
  {
    return aal.a((Integer)e.get("maxImageWidth"), 0);
  }
  
  public int n()
  {
    int i = aal.a((Integer)e.get("maxMessageTextSize"), 0);
    if (i >= 0) {
      return i;
    }
    return 2000;
  }
  
  public int o()
  {
    return aal.a((Integer)e.get("httpSocketTimeout"), 0);
  }
  
  public boolean p()
  {
    return aal.a((Boolean)e.get("enableMultipartSMS"), false);
  }
  
  public boolean q()
  {
    return aal.a((Boolean)e.get("sendMultipartSmsAsSeparateMessages"), false);
  }
  
  public boolean r()
  {
    return aal.a((Boolean)e.get("enableSMSDeliveryReports"), false);
  }
  
  public boolean s()
  {
    return aal.a((Boolean)e.get("enabledNotifyWapMMSC"), false);
  }
  
  public boolean t()
  {
    return aal.a((Boolean)e.get("enableGroupMms"), false);
  }
  
  public boolean u()
  {
    return aal.a((Boolean)e.get("supportMmsContentDisposition"), false);
  }
  
  public boolean v()
  {
    return aal.a((Boolean)e.get("config_cellBroadcastAppLinks"), false);
  }
  
  public String w()
  {
    return c("naiSuffix");
  }
}

/* Location:
 * Qualified Name:     emy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */