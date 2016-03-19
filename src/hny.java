import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

final class hny
  implements hnx
{
  private static final Logger a = Logger.getLogger(hny.class.getName());
  private final Map<String, hpa> b = Collections.synchronizedMap(new HashMap());
  private final Map<Integer, hpa> c = Collections.synchronizedMap(new HashMap());
  private final String d;
  private final hnv e;
  
  public hny(hnv paramhnv)
  {
    this("/com/google/android/libraries/phonenumbers/data/PhoneNumberMetadataProto", paramhnv);
  }
  
  private hny(String paramString, hnv paramhnv)
  {
    d = paramString;
    e = paramhnv;
  }
  
  private static hpb a(ObjectInputStream paramObjectInputStream)
  {
    hpb localhpb = new hpb();
    try
    {
      localhpb.b(hnw.a(paramObjectInputStream));
      try
      {
        paramObjectInputStream.close();
        return localhpb;
      }
      catch (IOException paramObjectInputStream)
      {
        a.log(Level.WARNING, "error closing input stream (ignored)", paramObjectInputStream);
        return localhpb;
      }
      try
      {
        paramObjectInputStream.close();
        throw ((Throwable)localObject);
      }
      catch (IOException paramObjectInputStream)
      {
        for (;;)
        {
          a.log(Level.WARNING, "error closing input stream (ignored)", paramObjectInputStream);
        }
      }
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      a.log(Level.WARNING, "error reading input (ignored)", localIOException);
      try
      {
        paramObjectInputStream.close();
        return localhpb;
      }
      catch (IOException paramObjectInputStream)
      {
        a.log(Level.WARNING, "error closing input stream (ignored)", paramObjectInputStream);
        return localhpb;
      }
    }
    finally {}
  }
  
  private void a(String paramString, int paramInt)
  {
    boolean bool = "001".equals(paramString);
    String str2 = String.valueOf(String.valueOf(d));
    Object localObject1;
    Object localObject2;
    if (bool)
    {
      localObject1 = String.valueOf(paramInt);
      localObject1 = String.valueOf(String.valueOf(localObject1));
      str2 = str2.length() + 1 + ((String)localObject1).length() + str2 + "_" + (String)localObject1;
      localObject1 = hof.class.getResourceAsStream(str2);
      if (localObject1 != null) {
        break label192;
      }
      localObject1 = a;
      localObject2 = Level.SEVERE;
      paramString = String.valueOf(str2);
      if (paramString.length() == 0) {
        break label166;
      }
      paramString = "missing metadata: ".concat(paramString);
      label123:
      ((Logger)localObject1).log((Level)localObject2, paramString);
      paramString = String.valueOf(str2);
      if (paramString.length() == 0) {
        break label179;
      }
    }
    label166:
    label179:
    for (paramString = "missing metadata: ".concat(paramString);; paramString = new String("missing metadata: "))
    {
      throw new IllegalStateException(paramString);
      localObject1 = paramString;
      break;
      paramString = new String("missing metadata: ");
      break label123;
    }
    label192:
    label273:
    Object localObject3;
    try
    {
      localObject2 = aObjectInputStreama;
      if (localObject2.length != 0) {
        break label381;
      }
      localObject1 = a;
      localObject2 = Level.SEVERE;
      paramString = String.valueOf(str2);
      if (paramString.length() == 0) {
        break label355;
      }
      paramString = "empty metadata: ".concat(paramString);
      ((Logger)localObject1).log((Level)localObject2, paramString);
      paramString = String.valueOf(str2);
      if (paramString.length() == 0) {
        break label368;
      }
      paramString = "empty metadata: ".concat(paramString);
      throw new IllegalStateException(paramString);
    }
    catch (IOException localIOException)
    {
      localObject2 = a;
      localObject3 = Level.SEVERE;
      paramString = String.valueOf(str2);
      if (paramString.length() == 0) {
        break label486;
      }
    }
    paramString = "cannot load/parse metadata: ".concat(paramString);
    label314:
    ((Logger)localObject2).log((Level)localObject3, paramString, localIOException);
    paramString = String.valueOf(str2);
    if (paramString.length() != 0) {}
    for (paramString = "cannot load/parse metadata: ".concat(paramString);; paramString = new String("cannot load/parse metadata: "))
    {
      throw new RuntimeException(paramString, localIOException);
      label355:
      paramString = new String("empty metadata: ");
      break;
      label368:
      paramString = new String("empty metadata: ");
      break label273;
      label381:
      Level localLevel;
      if (localObject2.length > 1)
      {
        localObject3 = a;
        localLevel = Level.WARNING;
        str1 = String.valueOf(str2);
        if (str1.length() == 0) {
          break label458;
        }
      }
      label458:
      for (String str1 = "invalid metadata (too many entries): ".concat(str1);; str1 = new String("invalid metadata (too many entries): "))
      {
        ((Logger)localObject3).log(localLevel, str1);
        str1 = localObject2[0];
        if (!bool) {
          break;
        }
        c.put(Integer.valueOf(paramInt), str1);
        return;
      }
      b.put(paramString, str1);
      return;
      label486:
      paramString = new String("cannot load/parse metadata: ");
      break label314;
    }
  }
  
  public hpa a(int paramInt)
  {
    synchronized (c)
    {
      if (!c.containsKey(Integer.valueOf(paramInt))) {
        a("001", paramInt);
      }
      return (hpa)c.get(Integer.valueOf(paramInt));
    }
  }
  
  public hpa a(String paramString)
  {
    synchronized (b)
    {
      if (!b.containsKey(paramString)) {
        a(paramString, 0);
      }
      return (hpa)b.get(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     hny
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */