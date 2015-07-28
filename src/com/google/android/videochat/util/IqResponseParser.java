package com.google.android.videochat.util;

import android.text.TextUtils;
import android.util.Log;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class IqResponseParser
{
  private static final String ATTR_FROM_NS = null;
  private static final String TAG = "vclib:" + IqResponseParser.class.getSimpleName();
  public final String mFrom;
  public final String mRawStanza;
  
  public IqResponseParser(String paramString)
  {
    mRawStanza = paramString;
    localObject = null;
    for (;;)
    {
      try
      {
        localXmlPullParser = makeParser(mRawStanza);
        i = localXmlPullParser.getEventType();
        paramString = (String)localObject;
        if (i != 1)
        {
          if (i != 2) {
            continue;
          }
          paramString = localXmlPullParser.getName();
          String str = localXmlPullParser.getNamespace();
          if ((!"iq".equals(paramString)) || (!"jabber:client".equals(str))) {
            continue;
          }
          paramString = localXmlPullParser.getAttributeValue(ATTR_FROM_NS, "from");
        }
      }
      catch (Exception paramString)
      {
        XmlPullParser localXmlPullParser;
        int i;
        Log.e(TAG, "Couldn't parse stanza", paramString);
        paramString = (String)localObject;
        continue;
      }
      mFrom = paramString;
      return;
      i = localXmlPullParser.next();
    }
  }
  
  private static XmlPullParser makeParser(String paramString)
    throws XmlPullParserException
  {
    Object localObject = XmlPullParserFactory.newInstance();
    ((XmlPullParserFactory)localObject).setNamespaceAware(true);
    localObject = ((XmlPullParserFactory)localObject).newPullParser();
    ((XmlPullParser)localObject).setInput(new StringReader(paramString));
    return (XmlPullParser)localObject;
  }
  
  public boolean isValidIqResponse()
  {
    return !TextUtils.isEmpty(mFrom);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.util.IqResponseParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */