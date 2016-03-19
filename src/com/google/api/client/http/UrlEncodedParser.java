package com.google.api.client.http;

import aal;
import com.google.api.client.util.GenericData;
import fii;
import ire;
import irl;
import irm;
import irq;
import iry;
import isl;
import isv;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import koh;

public class UrlEncodedParser
  implements isl
{
  public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
  public static final String MEDIA_TYPE = new HttpMediaType("application/x-www-form-urlencoded").setCharsetParameter(irl.a).build();
  
  public static void parse(Reader paramReader, Object paramObject)
  {
    Object localObject1 = paramObject.getClass();
    irm localirm = irm.a((Class)localObject1);
    List localList = Arrays.asList(new Type[] { localObject1 });
    GenericData localGenericData;
    ire localire;
    Object localObject2;
    Object localObject3;
    int i;
    Object localObject4;
    if (GenericData.class.isAssignableFrom((Class)localObject1))
    {
      localGenericData = (GenericData)paramObject;
      if (!Map.class.isAssignableFrom((Class)localObject1)) {
        break label155;
      }
      localObject1 = (Map)paramObject;
      localire = new ire(paramObject);
      localObject2 = new StringWriter();
      localObject3 = new StringWriter();
      i = 1;
      localObject4 = localObject2;
      localObject2 = localObject3;
    }
    for (;;)
    {
      int j = paramReader.read();
      switch (j)
      {
      default: 
        if (i != 0)
        {
          ((StringWriter)localObject4).write(j);
          continue;
          localGenericData = null;
          break;
          localObject1 = null;
        }
        break;
      case -1: 
      case 38: 
        Object localObject5 = isv.a(((StringWriter)localObject4).toString());
        iry localiry;
        if (((String)localObject5).length() != 0)
        {
          localObject4 = isv.a(((StringWriter)localObject2).toString());
          localiry = localirm.a((String)localObject5);
          if (localiry == null) {
            break label393;
          }
          localObject5 = irq.a(localList, localiry.c());
          if (!aal.a((Type)localObject5)) {
            break label285;
          }
          localObject2 = aal.a(localList, aal.b((Type)localObject5));
          localire.a(localiry.a(), (Class)localObject2, parseValue((Type)localObject2, localList, (String)localObject4));
        }
        while (localObject1 == null) {
          for (;;)
          {
            localObject4 = new StringWriter();
            localObject2 = new StringWriter();
            if (j != -1) {
              break;
            }
            localire.a();
            return;
            if (aal.a(aal.a(localList, (Type)localObject5), Iterable.class))
            {
              localObject3 = (Collection)localiry.a(paramObject);
              localObject2 = localObject3;
              if (localObject3 == null)
              {
                localObject2 = irq.b((Type)localObject5);
                localiry.a(paramObject, localObject2);
              }
              if (localObject5 == Object.class) {}
              for (localObject3 = null;; localObject3 = aal.c((Type)localObject5))
              {
                ((Collection)localObject2).add(parseValue((Type)localObject3, localList, (String)localObject4));
                break;
              }
            }
            localiry.a(paramObject, parseValue((Type)localObject5, localList, (String)localObject4));
          }
        }
        localObject3 = (ArrayList)((Map)localObject1).get(localObject5);
        localObject2 = localObject3;
        if (localObject3 == null)
        {
          localObject2 = new ArrayList();
          if (localGenericData == null) {
            break label456;
          }
          localGenericData.set((String)localObject5, localObject2);
        }
        for (;;)
        {
          ((ArrayList)localObject2).add(localObject4);
          break;
          ((Map)localObject1).put(localObject5, localObject2);
        }
      case 61: 
        label155:
        label285:
        label393:
        label456:
        i = 0;
        continue;
        ((StringWriter)localObject2).write(j);
        continue;
        i = 1;
      }
    }
  }
  
  public static void parse(String paramString, Object paramObject)
  {
    if (paramString == null) {
      return;
    }
    try
    {
      parse(new StringReader(paramString), paramObject);
      return;
    }
    catch (IOException paramString)
    {
      throw koh.a(paramString);
    }
  }
  
  private static Object parseValue(Type paramType, List<Type> paramList, String paramString)
  {
    return irq.a(irq.a(paramList, paramType), paramString);
  }
  
  public <T> T parseAndClose(InputStream paramInputStream, Charset paramCharset, Class<T> paramClass)
  {
    return (T)parseAndClose(new InputStreamReader(paramInputStream, paramCharset), paramClass);
  }
  
  public Object parseAndClose(InputStream paramInputStream, Charset paramCharset, Type paramType)
  {
    return parseAndClose(new InputStreamReader(paramInputStream, paramCharset), paramType);
  }
  
  public <T> T parseAndClose(Reader paramReader, Class<T> paramClass)
  {
    return (T)parseAndClose(paramReader, paramClass);
  }
  
  public Object parseAndClose(Reader paramReader, Type paramType)
  {
    fii.a(paramType instanceof Class, "dataType has to be of type Class<?>");
    paramType = aal.a((Class)paramType);
    parse(new BufferedReader(paramReader), paramType);
    return paramType;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.UrlEncodedParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */