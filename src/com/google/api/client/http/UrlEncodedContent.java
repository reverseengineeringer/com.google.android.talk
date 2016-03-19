package com.google.api.client.http;

import aal;
import fii;
import irq;
import iry;
import isv;
import isw;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class UrlEncodedContent
  extends AbstractHttpContent
{
  private Object data;
  
  public UrlEncodedContent(Object paramObject)
  {
    super(UrlEncodedParser.MEDIA_TYPE);
    setData(paramObject);
  }
  
  private static boolean appendParam(boolean paramBoolean, Writer paramWriter, String paramString, Object paramObject)
  {
    boolean bool = paramBoolean;
    if (paramObject != null)
    {
      if (irq.a(paramObject)) {
        bool = paramBoolean;
      }
    }
    else {
      return bool;
    }
    if (paramBoolean)
    {
      paramBoolean = false;
      label26:
      paramWriter.write(paramString);
      if (!(paramObject instanceof Enum)) {
        break label89;
      }
    }
    label89:
    for (paramString = iry.a((Enum)paramObject).b();; paramString = paramObject.toString())
    {
      paramString = isv.a.a(paramString);
      bool = paramBoolean;
      if (paramString.length() == 0) {
        break;
      }
      paramWriter.write("=");
      paramWriter.write(paramString);
      return paramBoolean;
      paramWriter.write("&");
      break label26;
    }
  }
  
  public static UrlEncodedContent getContent(HttpRequest paramHttpRequest)
  {
    Object localObject = paramHttpRequest.getContent();
    if (localObject != null) {
      return (UrlEncodedContent)localObject;
    }
    localObject = new UrlEncodedContent(new HashMap());
    paramHttpRequest.setContent((HttpContent)localObject);
    return (UrlEncodedContent)localObject;
  }
  
  public final Object getData()
  {
    return data;
  }
  
  public UrlEncodedContent setData(Object paramObject)
  {
    data = fii.a(paramObject);
    return this;
  }
  
  public UrlEncodedContent setMediaType(HttpMediaType paramHttpMediaType)
  {
    super.setMediaType(paramHttpMediaType);
    return this;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream = new BufferedWriter(new OutputStreamWriter(paramOutputStream, getCharset()));
    Iterator localIterator = irq.b(data).entrySet().iterator();
    boolean bool = true;
    while (localIterator.hasNext())
    {
      Object localObject2 = (Map.Entry)localIterator.next();
      Object localObject1 = ((Map.Entry)localObject2).getValue();
      if (localObject1 == null) {
        break label180;
      }
      localObject2 = (String)((Map.Entry)localObject2).getKey();
      localObject2 = isv.a.a((String)localObject2);
      Class localClass = localObject1.getClass();
      if (((localObject1 instanceof Iterable)) || (localClass.isArray()))
      {
        localObject1 = aal.e(localObject1).iterator();
        while (((Iterator)localObject1).hasNext()) {
          bool = appendParam(bool, paramOutputStream, (String)localObject2, ((Iterator)localObject1).next());
        }
      }
      else
      {
        bool = appendParam(bool, paramOutputStream, (String)localObject2, localObject1);
      }
    }
    label180:
    for (;;)
    {
      break;
      paramOutputStream.flush();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.UrlEncodedContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */