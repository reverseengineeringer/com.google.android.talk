package com.google.android.videochat.util;

import android.text.TextUtils;

public class Util
{
  public static boolean isLooseJidMatch(String paramString1, String paramString2)
  {
    return (!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)) && ((paramString1.equals(paramString2)) || (paramString2.equals(parseBareAddress(paramString1))) || (paramString1.equals(parseBareAddress(paramString2))));
  }
  
  public static String parseBareAddress(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    int i;
    do
    {
      return str;
      i = paramString.indexOf('/');
      str = paramString;
    } while (i < 0);
    if (i == 0) {
      return "";
    }
    return paramString.substring(0, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.util.Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */