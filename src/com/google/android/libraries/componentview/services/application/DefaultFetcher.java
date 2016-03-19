package com.google.android.libraries.componentview.services.application;

import aal;
import android.content.Context;
import android.content.res.AssetManager;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import kyz;
import lau;
import lbb;
import lbd;

public class DefaultFetcher
  implements Fetcher
{
  private static final Charset a = Charset.forName("ISO-8859-1");
  private final lbd b;
  private Context c;
  
  public DefaultFetcher(Context paramContext, ExecutorService paramExecutorService)
  {
    c = paramContext;
    b = aal.a(paramExecutorService);
  }
  
  public Context a()
  {
    return c;
  }
  
  Fetcher.Response a(URI paramURI, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    Charset localCharset = null;
    Object localObject1;
    label202:
    label431:
    label453:
    label460:
    for (;;)
    {
      Fetcher.Response localResponse;
      try
      {
        localResponse = new Fetcher.Response();
        if (paramURI == null)
        {
          localObject1 = null;
          if (!((String)localObject1).startsWith("file:///android_asset/")) {
            break label202;
          }
          paramURI = ((String)localObject1).substring(22);
          paramArrayOfByte = a().getAssets().open(paramURI);
          paramURI = localCharset;
        }
      }
      finally
      {
        paramArrayOfByte = null;
        if (paramArrayOfByte != null) {
          paramArrayOfByte.close();
        }
      }
      try
      {
        localObject1 = kyz.a(paramArrayOfByte);
        b = ((byte[])localObject1);
        a = paramURI;
        if (localObject1 == null) {
          break label431;
        }
        paramBoolean = true;
        c = paramBoolean;
        if (paramArrayOfByte != null) {
          paramArrayOfByte.close();
        }
        return localResponse;
      }
      finally
      {
        for (;;)
        {
          break;
          localObject1 = null;
          int i = 0;
          continue;
          localObject1 = "";
        }
      }
      Object localObject2 = paramURI.toString();
      localObject1 = localObject2;
      if (((String)localObject2).startsWith("file:/"))
      {
        localObject1 = localObject2;
        if (!((String)localObject2).startsWith("file://"))
        {
          localObject1 = localObject2;
          if (!((String)localObject2).startsWith("file:///"))
          {
            localObject1 = String.valueOf(((String)localObject2).substring(6));
            if (((String)localObject1).length() != 0)
            {
              localObject1 = "file:///".concat((String)localObject1);
            }
            else
            {
              localObject1 = new String("file:///");
              continue;
              localObject2 = a(paramURI);
              ((URLConnection)localObject2).setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 5.0; Nexus 5 Build/LRX21N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile Safari/537.36 GSA/4.1.3.1531624.arm,gzip(gfe)");
              if ((localObject2 instanceof HttpURLConnection))
              {
                localObject1 = (HttpURLConnection)localObject2;
                ((HttpURLConnection)localObject2).setInstanceFollowRedirects(paramBoolean);
                i = 1;
                if (paramArrayOfByte != null)
                {
                  ((URLConnection)localObject2).setDoOutput(true);
                  ((URLConnection)localObject2).getOutputStream().write(paramArrayOfByte);
                }
                paramArrayOfByte = ((URLConnection)localObject2).getInputStream();
                try
                {
                  localCharset = a;
                  String str = ((URLConnection)localObject2).getContentType();
                  paramURI = localCharset;
                  if (str != null)
                  {
                    int j = str.indexOf("charset=");
                    paramURI = localCharset;
                    if (j != -1) {
                      paramURI = Charset.forName(str.substring(j + 8).trim());
                    }
                  }
                  if (i == 0) {
                    break label460;
                  }
                  d = ((HttpURLConnection)localObject2).getResponseCode();
                  e = ((HttpURLConnection)localObject1).getHeaderFields();
                  localObject1 = e;
                  if (!((Map)localObject1).containsKey("Location")) {
                    break label453;
                  }
                  if (((List)((Map)localObject1).get("Location")).size() <= 0) {
                    break label453;
                  }
                  for (;;)
                  {
                    f = ((String)localObject1);
                    break;
                    localObject1 = (String)((List)((Map)localObject1).get("Location")).get(0);
                  }
                  paramBoolean = false;
                  continue;
                }
                finally {}
                continue;
              }
            }
          }
        }
      }
    }
  }
  
  protected URLConnection a(URI paramURI)
  {
    return paramURI.toURL().openConnection();
  }
  
  public lbb<Fetcher.Response> a()
  {
    URI localURI;
    boolean bool;
    return lau.a(b.a(new DefaultFetcher.1(this, localURI, null, bool)), Throwable.class, new DefaultFetcher.2(this), b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.application.DefaultFetcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */