import android.content.ContentValues;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class emp
{
  private static final Map<String, String> a;
  private emq b;
  private emr c;
  private final StringBuilder d = new StringBuilder();
  private final XmlPullParser e;
  
  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put("mcc", "mcc");
    a.put("mnc", "mnc");
    a.put("carrier", "name");
    a.put("apn", "apn");
    a.put("mmsc", "mmsc");
    a.put("mmsproxy", "mmsproxy");
    a.put("mmsport", "mmsport");
    a.put("type", "type");
    a.put("user", "user");
    a.put("password", "password");
    a.put("authtype", "authtype");
    a.put("mvno_match_data", "mvno_match_data");
    a.put("mvno_type", "mvno_type");
    a.put("protocol", "protocol");
    a.put("bearer", "bearer");
    a.put("server", "server");
    a.put("roaming_protocol", "roaming_protocol");
    a.put("proxy", "proxy");
    a.put("port", "port");
    a.put("carrier_enabled", "carrier_enabled");
  }
  
  private emp(XmlPullParser paramXmlPullParser)
  {
    e = paramXmlPullParser;
    b = null;
    c = null;
  }
  
  public static emp a(XmlPullParser paramXmlPullParser)
  {
    hbs.b("Expected non-null", paramXmlPullParser);
    return new emp(paramXmlPullParser);
  }
  
  private Boolean a(String paramString1, String paramString2)
  {
    try
    {
      boolean bool = Boolean.parseBoolean(paramString1);
      return Boolean.valueOf(bool);
    }
    catch (Exception localException)
    {
      String str = String.valueOf(c());
      ezi.e("Babel_SMS", String.valueOf(paramString1).length() + 19 + String.valueOf(paramString2).length() + String.valueOf(str).length() + "Invalid value " + paramString1 + "for" + paramString2 + " @" + str, new Object[0]);
    }
    return null;
  }
  
  private Integer a(String paramString1, Integer paramInteger, String paramString2)
  {
    try
    {
      int i = Integer.parseInt(paramString1);
      return Integer.valueOf(i);
    }
    catch (Exception localException)
    {
      String str = String.valueOf(c());
      ezi.e("Babel_SMS", String.valueOf(paramString1).length() + 19 + String.valueOf(paramString2).length() + String.valueOf(str).length() + "Invalid value " + paramString1 + "for" + paramString2 + " @" + str, new Object[0]);
    }
    return paramInteger;
  }
  
  private void a(ContentValues paramContentValues)
  {
    hbs.b("Expected non-null", paramContentValues);
    paramContentValues.clear();
    int i = 0;
    while (i < e.getAttributeCount())
    {
      str = (String)a.get(e.getAttributeName(i));
      if (str != null) {
        paramContentValues.put(str, e.getAttributeValue(i));
      }
      i += 1;
    }
    paramContentValues.put("numeric", eol.a(paramContentValues.getAsString("mcc"), paramContentValues.getAsString("mnc")));
    String str = paramContentValues.getAsString("authtype");
    if (str != null) {
      paramContentValues.put("authtype", a(str, Integer.valueOf(-1), "apn authtype"));
    }
    str = paramContentValues.getAsString("carrier_enabled");
    if (str != null) {
      paramContentValues.put("carrier_enabled", a(str, "apn carrierEnabled"));
    }
    str = paramContentValues.getAsString("bearer");
    if (str != null) {
      paramContentValues.put("bearer", a(str, Integer.valueOf(0), "apn bearer"));
    }
    if (e.next() != 3)
    {
      paramContentValues = String.valueOf(c());
      if (paramContentValues.length() != 0) {}
      for (paramContentValues = "Apn: expecting end tag @".concat(paramContentValues);; paramContentValues = new String("Apn: expecting end tag @")) {
        throw new XmlPullParserException(paramContentValues);
      }
    }
    if (b != null) {
      b.a(paramContentValues);
    }
  }
  
  private int b()
  {
    int i;
    do
    {
      i = e.next();
    } while ((i != 2) && (i != 1));
    return i;
  }
  
  private String c()
  {
    int i = 0;
    d.setLength(0);
    if (e != null) {}
    for (;;)
    {
      try
      {
        int j = e.getEventType();
        localObject = d;
        switch (j)
        {
        default: 
          String str1 = Integer.toString(j);
          ((StringBuilder)localObject).append(str1);
          if ((j == 2) || (j == 3) || (j == 4))
          {
            d.append('<').append(e.getName());
            if (i < e.getAttributeCount())
            {
              d.append(' ').append(e.getAttributeName(i)).append('=').append(e.getAttributeValue(i));
              i += 1;
              continue;
            }
            d.append("/>");
          }
          str1 = d.toString();
          return str1;
        }
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        Object localObject = String.valueOf(localXmlPullParserException);
        ezi.d("Babel_SMS", String.valueOf(localObject).length() + 23 + "xmlParserDebugContext: " + (String)localObject, localXmlPullParserException);
      }
      return "Unknown";
      continue;
      String str2 = "START_DOCUMENT";
      continue;
      str2 = "END_DOCUMENT";
      continue;
      str2 = "START_TAG";
      continue;
      str2 = "END_TAG";
      continue;
      str2 = "TEXT";
    }
  }
  
  private void d()
  {
    String str2 = eol.a(e.getAttributeValue(null, "mcc"), e.getAttributeValue(null, "mnc"));
    int i;
    do
    {
      i = e.next();
    } while (i == 4);
    String str3;
    String str4;
    String str1;
    if (i == 2)
    {
      str3 = e.getAttributeValue(null, "name");
      str4 = e.getName();
      i = e.next();
      if (i != 4) {
        break label313;
      }
      str1 = e.getText();
      i = e.next();
    }
    for (;;)
    {
      if (i != 3)
      {
        str1 = String.valueOf(c());
        if (str1.length() != 0) {}
        for (str1 = "ApnsXmlProcessor: expecting end tag @".concat(str1);; str1 = new String("ApnsXmlProcessor: expecting end tag @")) {
          throw new XmlPullParserException(str1);
        }
      }
      if (emy.a().a(str3, str4))
      {
        if (c == null) {
          break;
        }
        c.a(str2, str3, str1, str4);
        break;
      }
      ezi.d("Babel_SMS", String.valueOf(str3).length() + 32 + String.valueOf(str4).length() + "MmsConfig: invalid key=" + str3 + " or type=" + str4, new Object[0]);
      break;
      if (i != 3)
      {
        str1 = String.valueOf(c());
        if (str1.length() != 0) {}
        for (str1 = "MmsConfig: expecting start or end tag @".concat(str1);; str1 = new String("MmsConfig: expecting start or end tag @")) {
          throw new XmlPullParserException(str1);
        }
      }
      return;
      label313:
      str1 = null;
    }
  }
  
  public emp a(emq paramemq)
  {
    b = paramemq;
    return this;
  }
  
  public emp a(emr paramemr)
  {
    c = paramemr;
    return this;
  }
  
  public void a()
  {
    String str3;
    do
    {
      try
      {
        if (b() != 2)
        {
          String str1 = String.valueOf(c());
          if (str1.length() != 0)
          {
            str1 = "ApnsXmlProcessor: expecting start tag @".concat(str1);
            throw new XmlPullParserException(str1);
          }
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          str3 = String.valueOf(localIOException);
          ezi.d("Babel_SMS", String.valueOf(str3).length() + 30 + "ApnsXmlProcessor: I/O failure " + str3, localIOException);
          return;
          String str2 = new String("ApnsXmlProcessor: expecting start tag @");
        }
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        str3 = String.valueOf(localXmlPullParserException);
        ezi.d("Babel_SMS", String.valueOf(str3).length() + 34 + "ApnsXmlProcessor: parsing failure " + str3, localXmlPullParserException);
        return;
      }
      ContentValues localContentValues = new ContentValues();
      str3 = e.getName();
      if ("apns".equals(str3)) {
        while (b() == 2)
        {
          str3 = e.getName();
          if ("apn".equals(str3)) {
            a(localContentValues);
          } else if ("mms_config".equals(str3)) {
            d();
          }
        }
      }
    } while (!"mms_config".equals(str3));
    d();
  }
}

/* Location:
 * Qualified Name:     emp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */