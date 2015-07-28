package com.google.android.videochat.util;

import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class IqStanzaParser
{
  public String mAccountId;
  public String mFrom;
  public String mId = "0";
  private String mRawStanza;
  public String mTo;
  public String mType;
  
  public IqStanzaParser(String paramString)
  {
    parseIqStanzaString(paramString);
  }
  
  public static XmlPullParser makeParser(String paramString)
  {
    try
    {
      Object localObject = XmlPullParserFactory.newInstance();
      ((XmlPullParserFactory)localObject).setNamespaceAware(true);
      localObject = ((XmlPullParserFactory)localObject).newPullParser();
      ((XmlPullParser)localObject).setInput(new StringReader(paramString));
      return (XmlPullParser)localObject;
    }
    catch (XmlPullParserException paramString)
    {
      Log.e("IqStanzaParser", "Couldn't parse stanza", paramString);
    }
    return null;
  }
  
  private boolean parseIqStanzaString(String paramString)
  {
    int i;
    int k;
    int m;
    int j;
    try
    {
      mRawStanza = paramString;
      XmlPullParser localXmlPullParser = makeParser(mRawStanza);
      for (i = localXmlPullParser.getEventType(); i != 1; i = localXmlPullParser.next()) {
        if ((i == 2) && ("iq".equals(localXmlPullParser.getName())))
        {
          k = 0;
          m = localXmlPullParser.getAttributeCount();
          j = 0;
          break label354;
          String str = localXmlPullParser.getAttributeName(j);
          if ((0 == 0) && ("from".equals(str)))
          {
            mFrom = localXmlPullParser.getAttributeValue(j);
            i = 1;
            break label380;
          }
          if ((0 == 0) && ("to".equals(str)))
          {
            mTo = localXmlPullParser.getAttributeValue(j);
            i = 1;
            break label380;
          }
          if ((0 == 0) && ("account_id".equals(str)))
          {
            mAccountId = localXmlPullParser.getAttributeValue(j);
            i = 1;
            break label380;
          }
          if ((k == 0) && ("id".equals(str)))
          {
            mId = localXmlPullParser.getAttributeValue(j);
            i = 1;
            break label380;
          }
          i = k;
          if (0 != 0) {
            break label380;
          }
          i = k;
          if (!"type".equals(str)) {
            break label380;
          }
          mType = localXmlPullParser.getAttributeValue(j);
          i = 1;
          break label380;
        }
      }
      return true;
    }
    catch (XmlPullParserException paramString)
    {
      Log.e("IqStanzaParser", "Couldn't parse stanza", paramString);
      return false;
    }
    catch (NullPointerException localNullPointerException)
    {
      Log.e("IqStanzaParser", "Couldn't parse the stanza " + paramString, localNullPointerException);
      return false;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Log.e("IqStanzaParser", "Couldn't parse the sessionId " + paramString, localNumberFormatException);
      return false;
    }
    catch (IOException localIOException)
    {
      Log.e("IqStanzaParser", "Couldn't parse the stanza " + paramString, localIOException);
      return false;
    }
    for (;;)
    {
      label354:
      if (j < m)
      {
        if ((0 == 0) || (0 == 0) || (0 == 0)) {
          break;
        }
        if (k == 0)
        {
          break;
          label380:
          j += 1;
          k = i;
        }
      }
    }
  }
  
  public boolean isValid()
  {
    return (!TextUtils.isEmpty(mFrom)) && (!TextUtils.isEmpty(mType));
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.util.IqStanzaParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */