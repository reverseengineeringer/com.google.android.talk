package com.google.android.videochat;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.google.android.videochat.util.LogUtil;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class JingleInfoManager
{
  private static Object sLock = new Object();
  
  public static String getJingleInfoStanza(Context paramContext)
  {
    synchronized (sLock)
    {
      paramContext = paramContext.getSharedPreferences("com.google.android.videochat.JINGLE_INFO", 0).getString("com.google.android.videochat.jingle_info_stanza", null);
      return paramContext;
    }
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
      Log.e("vclib:JingleInfoManager", "Couldn't parse stanza", paramString);
    }
    return null;
  }
  
  public static void notifyNewJingleInfo(Context paramContext, String paramString)
  {
    LogUtil.LOGV("vclib:JingleInfoManager", "notifyNewJingleInfo: " + paramString);
    Intent localIntent = new Intent("com.google.android.videochat.NOTIFY_JINGLE_INFO");
    localIntent.putExtra("JINGLE_INFO_STANZA", paramString);
    paramContext.sendBroadcast(localIntent);
  }
  
  public static boolean parseStanza(Context paramContext, String paramString)
  {
    try
    {
      XmlPullParser localXmlPullParser = makeParser(paramString);
      for (int i = localXmlPullParser.getEventType(); i != 1; i = localXmlPullParser.next()) {
        if (i == 2)
        {
          String str1 = localXmlPullParser.getName();
          String str2 = localXmlPullParser.getNamespace();
          if (("query".equals(str1)) && ("google:jingleinfo".equals(str2)))
          {
            setJingleInfoStanza(paramContext, paramString);
            return true;
          }
        }
      }
      return false;
    }
    catch (XmlPullParserException paramContext)
    {
      Log.e("vclib:JingleInfoManager", "Couldn't parse stanza", paramContext);
      return false;
    }
    catch (NullPointerException paramContext)
    {
      Log.e("vclib:JingleInfoManager", "Couldn't parse the stanza " + paramString, paramContext);
      return false;
    }
    catch (NumberFormatException paramContext)
    {
      Log.e("vclib:JingleInfoManager", "Couldn't parse the sessionId " + paramString, paramContext);
      return false;
    }
    catch (IOException paramContext)
    {
      Log.e("vclib:JingleInfoManager", "Couldn't parse the stanza " + paramString, paramContext);
      return false;
    }
  }
  
  public static void setJingleInfoStanza(Context paramContext, String paramString)
  {
    synchronized (sLock)
    {
      LogUtil.LOGV("vclib:JingleInfoManager", "setJingleInfoStanza: " + paramString);
      paramContext = paramContext.getSharedPreferences("com.google.android.videochat.JINGLE_INFO", 0).edit();
      paramContext.putString("com.google.android.videochat.jingle_info_stanza", paramString);
      paramContext.apply();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.JingleInfoManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */