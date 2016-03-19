package com.google.api.client.json;

import java.lang.reflect.Field;
import java.util.Collection;

public class CustomizeJsonParser
{
  public void handleUnrecognizedKey(Object paramObject, String paramString) {}
  
  public Collection<Object> newInstanceForArray(Object paramObject, Field paramField)
  {
    return null;
  }
  
  public Object newInstanceForObject(Object paramObject, Class<?> paramClass)
  {
    return null;
  }
  
  public boolean stopAt(Object paramObject, String paramString)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.json.CustomizeJsonParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */