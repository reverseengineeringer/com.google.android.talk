package com.google.api.client.json;

import com.google.api.client.util.GenericData;
import java.io.IOException;
import koh;

public class GenericJson
  extends GenericData
  implements Cloneable
{
  private JsonFactory jsonFactory;
  
  public GenericJson clone()
  {
    return (GenericJson)super.clone();
  }
  
  public final JsonFactory getFactory()
  {
    return jsonFactory;
  }
  
  public GenericJson set(String paramString, Object paramObject)
  {
    return (GenericJson)super.set(paramString, paramObject);
  }
  
  public final void setFactory(JsonFactory paramJsonFactory)
  {
    jsonFactory = paramJsonFactory;
  }
  
  public String toPrettyString()
  {
    if (jsonFactory != null) {
      return jsonFactory.toPrettyString(this);
    }
    return super.toString();
  }
  
  public String toString()
  {
    if (jsonFactory != null) {
      try
      {
        String str = jsonFactory.toString(this);
        return str;
      }
      catch (IOException localIOException)
      {
        throw koh.a(localIOException);
      }
    }
    return super.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.json.GenericJson
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */