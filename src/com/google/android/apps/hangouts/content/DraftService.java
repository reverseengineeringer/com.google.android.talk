package com.google.android.apps.hangouts.content;

import android.text.TextUtils;
import bfb;
import bfd;
import ezi;
import hq;
import imx;
import java.util.Map;

public class DraftService
{
  public static final boolean a = false;
  public static final hq<Integer, Map<String, bfb>> b = new hq();
  
  static
  {
    imx localimx = ezi.d;
  }
  
  public static bfb a(String paramString, bfd parambfd)
  {
    if (a)
    {
      ??? = String.valueOf(ezi.b(parambfd.a()));
      new StringBuilder(String.valueOf(???).length() + 52 + String.valueOf(paramString).length()).append("DraftService.getDraft> accountName=").append((String)???).append(", conversationId=").append(paramString);
    }
    if ((TextUtils.isEmpty(paramString)) || (parambfd == null)) {
      return null;
    }
    synchronized (b)
    {
      parambfd = (Map)b.get(Integer.valueOf(parambfd.g()));
      if (parambfd != null)
      {
        paramString = (bfb)parambfd.get(paramString);
        return paramString;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.content.DraftService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */