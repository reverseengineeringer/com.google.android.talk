package com.google.android.talk.util;

import android.util.Log;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class JingleAndGingleStanzaParser
{
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
      Log.e("talk:videochat", "Couldn't parse stanza", paramString);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.JingleAndGingleStanzaParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */