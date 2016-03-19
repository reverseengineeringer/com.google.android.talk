import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public final class lyc<M extends lyb<M>, T>
{
  public final int a = 11;
  public final Class<T> b;
  public final int c;
  public final boolean d;
  
  private lyc()
  {
    Class localClass;
    b = localClass;
    int i;
    c = i;
    d = false;
  }
  
  private Object a(lxy paramlxy)
  {
    Object localObject;
    if (d) {
      localObject = b.getComponentType();
    }
    for (;;)
    {
      try
      {
        switch (a)
        {
        case 10: 
          int i = a;
          throw new IllegalArgumentException(24 + "Unknown type " + i);
        }
      }
      catch (InstantiationException paramlxy)
      {
        localObject = String.valueOf(localObject);
        throw new IllegalArgumentException(String.valueOf(localObject).length() + 33 + "Error creating instance of class " + (String)localObject, paramlxy);
        localObject = b;
        continue;
        lyi locallyi = (lyi)((Class)localObject).newInstance();
        paramlxy.a(locallyi, c >>> 3);
        return locallyi;
        locallyi = (lyi)((Class)localObject).newInstance();
        paramlxy.a(locallyi);
        return locallyi;
      }
      catch (IllegalAccessException paramlxy)
      {
        localObject = String.valueOf(localObject);
        throw new IllegalArgumentException(String.valueOf(localObject).length() + 33 + "Error creating instance of class " + (String)localObject, paramlxy);
      }
      catch (IOException paramlxy)
      {
        throw new IllegalArgumentException("Error reading extension field", paramlxy);
      }
    }
  }
  
  public static <M extends lyb<M>, T extends lyi> lyc<M, T> a(int paramInt)
  {
    Object localObject;
    return new lyc(11, paramInt, (int)localObject);
  }
  
  private int b(Object paramObject)
  {
    int i = c >>> 3;
    switch (a)
    {
    default: 
      i = a;
      throw new IllegalArgumentException(24 + "Unknown type " + i);
    case 10: 
      return lxz.c(i, (lyi)paramObject);
    }
    return lxz.d(i, (lyi)paramObject);
  }
  
  private void b(Object paramObject, lxz paramlxz)
  {
    for (;;)
    {
      try
      {
        paramlxz.g(c);
        switch (a)
        {
        case 10: 
          i = a;
          throw new IllegalArgumentException(24 + "Unknown type " + i);
        }
      }
      catch (IOException paramObject)
      {
        throw new IllegalStateException((Throwable)paramObject);
      }
      paramObject = (lyi)paramObject;
      int i = c;
      paramlxz.a((lyi)paramObject);
      paramlxz.g(i >>> 3, 4);
      return;
      paramlxz.b((lyi)paramObject);
      return;
    }
  }
  
  int a(Object paramObject)
  {
    int i = 0;
    if (d)
    {
      int m = Array.getLength(paramObject);
      int j = 0;
      for (;;)
      {
        k = i;
        if (j >= m) {
          break;
        }
        k = i;
        if (Array.get(paramObject, j) != null) {
          k = i + b(Array.get(paramObject, j));
        }
        j += 1;
        i = k;
      }
    }
    int k = b(paramObject);
    return k;
  }
  
  final T a(List<lym> paramList)
  {
    int j = 0;
    if (paramList == null)
    {
      paramList = null;
      return paramList;
    }
    if (d)
    {
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      while (i < paramList.size())
      {
        localObject = (lym)paramList.get(i);
        if (b.length != 0)
        {
          localObject = b;
          localArrayList.add(a(lxy.a((byte[])localObject, 0, localObject.length)));
        }
        i += 1;
      }
      int k = localArrayList.size();
      if (k == 0) {
        return null;
      }
      localObject = b.cast(Array.newInstance(b.getComponentType(), k));
      i = j;
      for (;;)
      {
        paramList = (List<lym>)localObject;
        if (i >= k) {
          break;
        }
        Array.set(localObject, i, localArrayList.get(i));
        i += 1;
      }
    }
    if (paramList.isEmpty()) {
      return null;
    }
    Object localObject = (lym)paramList.get(paramList.size() - 1);
    paramList = b;
    localObject = b;
    return (T)paramList.cast(a(lxy.a((byte[])localObject, 0, localObject.length)));
  }
  
  void a(Object paramObject, lxz paramlxz)
  {
    if (d)
    {
      int j = Array.getLength(paramObject);
      int i = 0;
      while (i < j)
      {
        Object localObject = Array.get(paramObject, i);
        if (localObject != null) {
          b(localObject, paramlxz);
        }
        i += 1;
      }
    }
    b(paramObject, paramlxz);
  }
}

/* Location:
 * Qualified Name:     lyc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */