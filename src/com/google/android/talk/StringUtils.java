package com.google.android.talk;

public class StringUtils
{
  public static String parseAbbreviatedAddress(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    int i;
    do
    {
      return str;
      i = paramString.indexOf('@');
      str = paramString;
    } while (i < 0);
    return paramString.substring(0, i);
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
  
  public static String parseDomain(String paramString)
  {
    paramString = parseBareAddress(paramString);
    if (paramString == null) {}
    int i;
    do
    {
      return null;
      i = paramString.indexOf('@');
    } while (i < 0);
    return paramString.substring(i + 1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.StringUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */