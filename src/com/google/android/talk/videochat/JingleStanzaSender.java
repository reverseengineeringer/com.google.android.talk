package com.google.android.talk.videochat;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.talk.StringUtils;
import com.google.android.talk.TalkApp;
import com.google.android.talk.util.JingleAndGingleStanzaParser;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class JingleStanzaSender
{
  public static final Pattern CALL_PERF_STATS_END_TAG_PATTERN;
  public static final Pattern CALL_PERF_STATS_START_TAG_PATTERN;
  public static final Pattern ERROR_END_TAG_PATTERN;
  public static final Pattern ERROR_START_TAG_PATTERN;
  private static final Pattern JINGLENODEWRAPPER_END_TAG_PATTERN = Pattern.compile("<(\\s+)?/(\\s+)?(\\w+?:)?jinglenodewrapper(\\s+)?>");
  private static final Pattern JINGLENODEWRAPPER_START_TAG_PATTERN;
  public static final Pattern JINGLE_END_TAG_PATTERN;
  public static final Pattern JINGLE_START_TAG_PATTERN;
  public static final Pattern SESSION_END_TAG_PATTERN;
  public static final Pattern SESSION_START_TAG_PATTERN = Pattern.compile("<(\\s+)?(\\w+?:)?session\\b");
  public static final Pattern SYSTEM_INFO_STATS_END_TAG_PATTERN;
  public static final Pattern SYSTEM_INFO_STATS_START_TAG_PATTERN;
  
  static
  {
    SESSION_END_TAG_PATTERN = Pattern.compile("<(\\s+)?/(\\s+)?(\\w+?:)?session(\\s+)?>");
    JINGLE_START_TAG_PATTERN = Pattern.compile("<(\\s+)?(\\w+?:)?jingle\\b");
    JINGLE_END_TAG_PATTERN = Pattern.compile("<(\\s+)?/(\\s+)?(\\w+?:)?jingle(\\s+)?>");
    CALL_PERF_STATS_START_TAG_PATTERN = Pattern.compile("<(\\s+)?(\\w+?:)?callPerfStats\\b");
    CALL_PERF_STATS_END_TAG_PATTERN = Pattern.compile("<(\\s+)?/(\\s+)?(\\w+?:)?callPerfStats(\\s+)?>");
    SYSTEM_INFO_STATS_START_TAG_PATTERN = Pattern.compile("<(\\s+)?(\\w+?:)?systemInfoStats\\b");
    SYSTEM_INFO_STATS_END_TAG_PATTERN = Pattern.compile("<(\\s+)?/(\\s+)?(\\w+?:)?systemInfoStats(\\s+)?>");
    ERROR_START_TAG_PATTERN = Pattern.compile("<(\\s+)?(\\w+?:)?error\\b");
    ERROR_END_TAG_PATTERN = Pattern.compile("<(\\s+)?/(\\s+)?(\\w+?:)?error(\\s+)?>");
    JINGLENODEWRAPPER_START_TAG_PATTERN = Pattern.compile("<(\\s+)?(\\w+?:)?jinglenodewrapper\\b");
  }
  
  static IQ buildIqStanza(String paramString)
  {
    return buildIqStanza(paramString, false, true);
  }
  
  public static IQ buildIqStanza(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject2 = null;
    if (TextUtils.isEmpty(paramString))
    {
      Log.e("talk", "[JingleStanzaSender] buildIqStanza: invalid xml!");
      return null;
    }
    String str2 = extractJingleXml(paramString);
    String str3 = extractSessionXml(paramString);
    String str4 = extractErrorXml(paramString);
    Object localObject1 = null;
    String str1 = null;
    if (paramBoolean1)
    {
      localObject1 = extractCallPerfStatsXml(paramString);
      str1 = extractSystemInfoStatsXml(paramString);
    }
    int j = 0;
    if (str2 != null) {
      j = 0 + 1;
    }
    int i = j;
    if (str3 != null) {
      i = j + 1;
    }
    j = i;
    if (str4 != null) {
      j = i + 1;
    }
    i = j;
    if (localObject1 != null) {
      i = j + 1;
    }
    j = i;
    if (str1 != null) {
      j = i + 1;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    if ((j > 1) && (paramBoolean2))
    {
      localStringBuilder.append("<jinglenodewrapper xmlns=\"google:mobile:jingle\">");
      if (localObject1 != null) {
        localStringBuilder.append((String)localObject1);
      }
      if (str1 != null) {
        localStringBuilder.append(str1);
      }
      if (str2 != null) {
        localStringBuilder.append(str2);
      }
      if (str3 != null) {
        localStringBuilder.append(str3);
      }
      if (str4 != null) {
        localStringBuilder.append(str4);
      }
      localStringBuilder.append("</jinglenodewrapper>");
    }
    for (;;)
    {
      localObject1 = localObject2;
      if (localStringBuilder.length() > 0) {
        localObject1 = localStringBuilder.toString();
      }
      return generateIqStanza(paramString, (String)localObject1);
      if (str4 != null) {
        localStringBuilder.append(str4);
      } else if (localObject1 != null) {
        localStringBuilder.append((String)localObject1);
      } else if (str1 != null) {
        localStringBuilder.append(str1);
      } else if (str3 != null) {
        localStringBuilder.append(str3);
      } else if (str2 != null) {
        localStringBuilder.append(str2);
      }
    }
  }
  
  public static String extractCallPerfStatsXml(String paramString)
  {
    return extractXmlNode(paramString, CALL_PERF_STATS_START_TAG_PATTERN, CALL_PERF_STATS_END_TAG_PATTERN);
  }
  
  public static String extractErrorXml(String paramString)
  {
    return extractXmlNode(paramString, ERROR_START_TAG_PATTERN, ERROR_END_TAG_PATTERN);
  }
  
  public static String extractJingleXml(String paramString)
  {
    return extractXmlNode(paramString, JINGLE_START_TAG_PATTERN, JINGLE_END_TAG_PATTERN);
  }
  
  public static String extractSessionXml(String paramString)
  {
    return extractXmlNode(paramString, SESSION_START_TAG_PATTERN, SESSION_END_TAG_PATTERN);
  }
  
  public static String extractSystemInfoStatsXml(String paramString)
  {
    return extractXmlNode(paramString, SYSTEM_INFO_STATS_START_TAG_PATTERN, SYSTEM_INFO_STATS_END_TAG_PATTERN);
  }
  
  private static String extractXmlNode(String paramString, Pattern paramPattern1, Pattern paramPattern2)
  {
    paramPattern1 = paramPattern1.matcher(paramString);
    if (!paramPattern1.find(0)) {
      return null;
    }
    int j = paramPattern1.start();
    int i = paramPattern1.end();
    paramPattern1 = paramPattern2.matcher(paramString);
    if (paramPattern1.find(i)) {
      i = paramPattern1.end();
    }
    while (i <= j)
    {
      Log.e("talk", "[JingleStanzaSender] extractXmlNode: failed");
      return null;
      i = paramString.indexOf("/>", i);
      if (i < 0)
      {
        Log.e("talk", "[JingleStanzaSender] extractXmlNode: no close tag:");
        Log.e("talk", "    " + paramString);
        return null;
      }
      i += 2;
    }
    return paramString.substring(j, i);
  }
  
  private static IQ generateIqStanza(String paramString1, String paramString2)
  {
    String str1 = null;
    Object localObject = null;
    try
    {
      XmlPullParser localXmlPullParser = JingleAndGingleStanzaParser.makeParser(paramString1);
      paramString1 = null;
      int i;
      String str2;
      String str3;
      return paramString1;
    }
    catch (IOException paramString2)
    {
      try
      {
        for (;;)
        {
          i = localXmlPullParser.next();
          if (i == 1) {
            return paramString1;
          }
          localObject = localXmlPullParser.getName();
          if ((i != 2) || (!"iq".equalsIgnoreCase((String)localObject))) {
            break;
          }
          localObject = localXmlPullParser.getAttributeValue("", "from");
          str1 = localXmlPullParser.getAttributeValue("", "to");
          str2 = localXmlPullParser.getAttributeValue("", "id");
          str3 = localXmlPullParser.getAttributeValue("", "type");
          if (paramString1 != null)
          {
            Log.wtf("talk", "more than one <iq> found!");
            return paramString1;
          }
          localObject = new IQ(str2, (String)localObject, str1, str3, paramString2);
          paramString1 = (String)localObject;
        }
      }
      catch (XmlPullParserException paramString2)
      {
        for (;;) {}
      }
      catch (IOException paramString2)
      {
        for (;;) {}
      }
      paramString2 = paramString2;
      paramString1 = (String)localObject;
      Log.e("talk", "[JingleStanzaSender] parseRawIqXml caught ", paramString2);
      return paramString1;
    }
    catch (XmlPullParserException paramString2)
    {
      paramString1 = str1;
      Log.e("talk", "[JingleStanzaSender] parseRawIqXml caught ", paramString2);
      return paramString1;
    }
  }
  
  private static void logd(String paramString)
  {
    TalkApp.LOGD("talk", "[JingleStanzaSender] " + paramString);
  }
  
  public static void queryJingleInfo(Context paramContext, String paramString)
  {
    paramString = StringUtils.parseBareAddress(paramString);
    if (!sendXmppStanzaViaIntent(paramContext, paramString, null, paramString, paramString, "GET", "<query xmlns=\"google:jingleinfo\" />")) {
      logd("queryJingleInfo: failed");
    }
  }
  
  public static void sendCallPerfStatsStanza(Context paramContext, String paramString1, String paramString2)
  {
    IQ localIQ = buildIqStanza(paramString2, true, true);
    if (localIQ == null)
    {
      logd("sendCallPerfStatsStanza: not a valid IQ");
      logd(paramString2);
    }
    while (sendXmppStanzaViaIntent(paramContext, paramString1, localIQ.getId(), localIQ.getFrom(), localIQ.getTo(), localIQ.getType(), localIQ.getExtension())) {
      return;
    }
    logd("sendCallPerfStatsStanza: failed");
    logd(paramString2);
  }
  
  public static void sendCallSignalingMessage(Context paramContext, String paramString1, String paramString2)
  {
    IQ localIQ = buildIqStanza(paramString2);
    if (localIQ == null)
    {
      logd("sendSessionStanza: not a valid IQ");
      logd(paramString2);
    }
    while (sendXmppStanzaViaIntent(paramContext, paramString1, localIQ.getId(), localIQ.getFrom(), localIQ.getTo(), localIQ.getType(), localIQ.getExtension())) {
      return;
    }
    logd("sendSessionStanza: failed");
    logd(paramString2);
  }
  
  private static boolean sendXmppStanzaViaIntent(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    try
    {
      Intent localIntent = new Intent("com.google.android.gtalkservice.intent.SEND_IQ_STANZA");
      localIntent.putExtra("app", PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0));
      localIntent.putExtra("username", paramString1);
      localIntent.putExtra("attr:id", paramString2);
      localIntent.putExtra("attr:from", paramString3);
      localIntent.putExtra("attr:to", paramString4);
      localIntent.putExtra("attr:type", paramString5);
      localIntent.putExtra("extension", paramString6);
      paramContext.sendBroadcast(localIntent, null);
      return true;
    }
    catch (Exception paramContext)
    {
      Log.e("talk", "sendXmppStanzaViaIntent: caught " + paramContext);
    }
    return false;
  }
  
  public static String unwrapJingleNodeWrapper(String paramString)
  {
    Matcher localMatcher1 = JINGLENODEWRAPPER_START_TAG_PATTERN.matcher(paramString);
    Matcher localMatcher2 = JINGLENODEWRAPPER_END_TAG_PATTERN.matcher(paramString);
    String str = paramString;
    if (localMatcher1.find())
    {
      str = paramString;
      if (localMatcher2.find(localMatcher1.end()))
      {
        int i = paramString.indexOf('>', localMatcher1.end());
        if ((i < 0) || (i >= localMatcher2.start())) {
          break label116;
        }
        str = paramString.substring(0, localMatcher1.start()) + paramString.substring(i + 1, localMatcher2.start()) + paramString.substring(localMatcher2.end());
      }
    }
    return str;
    label116:
    Log.w("talk", "jinglenodewrapper found, but closing bracket not found in " + paramString);
    return paramString;
  }
  
  public static class IQ
  {
    String extension;
    String from;
    String id;
    String to;
    String type;
    
    public IQ(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
    {
      id = paramString1;
      from = paramString2;
      to = paramString3;
      type = paramString4;
      extension = paramString5;
    }
    
    public String getExtension()
    {
      return extension;
    }
    
    public String getFrom()
    {
      return from;
    }
    
    public String getId()
    {
      return id;
    }
    
    public String getTo()
    {
      return to;
    }
    
    public String getType()
    {
      return type;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.JingleStanzaSender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */