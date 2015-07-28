package com.google.android.talk;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.util.List;

public class PublicIntentDispatcher$XmppUri
{
  private int mAction;
  private String mFromAddress;
  private String mMessageBody;
  private String mToAddress;
  
  private static String getXmppQueryParam(String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString1))
    {
      paramString1 = paramString1.split(";");
      int j = paramString1.length;
      int i = 0;
      while (i < j)
      {
        String[] arrayOfString = paramString1[i].split("=", 2);
        if ((arrayOfString.length > 1) && (arrayOfString[0].equals(paramString2))) {
          return arrayOfString[1];
        }
        i += 1;
      }
    }
    return null;
  }
  
  private static XmppUri internalParse(Uri paramUri)
  {
    XmppUri localXmppUri = new XmppUri();
    Object localObject = paramUri.getAuthority();
    label59:
    String str;
    int i;
    int j;
    if (PublicIntentDispatcher.isValidAddress((String)localObject))
    {
      mFromAddress = ((String)localObject);
      localObject = paramUri.getPathSegments();
      if (((List)localObject).size() > 0)
      {
        localObject = (String)((List)localObject).get(0);
        if (!PublicIntentDispatcher.isValidAddress((String)localObject)) {
          break label169;
        }
        mToAddress = ((String)localObject);
      }
      str = paramUri.getQuery();
      localObject = str;
      paramUri = null;
      i = str.indexOf(";");
      if (i >= 0)
      {
        localObject = str.substring(0, i);
        paramUri = str.substring(i);
      }
      i = -1;
      str = null;
      if (!((String)localObject).equals("call")) {
        break label196;
      }
      j = 3;
      i = j;
      localObject = str;
      if (paramUri != null)
      {
        paramUri = getXmppQueryParam(paramUri, "type");
        if (!"voice".equals(paramUri)) {
          break label174;
        }
        i = 2;
        localObject = str;
      }
    }
    for (;;)
    {
      mAction = i;
      mMessageBody = ((String)localObject);
      return localXmppUri;
      localObject = null;
      break;
      label169:
      localObject = null;
      break label59;
      label174:
      i = j;
      localObject = str;
      if ("video".equals(paramUri))
      {
        i = 1;
        localObject = str;
        continue;
        label196:
        if (((String)localObject).equals("message"))
        {
          i = 0;
          localObject = getXmppQueryParam(paramUri, "body");
        }
        else
        {
          Log.w("talk", "parseIntent: xmpp query type " + (String)localObject + " not supported");
          localObject = str;
        }
      }
    }
  }
  
  public static boolean needsConfirmation(int paramInt)
  {
    return (paramInt == 1) || (paramInt == 2) || (paramInt == 3);
  }
  
  public static XmppUri parse(Uri paramUri)
  {
    if (!paramUri.getScheme().equals("xmpp")) {
      return null;
    }
    Uri localUri = paramUri;
    if (paramUri.isOpaque()) {
      localUri = Uri.parse(paramUri.getSchemeSpecificPart());
    }
    return internalParse(localUri);
  }
  
  public int getAction()
  {
    return mAction;
  }
  
  public String getFromAddress()
  {
    return mFromAddress;
  }
  
  public String getMessageBody()
  {
    return mMessageBody;
  }
  
  public String getToAddress()
  {
    return mToAddress;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PublicIntentDispatcher.XmppUri
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */