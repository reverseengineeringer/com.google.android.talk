package com.google.api.client.http;

import aal;
import irq;
import iry;
import isv;
import isw;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class UriTemplate
{
  private static final String COMPOSITE_NON_EXPLODE_JOINER = ",";
  static final Map<Character, UriTemplate.CompositeOutput> COMPOSITE_PREFIXES = new HashMap();
  
  static
  {
    UriTemplate.CompositeOutput.values();
  }
  
  public static String expand(String paramString, Object paramObject, boolean paramBoolean)
  {
    Map localMap = getMap(paramObject);
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int m = paramString.length();
    for (;;)
    {
      if (i < m)
      {
        j = paramString.indexOf('{', i);
        if (j == -1)
        {
          if ((i == 0) && (!paramBoolean)) {
            return paramString;
          }
          localStringBuilder.append(paramString.substring(i));
        }
      }
      else
      {
        if (paramBoolean) {
          GenericUrl.addQueryParams(localMap.entrySet(), localStringBuilder);
        }
        return localStringBuilder.toString();
      }
      localStringBuilder.append(paramString.substring(i, j));
      i = paramString.indexOf('}', j + 2);
      paramObject = paramString.substring(j + 1, i);
      i += 1;
      boolean bool = ((String)paramObject).endsWith("*");
      Object localObject = getCompositeOutput((String)paramObject);
      int n = ((UriTemplate.CompositeOutput)localObject).getVarNameStartIndex();
      int k = ((String)paramObject).length();
      int j = k;
      if (bool) {
        j = k - 1;
      }
      String str = ((String)paramObject).substring(n, j);
      paramObject = localMap.remove(str);
      if (paramObject != null)
      {
        if ((paramObject instanceof Iterator)) {
          paramObject = getListPropertyValue(str, (Iterator)paramObject, bool, (UriTemplate.CompositeOutput)localObject);
        }
        for (;;)
        {
          localStringBuilder.append(paramObject);
          break;
          if (((paramObject instanceof Iterable)) || (paramObject.getClass().isArray()))
          {
            paramObject = getListPropertyValue(str, aal.e(paramObject).iterator(), bool, (UriTemplate.CompositeOutput)localObject);
          }
          else if (paramObject.getClass().isEnum())
          {
            localObject = iry.a((Enum)paramObject).b();
            if (localObject != null) {
              paramObject = isv.b.a((String)localObject);
            }
          }
          else if (!irq.d(paramObject))
          {
            paramObject = getMapPropertyValue(str, getMap(paramObject), bool, (UriTemplate.CompositeOutput)localObject);
          }
          else if (((UriTemplate.CompositeOutput)localObject).getReservedExpansion())
          {
            paramObject = paramObject.toString();
            paramObject = isv.c.a((String)paramObject);
          }
          else
          {
            paramObject = paramObject.toString();
            paramObject = isv.b.a((String)paramObject);
          }
        }
      }
    }
  }
  
  public static String expand(String paramString1, String paramString2, Object paramObject, boolean paramBoolean)
  {
    if (paramString2.startsWith("/"))
    {
      paramString1 = new GenericUrl(paramString1);
      paramString1.setRawPath(null);
      paramString1 = String.valueOf(paramString1.build());
      paramString2 = String.valueOf(paramString2);
      if (paramString2.length() != 0) {}
      for (paramString1 = paramString1.concat(paramString2);; paramString1 = new String(paramString1)) {
        return expand(paramString1, paramObject, paramBoolean);
      }
    }
    String str = paramString2;
    if (!paramString2.startsWith("http://"))
    {
      if (!paramString2.startsWith("https://")) {
        break label98;
      }
      str = paramString2;
    }
    for (;;)
    {
      paramString1 = str;
      break;
      label98:
      paramString1 = String.valueOf(paramString1);
      paramString2 = String.valueOf(paramString2);
      if (paramString2.length() != 0) {
        str = paramString1.concat(paramString2);
      } else {
        str = new String(paramString1);
      }
    }
  }
  
  static UriTemplate.CompositeOutput getCompositeOutput(String paramString)
  {
    UriTemplate.CompositeOutput localCompositeOutput = (UriTemplate.CompositeOutput)COMPOSITE_PREFIXES.get(Character.valueOf(paramString.charAt(0)));
    paramString = localCompositeOutput;
    if (localCompositeOutput == null) {
      paramString = UriTemplate.CompositeOutput.SIMPLE;
    }
    return paramString;
  }
  
  private static String getListPropertyValue(String paramString, Iterator<?> paramIterator, boolean paramBoolean, UriTemplate.CompositeOutput paramCompositeOutput)
  {
    if (!paramIterator.hasNext()) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramCompositeOutput.getOutputPrefix());
    Object localObject;
    if (paramBoolean) {
      localObject = paramCompositeOutput.getExplodeJoiner();
    }
    while (paramIterator.hasNext())
    {
      if ((paramBoolean) && (paramCompositeOutput.requiresVarAssignment()))
      {
        localStringBuilder.append(isv.b.a(paramString));
        localStringBuilder.append("=");
      }
      localStringBuilder.append(paramCompositeOutput.getEncodedValue(paramIterator.next().toString()));
      if (paramIterator.hasNext())
      {
        localStringBuilder.append((String)localObject);
        continue;
        String str = ",";
        localObject = str;
        if (paramCompositeOutput.requiresVarAssignment())
        {
          localStringBuilder.append(isv.b.a(paramString));
          localStringBuilder.append("=");
          localObject = str;
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  private static Map<String, Object> getMap(Object paramObject)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    paramObject = irq.b(paramObject).entrySet().iterator();
    while (((Iterator)paramObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)paramObject).next();
      Object localObject = localEntry.getValue();
      if ((localObject != null) && (!irq.a(localObject))) {
        localLinkedHashMap.put(localEntry.getKey(), localObject);
      }
    }
    return localLinkedHashMap;
  }
  
  private static String getMapPropertyValue(String paramString, Map<String, Object> paramMap, boolean paramBoolean, UriTemplate.CompositeOutput paramCompositeOutput)
  {
    if (paramMap.isEmpty()) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramCompositeOutput.getOutputPrefix());
    String str1;
    if (paramBoolean)
    {
      str1 = paramCompositeOutput.getExplodeJoiner();
      paramString = "=";
    }
    for (;;)
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Object localObject = (Map.Entry)paramMap.next();
        String str2 = paramCompositeOutput.getEncodedValue((String)((Map.Entry)localObject).getKey());
        localObject = paramCompositeOutput.getEncodedValue(((Map.Entry)localObject).getValue().toString());
        localStringBuilder.append(str2);
        localStringBuilder.append(paramString);
        localStringBuilder.append((String)localObject);
        if (paramMap.hasNext()) {
          localStringBuilder.append(str1);
        }
      }
      if (paramCompositeOutput.requiresVarAssignment())
      {
        localStringBuilder.append(isv.b.a(paramString));
        localStringBuilder.append("=");
      }
      paramString = ",";
      str1 = ",";
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.UriTemplate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */