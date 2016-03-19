package com.google.api.client.json;

import aal;
import com.google.api.client.util.GenericData;
import fii;
import irm;
import irq;
import iry;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public abstract class JsonParser
{
  private static WeakHashMap<Class<?>, Field> cachedTypemapFields = new WeakHashMap();
  private static final Lock lock = new ReentrantLock();
  
  private static Field getCachedTypemapFieldFor(Class<?> paramClass)
  {
    if (paramClass == null) {
      return null;
    }
    lock.lock();
    label280:
    label285:
    label290:
    for (;;)
    {
      Field localField;
      try
      {
        if (cachedTypemapFields.containsKey(paramClass))
        {
          paramClass = (Field)cachedTypemapFields.get(paramClass);
          return paramClass;
        }
        Iterator localIterator = irm.a(paramClass).b().iterator();
        localObject1 = null;
        if (localIterator.hasNext())
        {
          localField = ((iry)localIterator.next()).a();
          Object localObject2 = (JsonPolymorphicTypeMap)localField.getAnnotation(JsonPolymorphicTypeMap.class);
          if (localObject2 == null) {
            break label290;
          }
          if (localObject1 != null) {
            break label280;
          }
          bool = true;
          fii.a(bool, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", new Object[] { paramClass });
          fii.a(irq.a(localField.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", new Object[] { paramClass, localField.getType() });
          localObject1 = ((JsonPolymorphicTypeMap)localObject2).typeDefinitions();
          localObject2 = new HashSet();
          if (localObject1.length <= 0) {
            break label285;
          }
          bool = true;
          fii.a(bool, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
          int j = localObject1.length;
          int i = 0;
          if (i < j)
          {
            Object localObject3 = localObject1[i];
            fii.a(((HashSet)localObject2).add(((JsonPolymorphicTypeMap.TypeDef)localObject3).key()), "Class contains two @TypeDef annotations with identical key: %s", new Object[] { ((JsonPolymorphicTypeMap.TypeDef)localObject3).key() });
            i += 1;
            continue;
          }
        }
        else
        {
          cachedTypemapFields.put(paramClass, localObject1);
          return (Field)localObject1;
        }
      }
      finally
      {
        lock.unlock();
      }
      Object localObject1 = localField;
      break label290;
      boolean bool = false;
      continue;
      bool = false;
    }
  }
  
  private void parse(ArrayList<Type> paramArrayList, Object paramObject, CustomizeJsonParser paramCustomizeJsonParser)
  {
    if ((paramObject instanceof GenericJson)) {
      ((GenericJson)paramObject).setFactory(getFactory());
    }
    Object localObject2 = startParsingObjectOrArray();
    Class localClass = paramObject.getClass();
    irm localirm = irm.a(localClass);
    boolean bool = GenericData.class.isAssignableFrom(localClass);
    Object localObject1 = localObject2;
    if (!bool)
    {
      localObject1 = localObject2;
      if (Map.class.isAssignableFrom(localClass))
      {
        parseMap(null, (Map)paramObject, aal.d(localClass), paramArrayList, paramCustomizeJsonParser);
        return;
        label86:
        localObject2 = ((iry)localObject1).a();
        int i = paramArrayList.size();
        paramArrayList.add(((Field)localObject2).getGenericType());
        localObject2 = parseValue((Field)localObject2, ((iry)localObject1).c(), paramArrayList, paramObject, paramCustomizeJsonParser, true);
        paramArrayList.remove(i);
        ((iry)localObject1).a(paramObject, localObject2);
      }
    }
    for (;;)
    {
      localObject1 = nextToken();
      if (localObject1 != JsonToken.FIELD_NAME) {
        break;
      }
      localObject2 = getText();
      nextToken();
      if ((paramCustomizeJsonParser != null) && (paramCustomizeJsonParser.stopAt(paramObject, (String)localObject2))) {
        break;
      }
      localObject1 = localirm.a((String)localObject2);
      if (localObject1 != null)
      {
        if ((!((iry)localObject1).d()) || (((iry)localObject1).e())) {
          break label86;
        }
        throw new IllegalArgumentException("final array/object fields are not supported");
      }
      if (bool)
      {
        ((GenericData)paramObject).set((String)localObject2, parseValue(null, null, paramArrayList, paramObject, paramCustomizeJsonParser, true));
      }
      else
      {
        if (paramCustomizeJsonParser != null) {
          paramCustomizeJsonParser.handleUnrecognizedKey(paramObject, (String)localObject2);
        }
        skipChildren();
      }
    }
  }
  
  private <T> void parseArray(Field paramField, Collection<T> paramCollection, Type paramType, ArrayList<Type> paramArrayList, CustomizeJsonParser paramCustomizeJsonParser)
  {
    for (JsonToken localJsonToken = startParsingObjectOrArray(); localJsonToken != JsonToken.END_ARRAY; localJsonToken = nextToken()) {
      paramCollection.add(parseValue(paramField, paramType, paramArrayList, paramCollection, paramCustomizeJsonParser, true));
    }
  }
  
  private void parseMap(Field paramField, Map<String, Object> paramMap, Type paramType, ArrayList<Type> paramArrayList, CustomizeJsonParser paramCustomizeJsonParser)
  {
    for (Object localObject = startParsingObjectOrArray();; localObject = nextToken())
    {
      if (localObject == JsonToken.FIELD_NAME)
      {
        localObject = getText();
        nextToken();
        if ((paramCustomizeJsonParser == null) || (!paramCustomizeJsonParser.stopAt(paramMap, (String)localObject))) {}
      }
      else
      {
        return;
      }
      paramMap.put(localObject, parseValue(paramField, paramType, paramArrayList, paramMap, paramCustomizeJsonParser, true));
    }
  }
  
  private final Object parseValue(Field paramField, Type paramType, ArrayList<Type> paramArrayList, Object paramObject, CustomizeJsonParser paramCustomizeJsonParser, boolean paramBoolean)
  {
    Type localType = irq.a(paramArrayList, paramType);
    Object localObject2;
    if ((localType instanceof Class))
    {
      paramType = (Class)localType;
      localObject2 = paramType;
      if ((localType instanceof ParameterizedType)) {
        localObject2 = aal.a((ParameterizedType)localType);
      }
      if (localObject2 != Void.class) {
        break label66;
      }
      skipChildren();
      paramObject = null;
    }
    label66:
    boolean bool;
    label293:
    Object localObject1;
    label362:
    label431:
    Field localField;
    label460:
    int i;
    label507:
    label520:
    int j;
    label570:
    label591:
    label600:
    do
    {
      return paramObject;
      paramType = null;
      break;
      paramType = getCurrentToken();
      try
      {
        switch (JsonParser.1.$SwitchMap$com$google$api$client$json$JsonToken[getCurrentToken().ordinal()])
        {
        case 2: 
          paramType = String.valueOf(paramType);
          throw new IllegalArgumentException(String.valueOf(paramType).length() + 27 + "unexpected JSON node type: " + paramType);
        }
      }
      catch (IllegalArgumentException paramType)
      {
        paramArrayList = new StringBuilder();
        paramObject = getCurrentName();
        if (paramObject != null) {
          paramArrayList.append("key ").append((String)paramObject);
        }
        if (paramField != null)
        {
          if (paramObject != null) {
            paramArrayList.append(", ");
          }
          paramArrayList.append("field ").append(paramField);
        }
        throw new IllegalArgumentException(paramArrayList.toString(), paramType);
      }
      bool = aal.a(localType);
      if ((localType == null) || (bool)) {
        break label1376;
      }
      if ((localObject2 == null) || (!aal.a((Class)localObject2, Collection.class))) {
        break label1382;
      }
      break label1376;
      fii.a(paramBoolean, "expected collection or array type but got %s", new Object[] { localType });
      localObject1 = null;
      paramType = (Type)localObject1;
      if (paramCustomizeJsonParser != null)
      {
        paramType = (Type)localObject1;
        if (paramField != null) {
          paramType = paramCustomizeJsonParser.newInstanceForArray(paramObject, paramField);
        }
      }
      paramObject = paramType;
      if (paramType == null) {
        paramObject = irq.b(localType);
      }
      if (bool) {}
      for (paramType = aal.b(localType);; paramType = aal.c(localType))
      {
        paramType = irq.a(paramArrayList, paramType);
        parseArray(paramField, (Collection)paramObject, paramType, paramArrayList, paramCustomizeJsonParser);
        if (!bool) {
          break label1388;
        }
        return aal.a((Collection)paramObject, aal.a(paramArrayList, paramType));
        if ((localObject2 == null) || (!Iterable.class.isAssignableFrom((Class)localObject2))) {
          break;
        }
      }
      if (aal.a(localType)) {
        break label1391;
      }
      bool = true;
      fii.a(bool, "expected object or map type but got %s", new Object[] { localType });
      if (!paramBoolean) {
        break label1397;
      }
      localField = getCachedTypemapFieldFor((Class)localObject2);
      paramType = null;
      localObject1 = paramType;
      if (localObject2 != null)
      {
        localObject1 = paramType;
        if (paramCustomizeJsonParser != null) {
          localObject1 = paramCustomizeJsonParser.newInstanceForObject(paramObject, (Class)localObject2);
        }
      }
      if ((localObject2 == null) || (!aal.a((Class)localObject2, Map.class))) {
        break label1403;
      }
      i = 1;
      if (localField == null) {
        break label1409;
      }
      paramType = new GenericJson();
      for (;;)
      {
        j = paramArrayList.size();
        if (localType != null) {
          paramArrayList.add(localType);
        }
        if ((i == 0) || (GenericData.class.isAssignableFrom((Class)localObject2))) {
          break;
        }
        if (!Map.class.isAssignableFrom((Class)localObject2)) {
          break label1430;
        }
        paramObject = aal.d(localType);
        if (paramObject == null) {
          break;
        }
        parseMap(paramField, (Map)paramType, (Type)paramObject, paramArrayList, paramCustomizeJsonParser);
        return paramType;
        paramType = irq.b((Class)localObject2);
        continue;
        paramType = aal.a((Class)localObject2);
      }
      parse(paramArrayList, paramType, paramCustomizeJsonParser);
      if (localType != null) {
        paramArrayList.remove(j);
      }
      paramObject = paramType;
    } while (localField == null);
    paramObject = ((GenericJson)paramType).get(localField.getName());
    if (paramObject != null)
    {
      paramBoolean = true;
      label659:
      fii.a(paramBoolean, "No value specified for @JsonPolymorphicTypeMap field");
      localObject1 = paramObject.toString();
      paramObject = (JsonPolymorphicTypeMap)localField.getAnnotation(JsonPolymorphicTypeMap.class);
      paramCustomizeJsonParser = null;
      localObject2 = ((JsonPolymorphicTypeMap)paramObject).typeDefinitions();
      j = localObject2.length;
      i = 0;
      label706:
      paramObject = paramCustomizeJsonParser;
      if (i < j)
      {
        paramObject = localObject2[i];
        if (!((JsonPolymorphicTypeMap.TypeDef)paramObject).key().equals(localObject1)) {
          break label1453;
        }
        paramObject = ((JsonPolymorphicTypeMap.TypeDef)paramObject).ref();
        break label1436;
        label751:
        paramCustomizeJsonParser = String.valueOf(localObject1);
        if (paramCustomizeJsonParser.length() != 0) {}
        for (paramCustomizeJsonParser = "No TypeDef annotation found with key: ".concat(paramCustomizeJsonParser);; paramCustomizeJsonParser = new String("No TypeDef annotation found with key: "))
        {
          fii.a(paramBoolean, paramCustomizeJsonParser);
          paramCustomizeJsonParser = getFactory();
          paramType = paramCustomizeJsonParser.createJsonParser(paramCustomizeJsonParser.toString(paramType));
          paramType.startParsing();
          return paramType.parseValue(paramField, (Type)paramObject, paramArrayList, null, null, false);
        }
        if ((localType == null) || (localObject2 == Boolean.TYPE)) {
          break label1468;
        }
        if ((localObject2 == null) || (!((Class)localObject2).isAssignableFrom(Boolean.class))) {
          break label1474;
        }
        break label1468;
        label865:
        fii.a(paramBoolean, "expected type Boolean or boolean but got %s", new Object[] { localType });
        if (paramType == JsonToken.VALUE_TRUE) {
          return Boolean.TRUE;
        }
        return Boolean.FALSE;
        if (paramField == null) {
          break label1480;
        }
        if (paramField.getAnnotation(JsonString.class) != null) {
          break label1486;
        }
        break label1480;
        label914:
        fii.a(paramBoolean, "number type formatted as a JSON number cannot use @JsonString annotation");
        if ((localObject2 == null) || (((Class)localObject2).isAssignableFrom(BigDecimal.class))) {
          return getDecimalValue();
        }
        if (localObject2 == BigInteger.class) {
          return getBigIntegerValue();
        }
        if ((localObject2 == Double.class) || (localObject2 == Double.TYPE)) {
          return Double.valueOf(getDoubleValue());
        }
        if ((localObject2 == Long.class) || (localObject2 == Long.TYPE)) {
          return Long.valueOf(getLongValue());
        }
        if ((localObject2 == Float.class) || (localObject2 == Float.TYPE)) {
          return Float.valueOf(getFloatValue());
        }
        if ((localObject2 == Integer.class) || (localObject2 == Integer.TYPE)) {
          return Integer.valueOf(getIntValue());
        }
        if ((localObject2 == Short.class) || (localObject2 == Short.TYPE)) {
          return Short.valueOf(getShortValue());
        }
        if ((localObject2 == Byte.class) || (localObject2 == Byte.TYPE)) {
          return Byte.valueOf(getByteValue());
        }
        paramType = String.valueOf(localType);
        throw new IllegalArgumentException(String.valueOf(paramType).length() + 30 + "expected numeric type but got " + paramType);
        paramType = getText().trim().toLowerCase(Locale.US);
        if (((localObject2 != Float.TYPE) && (localObject2 != Float.class) && (localObject2 != Double.TYPE) && (localObject2 != Double.class)) || ((!paramType.equals("nan")) && (!paramType.equals("infinity")) && (!paramType.equals("-infinity"))))
        {
          if ((localObject2 == null) || (!Number.class.isAssignableFrom((Class)localObject2))) {
            break label1492;
          }
          if ((paramField == null) || (paramField.getAnnotation(JsonString.class) == null)) {
            break label1498;
          }
          break label1492;
          label1253:
          fii.a(paramBoolean, "number field formatted as a JSON string must use the @JsonString annotation");
        }
        return irq.a(localType, getText());
        if (localObject2 == null) {
          break label1504;
        }
        if (((Class)localObject2).isPrimitive()) {
          break label1510;
        }
        break label1504;
      }
    }
    for (;;)
    {
      fii.a(paramBoolean, "primitive number field but found a JSON null");
      if ((localObject2 != null) && ((((Class)localObject2).getModifiers() & 0x600) != 0))
      {
        if (aal.a((Class)localObject2, Collection.class)) {
          return irq.a(irq.b(localType).getClass());
        }
        if (aal.a((Class)localObject2, Map.class)) {
          return irq.a(irq.b((Class)localObject2).getClass());
        }
      }
      paramType = irq.a(aal.a(paramArrayList, localType));
      return paramType;
      paramType = null;
      break label362;
      break;
      label1376:
      paramBoolean = true;
      break label293;
      label1382:
      paramBoolean = false;
      break label293;
      label1388:
      return paramObject;
      label1391:
      bool = false;
      break label431;
      label1397:
      localField = null;
      break label460;
      label1403:
      i = 0;
      break label507;
      label1409:
      paramType = (Type)localObject1;
      if (localObject1 != null) {
        break label520;
      }
      if (i != 0) {
        break label591;
      }
      if (localObject2 != null) {
        break label600;
      }
      break label591;
      label1430:
      paramObject = null;
      break label570;
      label1436:
      if (paramObject != null)
      {
        paramBoolean = true;
        break label751;
        paramBoolean = false;
        break label659;
        label1453:
        i += 1;
        break label706;
      }
      paramBoolean = false;
      break label751;
      label1468:
      paramBoolean = true;
      break label865;
      label1474:
      paramBoolean = false;
      break label865;
      label1480:
      paramBoolean = true;
      break label914;
      label1486:
      paramBoolean = false;
      break label914;
      label1492:
      paramBoolean = true;
      break label1253;
      label1498:
      paramBoolean = false;
      break label1253;
      label1504:
      paramBoolean = true;
      continue;
      label1510:
      paramBoolean = false;
    }
  }
  
  private JsonToken startParsing()
  {
    JsonToken localJsonToken = getCurrentToken();
    if (localJsonToken == null) {
      localJsonToken = nextToken();
    }
    for (;;)
    {
      if (localJsonToken != null) {}
      for (boolean bool = true;; bool = false)
      {
        fii.a(bool, "no JSON input found");
        return localJsonToken;
      }
    }
  }
  
  private JsonToken startParsingObjectOrArray()
  {
    JsonToken localJsonToken = startParsing();
    switch (JsonParser.1.$SwitchMap$com$google$api$client$json$JsonToken[localJsonToken.ordinal()])
    {
    default: 
      return localJsonToken;
    case 1: 
      localJsonToken = nextToken();
      if ((localJsonToken == JsonToken.FIELD_NAME) || (localJsonToken == JsonToken.END_OBJECT)) {}
      for (boolean bool = true;; bool = false)
      {
        fii.a(bool, localJsonToken);
        return localJsonToken;
      }
    }
    return nextToken();
  }
  
  public abstract void close();
  
  public abstract BigInteger getBigIntegerValue();
  
  public abstract byte getByteValue();
  
  public abstract String getCurrentName();
  
  public abstract JsonToken getCurrentToken();
  
  public abstract BigDecimal getDecimalValue();
  
  public abstract double getDoubleValue();
  
  public abstract JsonFactory getFactory();
  
  public abstract float getFloatValue();
  
  public abstract int getIntValue();
  
  public abstract long getLongValue();
  
  public abstract short getShortValue();
  
  public abstract String getText();
  
  public abstract JsonToken nextToken();
  
  public final <T> T parse(Class<T> paramClass)
  {
    return (T)parse(paramClass, null);
  }
  
  public final <T> T parse(Class<T> paramClass, CustomizeJsonParser paramCustomizeJsonParser)
  {
    return (T)parse(paramClass, false, paramCustomizeJsonParser);
  }
  
  public Object parse(Type paramType, boolean paramBoolean)
  {
    return parse(paramType, paramBoolean, null);
  }
  
  public Object parse(Type paramType, boolean paramBoolean, CustomizeJsonParser paramCustomizeJsonParser)
  {
    try
    {
      if (!Void.class.equals(paramType)) {
        startParsing();
      }
      paramType = parseValue(null, paramType, new ArrayList(), null, paramCustomizeJsonParser, true);
      return paramType;
    }
    finally
    {
      if (paramBoolean) {
        close();
      }
    }
  }
  
  public final void parse(Object paramObject)
  {
    parse(paramObject, null);
  }
  
  public final void parse(Object paramObject, CustomizeJsonParser paramCustomizeJsonParser)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramObject.getClass());
    parse(localArrayList, paramObject, paramCustomizeJsonParser);
  }
  
  public final <T> T parseAndClose(Class<T> paramClass)
  {
    return (T)parseAndClose(paramClass, null);
  }
  
  public final <T> T parseAndClose(Class<T> paramClass, CustomizeJsonParser paramCustomizeJsonParser)
  {
    try
    {
      paramClass = parse(paramClass, paramCustomizeJsonParser);
      return paramClass;
    }
    finally
    {
      close();
    }
  }
  
  public final void parseAndClose(Object paramObject)
  {
    parseAndClose(paramObject, null);
  }
  
  public final void parseAndClose(Object paramObject, CustomizeJsonParser paramCustomizeJsonParser)
  {
    try
    {
      parse(paramObject, paramCustomizeJsonParser);
      return;
    }
    finally
    {
      close();
    }
  }
  
  public final <T> Collection<T> parseArray(Class<?> paramClass, Class<T> paramClass1)
  {
    return parseArray(paramClass, paramClass1, null);
  }
  
  public final <T> Collection<T> parseArray(Class<?> paramClass, Class<T> paramClass1, CustomizeJsonParser paramCustomizeJsonParser)
  {
    paramClass = irq.b(paramClass);
    parseArray(paramClass, paramClass1, paramCustomizeJsonParser);
    return paramClass;
  }
  
  public final <T> void parseArray(Collection<? super T> paramCollection, Class<T> paramClass)
  {
    parseArray(paramCollection, paramClass, null);
  }
  
  public final <T> void parseArray(Collection<? super T> paramCollection, Class<T> paramClass, CustomizeJsonParser paramCustomizeJsonParser)
  {
    parseArray(null, paramCollection, paramClass, new ArrayList(), paramCustomizeJsonParser);
  }
  
  public final <T> Collection<T> parseArrayAndClose(Class<?> paramClass, Class<T> paramClass1)
  {
    return parseArrayAndClose(paramClass, paramClass1, null);
  }
  
  public final <T> Collection<T> parseArrayAndClose(Class<?> paramClass, Class<T> paramClass1, CustomizeJsonParser paramCustomizeJsonParser)
  {
    try
    {
      paramClass = parseArray(paramClass, paramClass1, paramCustomizeJsonParser);
      return paramClass;
    }
    finally
    {
      close();
    }
  }
  
  public final <T> void parseArrayAndClose(Collection<? super T> paramCollection, Class<T> paramClass)
  {
    parseArrayAndClose(paramCollection, paramClass, null);
  }
  
  public final <T> void parseArrayAndClose(Collection<? super T> paramCollection, Class<T> paramClass, CustomizeJsonParser paramCustomizeJsonParser)
  {
    try
    {
      parseArray(paramCollection, paramClass, paramCustomizeJsonParser);
      return;
    }
    finally
    {
      close();
    }
  }
  
  public abstract JsonParser skipChildren();
  
  public final String skipToKey(Set<String> paramSet)
  {
    for (Object localObject = startParsingObjectOrArray(); localObject == JsonToken.FIELD_NAME; localObject = nextToken())
    {
      localObject = getText();
      nextToken();
      if (paramSet.contains(localObject)) {
        return (String)localObject;
      }
      skipChildren();
    }
    return null;
  }
  
  public final void skipToKey(String paramString)
  {
    skipToKey(Collections.singleton(paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.json.JsonParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */