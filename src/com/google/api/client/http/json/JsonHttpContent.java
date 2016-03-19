package com.google.api.client.http.json;

import com.google.api.client.http.AbstractHttpContent;
import com.google.api.client.http.HttpMediaType;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import fii;
import java.io.OutputStream;

public class JsonHttpContent
  extends AbstractHttpContent
{
  private final Object data;
  private final JsonFactory jsonFactory;
  private String wrapperKey;
  
  public JsonHttpContent(JsonFactory paramJsonFactory, Object paramObject)
  {
    super("application/json; charset=UTF-8");
    jsonFactory = ((JsonFactory)fii.a(paramJsonFactory));
    data = fii.a(paramObject);
  }
  
  public final Object getData()
  {
    return data;
  }
  
  public final JsonFactory getJsonFactory()
  {
    return jsonFactory;
  }
  
  public final String getWrapperKey()
  {
    return wrapperKey;
  }
  
  public JsonHttpContent setMediaType(HttpMediaType paramHttpMediaType)
  {
    super.setMediaType(paramHttpMediaType);
    return this;
  }
  
  public JsonHttpContent setWrapperKey(String paramString)
  {
    wrapperKey = paramString;
    return this;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream = jsonFactory.createJsonGenerator(paramOutputStream, getCharset());
    if (wrapperKey != null)
    {
      paramOutputStream.writeStartObject();
      paramOutputStream.writeFieldName(wrapperKey);
    }
    paramOutputStream.serialize(data);
    if (wrapperKey != null) {
      paramOutputStream.writeEndObject();
    }
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.json.JsonHttpContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */