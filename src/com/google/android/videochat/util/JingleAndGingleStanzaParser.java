package com.google.android.videochat.util;

import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class JingleAndGingleStanzaParser
{
  public String mId;
  private boolean mIsJingle;
  public String mRawStanza;
  public String mType;
  
  public JingleAndGingleStanzaParser(String paramString)
  {
    parseStanzaString(paramString);
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
      Log.e("vclib:JingleAndGingleStanzaParser", "Couldn't parse stanza", paramString);
    }
    return null;
  }
  
  private void parseJingleAttributes(XmlPullParser paramXmlPullParser)
  {
    int k = 0;
    int i = 0;
    int i1 = paramXmlPullParser.getAttributeCount();
    int j = 0;
    if ((j < i1) && ((k == 0) || (i == 0)))
    {
      String str = paramXmlPullParser.getAttributeName(j);
      int m;
      int n;
      if ((k == 0) && ("sid".equals(str)))
      {
        mId = paramXmlPullParser.getAttributeValue(j);
        m = 1;
        n = i;
      }
      for (;;)
      {
        j += 1;
        k = m;
        i = n;
        break;
        m = k;
        n = i;
        if (i == 0)
        {
          m = k;
          n = i;
          if ("action".equals(str))
          {
            mType = paramXmlPullParser.getAttributeValue(j);
            n = 1;
            m = k;
          }
        }
      }
    }
  }
  
  private void parseSessionAttributes(XmlPullParser paramXmlPullParser)
  {
    int k = 0;
    int i = 0;
    int i1 = paramXmlPullParser.getAttributeCount();
    int j = 0;
    if ((j < i1) && ((k == 0) || (i == 0)))
    {
      String str = paramXmlPullParser.getAttributeName(j);
      int m;
      int n;
      if ((k == 0) && ("id".equals(str)))
      {
        mId = paramXmlPullParser.getAttributeValue(j);
        m = 1;
        n = i;
      }
      for (;;)
      {
        j += 1;
        k = m;
        i = n;
        break;
        m = k;
        n = i;
        if (i == 0)
        {
          m = k;
          n = i;
          if ("type".equals(str))
          {
            mType = paramXmlPullParser.getAttributeValue(j);
            n = 1;
            m = k;
          }
        }
      }
    }
  }
  
  private boolean parseStanzaString(String paramString)
  {
    boolean bool2 = true;
    boolean bool1;
    try
    {
      mRawStanza = paramString;
      localXmlPullParser = makeParser(mRawStanza);
      i = localXmlPullParser.getEventType();
      bool1 = bool2;
      if (i != 1) {
        if (i == 2)
        {
          String str1 = localXmlPullParser.getName();
          String str2 = localXmlPullParser.getNamespace();
          if (("session".equals(str1)) && ("http://www.google.com/session".equals(str2)))
          {
            parseSessionAttributes(localXmlPullParser);
            mIsJingle = false;
            return true;
          }
          if (("jingle".equals(str1)) && ("urn:xmpp:jingle:1".equals(str2)))
          {
            parseJingleAttributes(localXmlPullParser);
            mIsJingle = true;
            return true;
          }
        }
      }
    }
    catch (XmlPullParserException paramString)
    {
      for (;;)
      {
        XmlPullParser localXmlPullParser;
        Log.e("vclib:JingleAndGingleStanzaParser", "Couldn't parse stanza", paramString);
        return false;
        int i = localXmlPullParser.next();
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      Log.e("vclib:JingleAndGingleStanzaParser", "Couldn't parse the stanza " + paramString, localNullPointerException);
      return false;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Log.e("vclib:JingleAndGingleStanzaParser", "Couldn't parse the sessionId " + paramString, localNumberFormatException);
      return false;
    }
    catch (IOException localIOException)
    {
      Log.e("vclib:JingleAndGingleStanzaParser", "Couldn't parse the stanza " + paramString, localIOException);
      bool1 = false;
    }
    return bool1;
  }
  
  public boolean isJingle()
  {
    return mIsJingle;
  }
  
  public boolean isTypeInitiate()
  {
    if (isJingle()) {
      return "session-initiate".equals(mType);
    }
    return "initiate".equals(mType);
  }
  
  public boolean isTypeTerminate()
  {
    if (isJingle()) {
      return "session-terminate".equals(mType);
    }
    return "terminate".equals(mType);
  }
  
  public boolean isValidJingleOrGingleStanza()
  {
    return (!TextUtils.isEmpty(mId)) && (!TextUtils.isEmpty(mType));
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.util.JingleAndGingleStanzaParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */