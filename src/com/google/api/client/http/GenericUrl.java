package com.google.api.client.http;

import com.google.api.client.util.GenericData;
import fii;
import isv;
import isw;
import isx;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public class GenericUrl
  extends GenericData
{
  private static final isw URI_FRAGMENT_ESCAPER = new isx("=&-_.!~*'()@:$,;/?:", false);
  private String fragment;
  private String host;
  private List<String> pathParts;
  private int port = -1;
  private String scheme;
  private String userInfo;
  
  public GenericUrl() {}
  
  public GenericUrl(String paramString)
  {
    this(parseURL(paramString));
  }
  
  private GenericUrl(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    scheme = paramString1.toLowerCase();
    host = paramString2;
    port = paramInt;
    pathParts = toPathParts(paramString3);
    if (paramString4 != null) {}
    for (paramString1 = isv.a(paramString4);; paramString1 = null)
    {
      fragment = paramString1;
      if (paramString5 != null) {
        UrlEncodedParser.parse(paramString5, this);
      }
      paramString1 = (String)localObject;
      if (paramString6 != null) {
        paramString1 = isv.a(paramString6);
      }
      userInfo = paramString1;
      return;
    }
  }
  
  public GenericUrl(URI paramURI)
  {
    this(paramURI.getScheme(), paramURI.getHost(), paramURI.getPort(), paramURI.getRawPath(), paramURI.getRawFragment(), paramURI.getRawQuery(), paramURI.getRawUserInfo());
  }
  
  public GenericUrl(URL paramURL)
  {
    this(paramURL.getProtocol(), paramURL.getHost(), paramURL.getPort(), paramURL.getPath(), paramURL.getRef(), paramURL.getQuery(), paramURL.getUserInfo());
  }
  
  static void addQueryParams(Set<Map.Entry<String, Object>> paramSet, StringBuilder paramStringBuilder)
  {
    paramSet = paramSet.iterator();
    boolean bool = true;
    while (paramSet.hasNext())
    {
      Object localObject2 = (Map.Entry)paramSet.next();
      Object localObject1 = ((Map.Entry)localObject2).getValue();
      if (localObject1 == null) {
        break label122;
      }
      localObject2 = (String)((Map.Entry)localObject2).getKey();
      localObject2 = isv.e.a((String)localObject2);
      if ((localObject1 instanceof Collection))
      {
        localObject1 = ((Collection)localObject1).iterator();
        while (((Iterator)localObject1).hasNext()) {
          bool = appendParam(bool, paramStringBuilder, (String)localObject2, ((Iterator)localObject1).next());
        }
      }
      else
      {
        bool = appendParam(bool, paramStringBuilder, (String)localObject2, localObject1);
      }
    }
    label122:
    for (;;)
    {
      break;
      return;
    }
  }
  
  private static boolean appendParam(boolean paramBoolean, StringBuilder paramStringBuilder, String paramString, Object paramObject)
  {
    if (paramBoolean)
    {
      paramBoolean = false;
      paramStringBuilder.append('?');
    }
    for (;;)
    {
      paramStringBuilder.append(paramString);
      paramString = paramObject.toString();
      paramString = isv.e.a(paramString);
      if (paramString.length() != 0) {
        paramStringBuilder.append('=').append(paramString);
      }
      return paramBoolean;
      paramStringBuilder.append('&');
    }
  }
  
  private void appendRawPathFromParts(StringBuilder paramStringBuilder)
  {
    int j = pathParts.size();
    int i = 0;
    while (i < j)
    {
      String str = (String)pathParts.get(i);
      if (i != 0) {
        paramStringBuilder.append('/');
      }
      if (str.length() != 0) {
        paramStringBuilder.append(isv.b.a(str));
      }
      i += 1;
    }
  }
  
  private static URL parseURL(String paramString)
  {
    try
    {
      paramString = new URL(paramString);
      return paramString;
    }
    catch (MalformedURLException paramString)
    {
      throw new IllegalArgumentException(paramString);
    }
  }
  
  public static List<String> toPathParts(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int i = 1;
    int j = 0;
    if (i != 0)
    {
      int k = paramString.indexOf('/', j);
      if (k != -1)
      {
        i = 1;
        label45:
        if (i == 0) {
          break label82;
        }
      }
      label82:
      for (String str = paramString.substring(j, k);; str = paramString.substring(j))
      {
        localArrayList.add(isv.a(str));
        j = k + 1;
        break;
        i = 0;
        break label45;
      }
    }
    return localArrayList;
  }
  
  private static URI toURI(String paramString)
  {
    try
    {
      paramString = new URI(paramString);
      return paramString;
    }
    catch (URISyntaxException paramString)
    {
      throw new IllegalArgumentException(paramString);
    }
  }
  
  public void appendRawPath(String paramString)
  {
    List localList1;
    if ((paramString != null) && (paramString.length() != 0))
    {
      localList1 = toPathParts(paramString);
      if ((pathParts == null) || (pathParts.isEmpty())) {
        pathParts = localList1;
      }
    }
    else
    {
      return;
    }
    int i = pathParts.size();
    List localList2 = pathParts;
    paramString = String.valueOf((String)pathParts.get(i - 1));
    String str = String.valueOf((String)localList1.get(0));
    if (str.length() != 0) {}
    for (paramString = paramString.concat(str);; paramString = new String(paramString))
    {
      localList2.set(i - 1, paramString);
      pathParts.addAll(localList1.subList(1, localList1.size()));
      return;
    }
  }
  
  public final String build()
  {
    String str1 = String.valueOf(buildAuthority());
    String str2 = String.valueOf(buildRelativeUrl());
    if (str2.length() != 0) {
      return str1.concat(str2);
    }
    return new String(str1);
  }
  
  public final String buildAuthority()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append((String)fii.a(scheme));
    localStringBuilder.append("://");
    if (userInfo != null)
    {
      String str = userInfo;
      localStringBuilder.append(isv.d.a(str)).append('@');
    }
    localStringBuilder.append((String)fii.a(host));
    int i = port;
    if (i != -1) {
      localStringBuilder.append(':').append(i);
    }
    return localStringBuilder.toString();
  }
  
  public final String buildRelativeUrl()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (pathParts != null) {
      appendRawPathFromParts(localStringBuilder);
    }
    addQueryParams(entrySet(), localStringBuilder);
    String str = fragment;
    if (str != null) {
      localStringBuilder.append('#').append(URI_FRAGMENT_ESCAPER.a(str));
    }
    return localStringBuilder.toString();
  }
  
  public GenericUrl clone()
  {
    GenericUrl localGenericUrl = (GenericUrl)super.clone();
    if (pathParts != null) {
      pathParts = new ArrayList(pathParts);
    }
    return localGenericUrl;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((!super.equals(paramObject)) || (!(paramObject instanceof GenericUrl))) {
      return false;
    }
    paramObject = (GenericUrl)paramObject;
    return build().equals(((GenericUrl)paramObject).toString());
  }
  
  public Collection<Object> getAll(String paramString)
  {
    paramString = get(paramString);
    if (paramString == null) {
      return Collections.emptySet();
    }
    if ((paramString instanceof Collection)) {
      return Collections.unmodifiableCollection((Collection)paramString);
    }
    return Collections.singleton(paramString);
  }
  
  public Object getFirst(String paramString)
  {
    Object localObject = get(paramString);
    paramString = (String)localObject;
    if ((localObject instanceof Collection))
    {
      paramString = ((Collection)localObject).iterator();
      if (paramString.hasNext()) {
        paramString = paramString.next();
      }
    }
    else
    {
      return paramString;
    }
    return null;
  }
  
  public String getFragment()
  {
    return fragment;
  }
  
  public String getHost()
  {
    return host;
  }
  
  public List<String> getPathParts()
  {
    return pathParts;
  }
  
  public int getPort()
  {
    return port;
  }
  
  public String getRawPath()
  {
    if (pathParts == null) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    appendRawPathFromParts(localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public final String getScheme()
  {
    return scheme;
  }
  
  public final String getUserInfo()
  {
    return userInfo;
  }
  
  public int hashCode()
  {
    return build().hashCode();
  }
  
  public GenericUrl set(String paramString, Object paramObject)
  {
    return (GenericUrl)super.set(paramString, paramObject);
  }
  
  public final void setFragment(String paramString)
  {
    fragment = paramString;
  }
  
  public final void setHost(String paramString)
  {
    host = ((String)fii.a(paramString));
  }
  
  public void setPathParts(List<String> paramList)
  {
    pathParts = paramList;
  }
  
  public final void setPort(int paramInt)
  {
    if (paramInt >= -1) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool, "expected port >= -1");
      port = paramInt;
      return;
    }
  }
  
  public void setRawPath(String paramString)
  {
    pathParts = toPathParts(paramString);
  }
  
  public final void setScheme(String paramString)
  {
    scheme = ((String)fii.a(paramString));
  }
  
  public final void setUserInfo(String paramString)
  {
    userInfo = paramString;
  }
  
  public String toString()
  {
    return build();
  }
  
  public final URI toURI()
  {
    return toURI(build());
  }
  
  public final URL toURL()
  {
    return parseURL(build());
  }
  
  public final URL toURL(String paramString)
  {
    try
    {
      paramString = new URL(toURL(), paramString);
      return paramString;
    }
    catch (MalformedURLException paramString)
    {
      throw new IllegalArgumentException(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.GenericUrl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */