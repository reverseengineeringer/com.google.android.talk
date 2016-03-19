package com.google.api.client.json;

import fii;
import java.util.Collection;
import java.util.HashSet;

public class JsonObjectParser$Builder
{
  final JsonFactory jsonFactory;
  Collection<String> wrapperKeys = new HashSet();
  
  public JsonObjectParser$Builder(JsonFactory paramJsonFactory)
  {
    jsonFactory = ((JsonFactory)fii.a(paramJsonFactory));
  }
  
  public JsonObjectParser build()
  {
    return new JsonObjectParser(this);
  }
  
  public final JsonFactory getJsonFactory()
  {
    return jsonFactory;
  }
  
  public final Collection<String> getWrapperKeys()
  {
    return wrapperKeys;
  }
  
  public Builder setWrapperKeys(Collection<String> paramCollection)
  {
    wrapperKeys = paramCollection;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.json.JsonObjectParser.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */