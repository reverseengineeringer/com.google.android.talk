package com.google.android.libraries.componentview.services.application;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.Log;
import fii;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class DefaultLogger
  implements Logger
{
  private final Fetcher a;
  private String b = "www.google.com";
  
  public DefaultLogger(Fetcher paramFetcher)
  {
    a = paramFetcher;
  }
  
  public void a(String paramString)
  {
    try
    {
      URI localURI = new URI(paramString);
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {
        "Click tracking url: ".concat(paramString);
      }
      for (;;)
      {
        a.a(localURI, true);
        return;
        new String("Click tracking url: ");
      }
      return;
    }
    catch (URISyntaxException paramString)
    {
      Log.e("DefaultLogger", paramString.toString());
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    boolean bool = true;
    if (!TextUtils.isEmpty(paramString2)) {}
    for (;;)
    {
      fii.b(bool, "ved was null or empty");
      Uri.Builder localBuilder = new Uri.Builder();
      localBuilder.scheme("https").authority(b).appendPath("url");
      localBuilder.appendQueryParameter("sa", "T");
      if (!TextUtils.isEmpty(paramString3)) {
        localBuilder.appendQueryParameter("sig2", paramString3);
      }
      localBuilder.appendQueryParameter("ved", paramString2);
      if (!TextUtils.isEmpty(paramString1)) {
        localBuilder.appendQueryParameter("url", paramString1);
      }
      try
      {
        paramString1 = new URI(localBuilder.build().toString());
        paramString2 = String.valueOf(paramString1.toString());
        if (paramString2.length() != 0) {
          "Click tracking url: ".concat(paramString2);
        }
        for (;;)
        {
          a.a(paramString1, true);
          return;
          new String("Click tracking url: ");
        }
        bool = false;
      }
      catch (URISyntaxException paramString1)
      {
        Log.e("DefaultLogger", paramString1.toString());
        return;
      }
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3, Map<String, String> paramMap)
  {
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("https").authority(b).appendPath("gen_204");
    localBuilder.appendQueryParameter("atyp", "i");
    if (!TextUtils.isEmpty(paramString1)) {
      localBuilder.appendQueryParameter("ved", paramString1);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      localBuilder.appendQueryParameter("vet", paramString2);
    }
    localBuilder.appendQueryParameter("ei", paramString3);
    paramString1 = paramMap.entrySet().iterator();
    while (paramString1.hasNext())
    {
      paramString2 = (Map.Entry)paramString1.next();
      localBuilder.appendQueryParameter((String)paramString2.getKey(), (String)paramString2.getValue());
    }
    try
    {
      paramString1 = new URI(localBuilder.build().toString());
      paramString2 = String.valueOf(paramString1.toString());
      if (paramString2.length() != 0) {
        "Issuing visibility update or interaction: ".concat(paramString2);
      }
      for (;;)
      {
        a.a(paramString1, true);
        return;
        new String("Issuing visibility update or interaction: ");
      }
      return;
    }
    catch (URISyntaxException paramString1)
    {
      Log.e("DefaultLogger", paramString1.toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.application.DefaultLogger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */