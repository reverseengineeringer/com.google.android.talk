package com.google.api.client.http;

import aal;
import com.google.api.client.util.GenericData;
import fii;
import iqx;
import ire;
import irm;
import irq;
import iry;
import isb;
import isd;
import isr;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import koh;

public class HttpHeaders
  extends GenericData
{
  @isd(a="Accept")
  private List<String> accept;
  @isd(a="Accept-Encoding")
  private List<String> acceptEncoding = new ArrayList(Collections.singleton("gzip"));
  @isd(a="Age")
  private List<Long> age;
  @isd(a="WWW-Authenticate")
  private List<String> authenticate;
  @isd(a="Authorization")
  private List<String> authorization;
  @isd(a="Cache-Control")
  private List<String> cacheControl;
  @isd(a="Content-Encoding")
  private List<String> contentEncoding;
  @isd(a="Content-Length")
  private List<Long> contentLength;
  @isd(a="Content-MD5")
  private List<String> contentMD5;
  @isd(a="Content-Range")
  private List<String> contentRange;
  @isd(a="Content-Type")
  private List<String> contentType;
  @isd(a="Cookie")
  private List<String> cookie;
  @isd(a="Date")
  private List<String> date;
  @isd(a="ETag")
  private List<String> etag;
  @isd(a="Expires")
  private List<String> expires;
  @isd(a="If-Match")
  private List<String> ifMatch;
  @isd(a="If-Modified-Since")
  private List<String> ifModifiedSince;
  @isd(a="If-None-Match")
  private List<String> ifNoneMatch;
  @isd(a="If-Range")
  private List<String> ifRange;
  @isd(a="If-Unmodified-Since")
  private List<String> ifUnmodifiedSince;
  @isd(a="Last-Modified")
  private List<String> lastModified;
  @isd(a="Location")
  private List<String> location;
  @isd(a="MIME-Version")
  private List<String> mimeVersion;
  @isd(a="Range")
  private List<String> range;
  @isd(a="Retry-After")
  private List<String> retryAfter;
  @isd(a="User-Agent")
  private List<String> userAgent;
  
  public HttpHeaders()
  {
    super(EnumSet.of(isb.a));
  }
  
  private static void addHeader(Logger paramLogger, StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, LowLevelHttpRequest paramLowLevelHttpRequest, String paramString, Object paramObject, Writer paramWriter)
  {
    if ((paramObject == null) || (irq.a(paramObject))) {
      return;
    }
    paramObject = toStringValue(paramObject);
    if ((("Authorization".equalsIgnoreCase(paramString)) || ("Cookie".equalsIgnoreCase(paramString))) && ((paramLogger == null) || (!paramLogger.isLoggable(Level.ALL)))) {}
    for (paramLogger = "<Not Logged>";; paramLogger = (Logger)paramObject)
    {
      if (paramStringBuilder1 != null)
      {
        paramStringBuilder1.append(paramString).append(": ");
        paramStringBuilder1.append(paramLogger);
        paramStringBuilder1.append(isr.a);
      }
      if (paramStringBuilder2 != null) {
        paramStringBuilder2.append(" -H '").append(paramString).append(": ").append(paramLogger).append("'");
      }
      if (paramLowLevelHttpRequest != null) {
        paramLowLevelHttpRequest.addHeader(paramString, (String)paramObject);
      }
      if (paramWriter == null) {
        break;
      }
      paramWriter.write(paramString);
      paramWriter.write(": ");
      paramWriter.write((String)paramObject);
      paramWriter.write("\r\n");
      return;
    }
  }
  
  private <T> List<T> getAsList(T paramT)
  {
    if (paramT == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramT);
    return localArrayList;
  }
  
  private <T> T getFirstHeaderValue(List<T> paramList)
  {
    if (paramList == null) {
      return null;
    }
    return (T)paramList.get(0);
  }
  
  private static Object parseValue(Type paramType, List<Type> paramList, String paramString)
  {
    return irq.a(irq.a(paramList, paramType), paramString);
  }
  
  static void serializeHeaders(HttpHeaders paramHttpHeaders, StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, Logger paramLogger, LowLevelHttpRequest paramLowLevelHttpRequest)
  {
    serializeHeaders(paramHttpHeaders, paramStringBuilder1, paramStringBuilder2, paramLogger, paramLowLevelHttpRequest, null);
  }
  
  static void serializeHeaders(HttpHeaders paramHttpHeaders, StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, Logger paramLogger, LowLevelHttpRequest paramLowLevelHttpRequest, Writer paramWriter)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = paramHttpHeaders.entrySet().iterator();
    Object localObject1;
    String str;
    Object localObject2;
    while (localIterator.hasNext())
    {
      localObject1 = (Map.Entry)localIterator.next();
      str = (String)((Map.Entry)localObject1).getKey();
      fii.a(localHashSet.add(str), "multiple headers of the same name (headers are case insensitive): %s", new Object[] { str });
      localObject1 = ((Map.Entry)localObject1).getValue();
      if (localObject1 != null)
      {
        localObject2 = paramHttpHeaders.getClassInfo().a(str);
        if (localObject2 == null) {
          break label207;
        }
        str = ((iry)localObject2).b();
      }
    }
    label207:
    for (;;)
    {
      localObject2 = localObject1.getClass();
      if (((localObject1 instanceof Iterable)) || (((Class)localObject2).isArray()))
      {
        localObject1 = aal.e(localObject1).iterator();
        while (((Iterator)localObject1).hasNext()) {
          addHeader(paramLogger, paramStringBuilder1, paramStringBuilder2, paramLowLevelHttpRequest, str, ((Iterator)localObject1).next(), paramWriter);
        }
        break;
      }
      addHeader(paramLogger, paramStringBuilder1, paramStringBuilder2, paramLowLevelHttpRequest, str, localObject1, paramWriter);
      break;
      if (paramWriter != null) {
        paramWriter.flush();
      }
      return;
    }
  }
  
  public static void serializeHeadersForMultipartRequests(HttpHeaders paramHttpHeaders, StringBuilder paramStringBuilder, Logger paramLogger, Writer paramWriter)
  {
    serializeHeaders(paramHttpHeaders, paramStringBuilder, null, paramLogger, null, paramWriter);
  }
  
  private static String toStringValue(Object paramObject)
  {
    if ((paramObject instanceof Enum)) {
      return iry.a((Enum)paramObject).b();
    }
    return paramObject.toString();
  }
  
  public HttpHeaders clone()
  {
    return (HttpHeaders)super.clone();
  }
  
  public final void fromHttpHeaders(HttpHeaders paramHttpHeaders)
  {
    try
    {
      HttpHeaders.ParseHeaderState localParseHeaderState = new HttpHeaders.ParseHeaderState(this, null);
      serializeHeaders(paramHttpHeaders, null, null, null, new HttpHeaders.HeaderParsingFakeLevelHttpRequest(this, localParseHeaderState));
      localParseHeaderState.finish();
      return;
    }
    catch (IOException paramHttpHeaders)
    {
      throw koh.a(paramHttpHeaders);
    }
  }
  
  public final void fromHttpResponse(LowLevelHttpResponse paramLowLevelHttpResponse, StringBuilder paramStringBuilder)
  {
    clear();
    paramStringBuilder = new HttpHeaders.ParseHeaderState(this, paramStringBuilder);
    int j = paramLowLevelHttpResponse.getHeaderCount();
    int i = 0;
    while (i < j)
    {
      parseHeader(paramLowLevelHttpResponse.getHeaderName(i), paramLowLevelHttpResponse.getHeaderValue(i), paramStringBuilder);
      i += 1;
    }
    paramStringBuilder.finish();
  }
  
  public final String getAccept()
  {
    return (String)getFirstHeaderValue(accept);
  }
  
  public final String getAcceptEncoding()
  {
    return (String)getFirstHeaderValue(acceptEncoding);
  }
  
  public final Long getAge()
  {
    return (Long)getFirstHeaderValue(age);
  }
  
  public final String getAuthenticate()
  {
    return (String)getFirstHeaderValue(authenticate);
  }
  
  public final List<String> getAuthenticateAsList()
  {
    return authenticate;
  }
  
  public final String getAuthorization()
  {
    return (String)getFirstHeaderValue(authorization);
  }
  
  public final List<String> getAuthorizationAsList()
  {
    return authorization;
  }
  
  public final String getCacheControl()
  {
    return (String)getFirstHeaderValue(cacheControl);
  }
  
  public final String getContentEncoding()
  {
    return (String)getFirstHeaderValue(contentEncoding);
  }
  
  public final Long getContentLength()
  {
    return (Long)getFirstHeaderValue(contentLength);
  }
  
  public final String getContentMD5()
  {
    return (String)getFirstHeaderValue(contentMD5);
  }
  
  public final String getContentRange()
  {
    return (String)getFirstHeaderValue(contentRange);
  }
  
  public final String getContentType()
  {
    return (String)getFirstHeaderValue(contentType);
  }
  
  public final String getCookie()
  {
    return (String)getFirstHeaderValue(cookie);
  }
  
  public final String getDate()
  {
    return (String)getFirstHeaderValue(date);
  }
  
  public final String getETag()
  {
    return (String)getFirstHeaderValue(etag);
  }
  
  public final String getExpires()
  {
    return (String)getFirstHeaderValue(expires);
  }
  
  public String getFirstHeaderStringValue(String paramString)
  {
    paramString = get(paramString.toLowerCase());
    if (paramString == null) {
      return null;
    }
    Object localObject = paramString.getClass();
    if (((paramString instanceof Iterable)) || (((Class)localObject).isArray()))
    {
      localObject = aal.e(paramString).iterator();
      if (((Iterator)localObject).hasNext()) {
        return toStringValue(((Iterator)localObject).next());
      }
    }
    return toStringValue(paramString);
  }
  
  public List<String> getHeaderStringValues(String paramString)
  {
    paramString = get(paramString.toLowerCase());
    if (paramString == null) {
      return Collections.emptyList();
    }
    Object localObject = paramString.getClass();
    if (((paramString instanceof Iterable)) || (((Class)localObject).isArray()))
    {
      localObject = new ArrayList();
      paramString = aal.e(paramString).iterator();
      while (paramString.hasNext()) {
        ((List)localObject).add(toStringValue(paramString.next()));
      }
      return Collections.unmodifiableList((List)localObject);
    }
    return Collections.singletonList(toStringValue(paramString));
  }
  
  public final String getIfMatch()
  {
    return (String)getFirstHeaderValue(ifMatch);
  }
  
  public final String getIfModifiedSince()
  {
    return (String)getFirstHeaderValue(ifModifiedSince);
  }
  
  public final String getIfNoneMatch()
  {
    return (String)getFirstHeaderValue(ifNoneMatch);
  }
  
  public final String getIfRange()
  {
    return (String)getFirstHeaderValue(ifRange);
  }
  
  public final String getIfUnmodifiedSince()
  {
    return (String)getFirstHeaderValue(ifUnmodifiedSince);
  }
  
  public final String getLastModified()
  {
    return (String)getFirstHeaderValue(lastModified);
  }
  
  public final String getLocation()
  {
    return (String)getFirstHeaderValue(location);
  }
  
  public final String getMimeVersion()
  {
    return (String)getFirstHeaderValue(mimeVersion);
  }
  
  public final String getRange()
  {
    return (String)getFirstHeaderValue(range);
  }
  
  public final String getRetryAfter()
  {
    return (String)getFirstHeaderValue(retryAfter);
  }
  
  public final String getUserAgent()
  {
    return (String)getFirstHeaderValue(userAgent);
  }
  
  void parseHeader(String paramString1, String paramString2, HttpHeaders.ParseHeaderState paramParseHeaderState)
  {
    Object localObject1 = context;
    Object localObject2 = classInfo;
    ire localire = arrayValueMap;
    paramParseHeaderState = logger;
    if (paramParseHeaderState != null) {
      paramParseHeaderState.append(String.valueOf(paramString1).length() + 2 + String.valueOf(paramString2).length() + paramString1 + ": " + paramString2).append(isr.a);
    }
    localObject2 = ((irm)localObject2).a(paramString1);
    if (localObject2 != null)
    {
      Type localType = irq.a((List)localObject1, ((iry)localObject2).c());
      if (aal.a(localType))
      {
        paramString1 = aal.a((List)localObject1, aal.b(localType));
        localire.a(((iry)localObject2).a(), paramString1, parseValue(paramString1, (List)localObject1, paramString2));
        return;
      }
      if (aal.a(aal.a((List)localObject1, localType), Iterable.class))
      {
        paramParseHeaderState = (Collection)((iry)localObject2).a(this);
        paramString1 = paramParseHeaderState;
        if (paramParseHeaderState == null)
        {
          paramString1 = irq.b(localType);
          ((iry)localObject2).a(this, paramString1);
        }
        if (localType == Object.class) {}
        for (paramParseHeaderState = null;; paramParseHeaderState = aal.c(localType))
        {
          paramString1.add(parseValue(paramParseHeaderState, (List)localObject1, paramString2));
          return;
        }
      }
      ((iry)localObject2).a(this, parseValue(localType, (List)localObject1, paramString2));
      return;
    }
    localObject1 = (ArrayList)get(paramString1);
    paramParseHeaderState = (HttpHeaders.ParseHeaderState)localObject1;
    if (localObject1 == null)
    {
      paramParseHeaderState = new ArrayList();
      set(paramString1, paramParseHeaderState);
    }
    paramParseHeaderState.add(paramString2);
  }
  
  public HttpHeaders set(String paramString, Object paramObject)
  {
    return (HttpHeaders)super.set(paramString, paramObject);
  }
  
  public HttpHeaders setAccept(String paramString)
  {
    accept = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setAcceptEncoding(String paramString)
  {
    acceptEncoding = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setAge(Long paramLong)
  {
    age = getAsList(paramLong);
    return this;
  }
  
  public HttpHeaders setAuthenticate(String paramString)
  {
    authenticate = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setAuthorization(String paramString)
  {
    return setAuthorization(getAsList(paramString));
  }
  
  public HttpHeaders setAuthorization(List<String> paramList)
  {
    authorization = paramList;
    return this;
  }
  
  public HttpHeaders setBasicAuthentication(String paramString1, String paramString2)
  {
    paramString1 = (String)fii.a(paramString1);
    paramString2 = (String)fii.a(paramString2);
    paramString1 = String.valueOf(iqx.a(isr.a(String.valueOf(paramString1).length() + 1 + String.valueOf(paramString2).length() + paramString1 + ":" + paramString2)));
    if (paramString1.length() != 0) {}
    for (paramString1 = "Basic ".concat(paramString1);; paramString1 = new String("Basic ")) {
      return setAuthorization(paramString1);
    }
  }
  
  public HttpHeaders setCacheControl(String paramString)
  {
    cacheControl = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setContentEncoding(String paramString)
  {
    contentEncoding = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setContentLength(Long paramLong)
  {
    contentLength = getAsList(paramLong);
    return this;
  }
  
  public HttpHeaders setContentMD5(String paramString)
  {
    contentMD5 = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setContentRange(String paramString)
  {
    contentRange = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setContentType(String paramString)
  {
    contentType = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setCookie(String paramString)
  {
    cookie = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setDate(String paramString)
  {
    date = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setETag(String paramString)
  {
    etag = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setExpires(String paramString)
  {
    expires = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setIfMatch(String paramString)
  {
    ifMatch = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setIfModifiedSince(String paramString)
  {
    ifModifiedSince = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setIfNoneMatch(String paramString)
  {
    ifNoneMatch = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setIfRange(String paramString)
  {
    ifRange = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setIfUnmodifiedSince(String paramString)
  {
    ifUnmodifiedSince = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setLastModified(String paramString)
  {
    lastModified = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setLocation(String paramString)
  {
    location = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setMimeVersion(String paramString)
  {
    mimeVersion = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setRange(String paramString)
  {
    range = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setRetryAfter(String paramString)
  {
    retryAfter = getAsList(paramString);
    return this;
  }
  
  public HttpHeaders setUserAgent(String paramString)
  {
    userAgent = getAsList(paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpHeaders
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */