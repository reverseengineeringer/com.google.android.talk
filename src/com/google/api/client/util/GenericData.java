package com.google.api.client.util;

import ira;
import irm;
import irq;
import iry;
import isa;
import isb;
import java.util.AbstractMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class GenericData
  extends AbstractMap<String, Object>
  implements Cloneable
{
  public final irm classInfo;
  public Map<String, Object> unknownFields = new ira();
  
  public GenericData()
  {
    this(EnumSet.noneOf(isb.class));
  }
  
  public GenericData(EnumSet<isb> paramEnumSet)
  {
    classInfo = irm.a(getClass(), paramEnumSet.contains(isb.a));
  }
  
  public GenericData clone()
  {
    try
    {
      GenericData localGenericData = (GenericData)super.clone();
      irq.a(this, localGenericData);
      unknownFields = ((Map)irq.c(unknownFields));
      return localGenericData;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new IllegalStateException(localCloneNotSupportedException);
    }
  }
  
  public Set<Map.Entry<String, Object>> entrySet()
  {
    return new isa(this);
  }
  
  public final Object get(Object paramObject)
  {
    if (!(paramObject instanceof String)) {
      return null;
    }
    String str = (String)paramObject;
    paramObject = classInfo.a(str);
    if (paramObject != null) {
      return ((iry)paramObject).a(this);
    }
    paramObject = str;
    if (classInfo.a) {
      paramObject = str.toLowerCase();
    }
    return unknownFields.get(paramObject);
  }
  
  public final irm getClassInfo()
  {
    return classInfo;
  }
  
  public final Map<String, Object> getUnknownKeys()
  {
    return unknownFields;
  }
  
  public final Object put(String paramString, Object paramObject)
  {
    Object localObject = classInfo.a(paramString);
    if (localObject != null)
    {
      paramString = ((iry)localObject).a(this);
      ((iry)localObject).a(this, paramObject);
      return paramString;
    }
    localObject = paramString;
    if (classInfo.a) {
      localObject = paramString.toLowerCase();
    }
    return unknownFields.put(localObject, paramObject);
  }
  
  public final void putAll(Map<? extends String, ?> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      set((String)localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public final Object remove(Object paramObject)
  {
    if (!(paramObject instanceof String)) {
      return null;
    }
    String str = (String)paramObject;
    if (classInfo.a(str) != null) {
      throw new UnsupportedOperationException();
    }
    paramObject = str;
    if (classInfo.a) {
      paramObject = str.toLowerCase();
    }
    return unknownFields.remove(paramObject);
  }
  
  public GenericData set(String paramString, Object paramObject)
  {
    Object localObject = classInfo.a(paramString);
    if (localObject != null)
    {
      ((iry)localObject).a(this, paramObject);
      return this;
    }
    localObject = paramString;
    if (classInfo.a) {
      localObject = paramString.toLowerCase();
    }
    unknownFields.put(localObject, paramObject);
    return this;
  }
  
  public final void setUnknownKeys(Map<String, Object> paramMap)
  {
    unknownFields = paramMap;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.util.GenericData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */