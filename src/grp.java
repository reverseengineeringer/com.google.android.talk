import android.text.TextUtils;
import com.google.android.gms.wearable.Asset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class grp
{
  private final HashMap<String, Object> a = new HashMap();
  
  public static grp a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = aal.a(new gba(gbb.a(paramArrayOfByte), new ArrayList()));
      return paramArrayOfByte;
    }
    catch (gbm paramArrayOfByte)
    {
      throw new IllegalArgumentException("Unable to convert data", paramArrayOfByte);
    }
  }
  
  private static void a(String paramString1, Object paramObject, String paramString2, ClassCastException paramClassCastException)
  {
    a(paramString1, paramObject, paramString2, "<null>");
  }
  
  private static void a(String paramString1, Object paramObject1, String paramString2, Object paramObject2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Key ");
    localStringBuilder.append(paramString1);
    localStringBuilder.append(" expected ");
    localStringBuilder.append(paramString2);
    localStringBuilder.append(" but value was a ");
    localStringBuilder.append(paramObject1.getClass().getName());
    localStringBuilder.append(".  The default value ");
    localStringBuilder.append(paramObject2);
    localStringBuilder.append(" was returned.");
  }
  
  private boolean h(String paramString)
  {
    Object localObject = a.get(paramString);
    if (localObject == null) {
      return false;
    }
    try
    {
      boolean bool = ((Boolean)localObject).booleanValue();
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
      a(paramString, localObject, "Boolean", Boolean.valueOf(false));
    }
    return false;
  }
  
  private long i(String paramString)
  {
    Object localObject = a.get(paramString);
    if (localObject == null) {
      return 0L;
    }
    try
    {
      long l = ((Long)localObject).longValue();
      return l;
    }
    catch (ClassCastException localClassCastException)
    {
      a(paramString, localObject, "long", localClassCastException);
    }
    return 0L;
  }
  
  public <T> T a(String paramString)
  {
    return (T)a.get(paramString);
  }
  
  public void a(grp paramgrp)
  {
    Iterator localIterator = paramgrp.b().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      a.put(str, paramgrp.a(str));
    }
  }
  
  public void a(String paramString, byte paramByte)
  {
    a.put(paramString, Byte.valueOf(paramByte));
  }
  
  public void a(String paramString, double paramDouble)
  {
    a.put(paramString, Double.valueOf(paramDouble));
  }
  
  public void a(String paramString, float paramFloat)
  {
    a.put(paramString, Float.valueOf(paramFloat));
  }
  
  public void a(String paramString, int paramInt)
  {
    a.put(paramString, Integer.valueOf(paramInt));
  }
  
  public void a(String paramString, long paramLong)
  {
    a.put(paramString, Long.valueOf(paramLong));
  }
  
  public void a(String paramString, Asset paramAsset)
  {
    a.put(paramString, paramAsset);
  }
  
  public void a(String paramString, grp paramgrp)
  {
    a.put(paramString, paramgrp);
  }
  
  public void a(String paramString1, String paramString2)
  {
    a.put(paramString1, paramString2);
  }
  
  public void a(String paramString, ArrayList<grp> paramArrayList)
  {
    a.put(paramString, paramArrayList);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    a.put(paramString, Boolean.valueOf(paramBoolean));
  }
  
  public void a(String paramString, byte[] paramArrayOfByte)
  {
    a.put(paramString, paramArrayOfByte);
  }
  
  public void a(String paramString, float[] paramArrayOfFloat)
  {
    a.put(paramString, paramArrayOfFloat);
  }
  
  public void a(String paramString, long[] paramArrayOfLong)
  {
    a.put(paramString, paramArrayOfLong);
  }
  
  public void a(String paramString, String[] paramArrayOfString)
  {
    a.put(paramString, paramArrayOfString);
  }
  
  public byte[] a()
  {
    return gbn.a(aa);
  }
  
  public String b(String paramString1, String paramString2)
  {
    paramString1 = f(paramString1);
    if (paramString1 == null) {
      return paramString2;
    }
    return paramString1;
  }
  
  public Set<String> b()
  {
    return a.keySet();
  }
  
  public void b(String paramString, ArrayList<Integer> paramArrayList)
  {
    a.put(paramString, paramArrayList);
  }
  
  public boolean b(String paramString)
  {
    return h(paramString);
  }
  
  public int c(String paramString)
  {
    return d(paramString);
  }
  
  public void c(String paramString, ArrayList<String> paramArrayList)
  {
    a.put(paramString, paramArrayList);
  }
  
  public int d(String paramString)
  {
    Object localObject = a.get(paramString);
    if (localObject == null) {
      return 0;
    }
    try
    {
      int i = ((Integer)localObject).intValue();
      return i;
    }
    catch (ClassCastException localClassCastException)
    {
      a(paramString, localObject, "Integer", localClassCastException);
    }
    return 0;
  }
  
  public long e(String paramString)
  {
    return i(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof grp)) {
      return false;
    }
    paramObject = (grp)paramObject;
    if (a.size() != a.size()) {
      return false;
    }
    Iterator localIterator = b().iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (String)localIterator.next();
      Object localObject1 = a((String)localObject2);
      localObject2 = ((grp)paramObject).a((String)localObject2);
      if ((localObject1 instanceof Asset))
      {
        if (!(localObject2 instanceof Asset)) {
          return false;
        }
        localObject1 = (Asset)localObject1;
        localObject2 = (Asset)localObject2;
        boolean bool;
        if ((localObject1 == null) || (localObject2 == null)) {
          if (localObject1 == localObject2) {
            bool = true;
          }
        }
        while (!bool)
        {
          return false;
          bool = false;
          continue;
          if (!TextUtils.isEmpty(((Asset)localObject1).b())) {
            bool = ((Asset)localObject1).b().equals(((Asset)localObject2).b());
          } else {
            bool = Arrays.equals(((Asset)localObject1).a(), ((Asset)localObject2).a());
          }
        }
      }
      else if ((localObject1 instanceof String[]))
      {
        if (!(localObject2 instanceof String[])) {
          return false;
        }
        if (!Arrays.equals((String[])localObject1, (String[])localObject2)) {
          return false;
        }
      }
      else if ((localObject1 instanceof long[]))
      {
        if (!(localObject2 instanceof long[])) {
          return false;
        }
        if (!Arrays.equals((long[])localObject1, (long[])localObject2)) {
          return false;
        }
      }
      else if ((localObject1 instanceof float[]))
      {
        if (!(localObject2 instanceof float[])) {
          return false;
        }
        if (!Arrays.equals((float[])localObject1, (float[])localObject2)) {
          return false;
        }
      }
      else if ((localObject1 instanceof byte[]))
      {
        if (!(localObject2 instanceof byte[])) {
          return false;
        }
        if (!Arrays.equals((byte[])localObject1, (byte[])localObject2)) {
          return false;
        }
      }
      else if ((localObject1 == null) || (localObject2 == null))
      {
        if (localObject1 != localObject2) {
          return false;
        }
      }
      else if (!localObject1.equals(localObject2))
      {
        return false;
      }
    }
    return true;
  }
  
  public String f(String paramString)
  {
    Object localObject = a.get(paramString);
    if (localObject == null) {
      return null;
    }
    try
    {
      String str = (String)localObject;
      return str;
    }
    catch (ClassCastException localClassCastException)
    {
      a(paramString, localObject, "String", localClassCastException);
    }
    return null;
  }
  
  public Asset g(String paramString)
  {
    Object localObject = a.get(paramString);
    if (localObject == null) {
      return null;
    }
    try
    {
      Asset localAsset = (Asset)localObject;
      return localAsset;
    }
    catch (ClassCastException localClassCastException)
    {
      a(paramString, localObject, "Asset", localClassCastException);
    }
    return null;
  }
  
  public int hashCode()
  {
    return a.hashCode() * 29;
  }
  
  public String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     grp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */