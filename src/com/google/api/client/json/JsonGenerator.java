package com.google.api.client.json;

import aal;
import com.google.api.client.util.GenericData;
import fii;
import irm;
import irq;
import irv;
import iry;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class JsonGenerator
{
  private void serialize(boolean paramBoolean, Object paramObject)
  {
    boolean bool = true;
    if (paramObject == null) {
      return;
    }
    Object localObject1 = paramObject.getClass();
    if (irq.a(paramObject))
    {
      writeNull();
      return;
    }
    if ((paramObject instanceof String))
    {
      writeString((String)paramObject);
      return;
    }
    if ((paramObject instanceof Number))
    {
      if (paramBoolean)
      {
        writeString(paramObject.toString());
        return;
      }
      if ((paramObject instanceof BigDecimal))
      {
        writeNumber((BigDecimal)paramObject);
        return;
      }
      if ((paramObject instanceof BigInteger))
      {
        writeNumber((BigInteger)paramObject);
        return;
      }
      if ((paramObject instanceof Long))
      {
        writeNumber(((Long)paramObject).longValue());
        return;
      }
      if ((paramObject instanceof Float))
      {
        float f = ((Number)paramObject).floatValue();
        if ((!Float.isInfinite(f)) && (!Float.isNaN(f))) {}
        for (paramBoolean = true;; paramBoolean = false)
        {
          fii.a(paramBoolean);
          writeNumber(f);
          return;
        }
      }
      if (((paramObject instanceof Integer)) || ((paramObject instanceof Short)) || ((paramObject instanceof Byte)))
      {
        writeNumber(((Number)paramObject).intValue());
        return;
      }
      double d = ((Number)paramObject).doubleValue();
      if ((!Double.isInfinite(d)) && (!Double.isNaN(d))) {}
      for (paramBoolean = bool;; paramBoolean = false)
      {
        fii.a(paramBoolean);
        writeNumber(d);
        return;
      }
    }
    if ((paramObject instanceof Boolean))
    {
      writeBoolean(((Boolean)paramObject).booleanValue());
      return;
    }
    if ((paramObject instanceof irv))
    {
      writeString(((irv)paramObject).a());
      return;
    }
    if (((paramObject instanceof Iterable)) || (((Class)localObject1).isArray()))
    {
      writeStartArray();
      paramObject = aal.e(paramObject).iterator();
      while (((Iterator)paramObject).hasNext()) {
        serialize(paramBoolean, ((Iterator)paramObject).next());
      }
      writeEndArray();
      return;
    }
    if (((Class)localObject1).isEnum())
    {
      paramObject = iry.a((Enum)paramObject).b();
      if (paramObject == null)
      {
        writeNull();
        return;
      }
      writeString((String)paramObject);
      return;
    }
    writeStartObject();
    int i;
    label394:
    label409:
    Object localObject3;
    Object localObject2;
    if (((paramObject instanceof Map)) && (!(paramObject instanceof GenericData)))
    {
      i = 1;
      if (i == 0) {
        break label486;
      }
      localObject1 = null;
      paramObject = irq.b(paramObject).entrySet().iterator();
      do
      {
        if (!((Iterator)paramObject).hasNext()) {
          break;
        }
        localObject3 = (Map.Entry)((Iterator)paramObject).next();
        localObject2 = ((Map.Entry)localObject3).getValue();
      } while (localObject2 == null);
      localObject3 = (String)((Map.Entry)localObject3).getKey();
      if (i == 0) {
        break label496;
      }
      bool = paramBoolean;
    }
    for (;;)
    {
      writeFieldName((String)localObject3);
      serialize(bool, localObject2);
      break label409;
      i = 0;
      break;
      label486:
      localObject1 = irm.a((Class)localObject1);
      break label394;
      label496:
      Field localField = ((irm)localObject1).b((String)localObject3);
      if ((localField != null) && (localField.getAnnotation(JsonString.class) != null)) {
        bool = true;
      } else {
        bool = false;
      }
    }
    writeEndObject();
  }
  
  public abstract void close();
  
  public void enablePrettyPrint() {}
  
  public abstract void flush();
  
  public abstract JsonFactory getFactory();
  
  public final void serialize(Object paramObject)
  {
    serialize(false, paramObject);
  }
  
  public abstract void writeBoolean(boolean paramBoolean);
  
  public abstract void writeEndArray();
  
  public abstract void writeEndObject();
  
  public abstract void writeFieldName(String paramString);
  
  public abstract void writeNull();
  
  public abstract void writeNumber(double paramDouble);
  
  public abstract void writeNumber(float paramFloat);
  
  public abstract void writeNumber(int paramInt);
  
  public abstract void writeNumber(long paramLong);
  
  public abstract void writeNumber(String paramString);
  
  public abstract void writeNumber(BigDecimal paramBigDecimal);
  
  public abstract void writeNumber(BigInteger paramBigInteger);
  
  public abstract void writeStartArray();
  
  public abstract void writeStartObject();
  
  public abstract void writeString(String paramString);
}

/* Location:
 * Qualified Name:     com.google.api.client.json.JsonGenerator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */