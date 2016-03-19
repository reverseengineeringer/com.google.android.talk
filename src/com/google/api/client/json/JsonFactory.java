package com.google.api.client.json;

import irl;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;

public abstract class JsonFactory
{
  private ByteArrayOutputStream toByteStream(Object paramObject, boolean paramBoolean)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    JsonGenerator localJsonGenerator = createJsonGenerator(localByteArrayOutputStream, irl.a);
    if (paramBoolean) {
      localJsonGenerator.enablePrettyPrint();
    }
    localJsonGenerator.serialize(paramObject);
    localJsonGenerator.flush();
    return localByteArrayOutputStream;
  }
  
  private String toString(Object paramObject, boolean paramBoolean)
  {
    return toByteStream(paramObject, paramBoolean).toString("UTF-8");
  }
  
  public abstract JsonGenerator createJsonGenerator(OutputStream paramOutputStream, Charset paramCharset);
  
  public abstract JsonGenerator createJsonGenerator(Writer paramWriter);
  
  public final JsonObjectParser createJsonObjectParser()
  {
    return new JsonObjectParser(this);
  }
  
  public abstract JsonParser createJsonParser(InputStream paramInputStream);
  
  public abstract JsonParser createJsonParser(InputStream paramInputStream, Charset paramCharset);
  
  public abstract JsonParser createJsonParser(Reader paramReader);
  
  public abstract JsonParser createJsonParser(String paramString);
  
  public final <T> T fromInputStream(InputStream paramInputStream, Class<T> paramClass)
  {
    return (T)createJsonParser(paramInputStream).parseAndClose(paramClass);
  }
  
  public final <T> T fromInputStream(InputStream paramInputStream, Charset paramCharset, Class<T> paramClass)
  {
    return (T)createJsonParser(paramInputStream, paramCharset).parseAndClose(paramClass);
  }
  
  public final <T> T fromReader(Reader paramReader, Class<T> paramClass)
  {
    return (T)createJsonParser(paramReader).parseAndClose(paramClass);
  }
  
  public final <T> T fromString(String paramString, Class<T> paramClass)
  {
    return (T)createJsonParser(paramString).parse(paramClass);
  }
  
  public final byte[] toByteArray(Object paramObject)
  {
    return toByteStream(paramObject, false).toByteArray();
  }
  
  public final String toPrettyString(Object paramObject)
  {
    return toString(paramObject, true);
  }
  
  public final String toString(Object paramObject)
  {
    return toString(paramObject, false);
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.json.JsonFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */