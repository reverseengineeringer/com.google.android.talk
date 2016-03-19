package com.google.api.client.http;

import fii;
import isq;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

public class MultipartContent
  extends AbstractHttpContent
{
  static final String NEWLINE = "\r\n";
  private static final String TWO_DASHES = "--";
  private ArrayList<MultipartContent.Part> parts = new ArrayList();
  
  public MultipartContent()
  {
    super(new HttpMediaType("multipart/related").setParameter("boundary", "__END_OF_PART__"));
  }
  
  public MultipartContent addPart(MultipartContent.Part paramPart)
  {
    parts.add(fii.a(paramPart));
    return this;
  }
  
  public final String getBoundary()
  {
    return getMediaType().getParameter("boundary");
  }
  
  public final Collection<MultipartContent.Part> getParts()
  {
    return Collections.unmodifiableCollection(parts);
  }
  
  public boolean retrySupported()
  {
    Iterator localIterator = parts.iterator();
    while (localIterator.hasNext()) {
      if (!nextcontent.retrySupported()) {
        return false;
      }
    }
    return true;
  }
  
  public MultipartContent setBoundary(String paramString)
  {
    getMediaType().setParameter("boundary", (String)fii.a(paramString));
    return this;
  }
  
  public MultipartContent setContentParts(Collection<? extends HttpContent> paramCollection)
  {
    parts = new ArrayList(paramCollection.size());
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      addPart(new MultipartContent.Part((HttpContent)paramCollection.next()));
    }
    return this;
  }
  
  public MultipartContent setMediaType(HttpMediaType paramHttpMediaType)
  {
    super.setMediaType(paramHttpMediaType);
    return this;
  }
  
  public MultipartContent setParts(Collection<MultipartContent.Part> paramCollection)
  {
    parts = new ArrayList(paramCollection);
    return this;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(paramOutputStream, getCharset());
    String str = getBoundary();
    Iterator localIterator = parts.iterator();
    HttpHeaders localHttpHeaders;
    Object localObject1;
    long l;
    if (localIterator.hasNext())
    {
      localObject2 = (MultipartContent.Part)localIterator.next();
      localHttpHeaders = new HttpHeaders().setAcceptEncoding(null);
      if (headers != null) {
        localHttpHeaders.fromHttpHeaders(headers);
      }
      localHttpHeaders.setContentEncoding(null).setUserAgent(null).setContentType(null).setContentLength(null).set("Content-Transfer-Encoding", null);
      localObject1 = content;
      if (localObject1 == null) {
        break label336;
      }
      localHttpHeaders.set("Content-Transfer-Encoding", Arrays.asList(new String[] { "binary" }));
      localHttpHeaders.setContentType(((HttpContent)localObject1).getType());
      localObject2 = encoding;
      if (localObject2 == null)
      {
        l = ((HttpContent)localObject1).getLength();
        label172:
        localObject2 = localObject1;
        if (l != -1L) {
          localHttpHeaders.setContentLength(Long.valueOf(l));
        }
      }
    }
    label336:
    for (Object localObject2 = localObject1;; localObject2 = null)
    {
      localOutputStreamWriter.write("--");
      localOutputStreamWriter.write(str);
      localOutputStreamWriter.write("\r\n");
      HttpHeaders.serializeHeadersForMultipartRequests(localHttpHeaders, null, null, localOutputStreamWriter);
      if (localObject2 != null)
      {
        localOutputStreamWriter.write("\r\n");
        localOutputStreamWriter.flush();
        ((isq)localObject2).writeTo(paramOutputStream);
      }
      localOutputStreamWriter.write("\r\n");
      break;
      localHttpHeaders.setContentEncoding(((HttpEncoding)localObject2).getName());
      localObject2 = new HttpEncodingStreamingContent((isq)localObject1, (HttpEncoding)localObject2);
      l = AbstractHttpContent.computeLength((HttpContent)localObject1);
      localObject1 = localObject2;
      break label172;
      localOutputStreamWriter.write("--");
      localOutputStreamWriter.write(str);
      localOutputStreamWriter.write("--");
      localOutputStreamWriter.write("\r\n");
      localOutputStreamWriter.flush();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.MultipartContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */