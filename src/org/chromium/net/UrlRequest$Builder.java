package org.chromium.net;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.Executor;

public final class UrlRequest$Builder
{
  final CronetEngine a;
  final String b;
  final UrlRequest.Callback c;
  final Executor d;
  String e;
  final ArrayList<Pair<String, String>> f = new ArrayList();
  boolean g;
  int h = 3;
  Collection<Object> i = Collections.emptyList();
  UploadDataProvider j;
  Executor k;
  
  public UrlRequest$Builder(String paramString, UrlRequest.Callback paramCallback, Executor paramExecutor, CronetEngine paramCronetEngine)
  {
    if (paramString == null) {
      throw new NullPointerException("URL is required.");
    }
    if (paramCronetEngine == null) {
      throw new NullPointerException("CronetEngine is required.");
    }
    b = paramString;
    c = paramCallback;
    d = paramExecutor;
    a = paramCronetEngine;
  }
  
  public Builder a(int paramInt)
  {
    h = paramInt;
    return this;
  }
  
  public Builder a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Invalid header name.");
    }
    if (paramString2 == null) {
      throw new NullPointerException("Invalid header value.");
    }
    f.add(Pair.create(paramString1, paramString2));
    return this;
  }
  
  public Builder a(UploadDataProvider paramUploadDataProvider, Executor paramExecutor)
  {
    if (e == null) {
      e = "POST";
    }
    j = paramUploadDataProvider;
    k = paramExecutor;
    return this;
  }
  
  public UrlRequest a()
  {
    UrlRequest localUrlRequest = a.a(b, c, d, h, i);
    if (e != null) {
      localUrlRequest.a(e);
    }
    if (g) {
      localUrlRequest.d();
    }
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      localUrlRequest.a((String)first, (String)second);
    }
    if (j != null) {
      localUrlRequest.a(j, k);
    }
    return localUrlRequest;
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.UrlRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */