package com.google.api.client.json;

import fii;
import isl;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class JsonObjectParser
  implements isl
{
  private final JsonFactory jsonFactory;
  private final Set<String> wrapperKeys;
  
  public JsonObjectParser(JsonFactory paramJsonFactory)
  {
    this(new JsonObjectParser.Builder(paramJsonFactory));
  }
  
  protected JsonObjectParser(JsonObjectParser.Builder paramBuilder)
  {
    jsonFactory = jsonFactory;
    wrapperKeys = new HashSet(wrapperKeys);
  }
  
  private void initializeParser(JsonParser paramJsonParser)
  {
    boolean bool = true;
    if (wrapperKeys.isEmpty()) {
      return;
    }
    for (;;)
    {
      try
      {
        if ((paramJsonParser.skipToKey(wrapperKeys) != null) && (paramJsonParser.getCurrentToken() != JsonToken.END_OBJECT))
        {
          fii.a(bool, "wrapper key(s) not found: %s", new Object[] { wrapperKeys });
          return;
        }
      }
      finally
      {
        paramJsonParser.close();
      }
      bool = false;
    }
  }
  
  public final JsonFactory getJsonFactory()
  {
    return jsonFactory;
  }
  
  public Set<String> getWrapperKeys()
  {
    return Collections.unmodifiableSet(wrapperKeys);
  }
  
  public <T> T parseAndClose(InputStream paramInputStream, Charset paramCharset, Class<T> paramClass)
  {
    return (T)parseAndClose(paramInputStream, paramCharset, paramClass);
  }
  
  public Object parseAndClose(InputStream paramInputStream, Charset paramCharset, Type paramType)
  {
    paramInputStream = jsonFactory.createJsonParser(paramInputStream, paramCharset);
    initializeParser(paramInputStream);
    return paramInputStream.parse(paramType, true);
  }
  
  public <T> T parseAndClose(Reader paramReader, Class<T> paramClass)
  {
    return (T)parseAndClose(paramReader, paramClass);
  }
  
  public Object parseAndClose(Reader paramReader, Type paramType)
  {
    paramReader = jsonFactory.createJsonParser(paramReader);
    initializeParser(paramReader);
    return paramReader.parse(paramType, true);
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.json.JsonObjectParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */