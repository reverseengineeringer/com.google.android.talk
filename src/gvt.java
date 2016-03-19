import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public final class gvt<E>
  implements Collection<E>, Set<E>
{
  static Object[] a;
  static int b;
  static Object[] c;
  static int d;
  int[] e = gvv.b;
  Object[] f = gvv.d;
  int g = 0;
  gvw<E, E> h;
  
  private static void a(int[] paramArrayOfInt, Object[] paramArrayOfObject, int paramInt)
  {
    if (paramArrayOfInt.length == 8) {
      try
      {
        if (d < 10)
        {
          paramArrayOfObject[0] = c;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt -= 1;
          break label113;
          c = paramArrayOfObject;
          d += 1;
        }
        return;
      }
      finally {}
    }
    if (paramArrayOfInt.length == 4) {}
    for (;;)
    {
      try
      {
        if (b < 10)
        {
          paramArrayOfObject[0] = a;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt -= 1;
          break label130;
          a = paramArrayOfObject;
          b += 1;
        }
        return;
      }
      finally {}
      label113:
      while (paramInt >= 2)
      {
        paramArrayOfObject[paramInt] = null;
        paramInt -= 1;
      }
      break;
      return;
      label130:
      while (paramInt >= 2)
      {
        paramArrayOfObject[paramInt] = null;
        paramInt -= 1;
      }
    }
  }
  
  private void b(int paramInt)
  {
    if (paramInt == 8) {}
    for (;;)
    {
      try
      {
        if (c != null)
        {
          Object[] arrayOfObject1 = c;
          f = arrayOfObject1;
          c = (Object[])arrayOfObject1[0];
          e = ((int[])arrayOfObject1[1]);
          arrayOfObject1[1] = null;
          arrayOfObject1[0] = null;
          d -= 1;
          return;
        }
        e = new int[paramInt];
        f = new Object[paramInt];
        return;
      }
      finally {}
      if (paramInt == 4) {
        try
        {
          if (a != null)
          {
            Object[] arrayOfObject2 = a;
            f = arrayOfObject2;
            a = (Object[])arrayOfObject2[0];
            e = ((int[])arrayOfObject2[1]);
            arrayOfObject2[1] = null;
            arrayOfObject2[0] = null;
            b -= 1;
            return;
          }
        }
        finally {}
      }
    }
  }
  
  int a()
  {
    int m = g;
    int i;
    if (m == 0) {
      i = -1;
    }
    int j;
    do
    {
      do
      {
        return i;
        j = gvv.a(e, m, 0);
        i = j;
      } while (j < 0);
      i = j;
    } while (f[j] == null);
    int k = j + 1;
    while ((k < m) && (e[k] == 0))
    {
      if (f[k] == null) {
        return k;
      }
      k += 1;
    }
    j -= 1;
    for (;;)
    {
      if ((j < 0) || (e[j] != 0)) {
        break label115;
      }
      i = j;
      if (f[j] == null) {
        break;
      }
      j -= 1;
    }
    label115:
    return k ^ 0xFFFFFFFF;
  }
  
  int a(Object paramObject, int paramInt)
  {
    int m = g;
    int i;
    if (m == 0) {
      i = -1;
    }
    int j;
    do
    {
      do
      {
        return i;
        j = gvv.a(e, m, paramInt);
        i = j;
      } while (j < 0);
      i = j;
    } while (paramObject.equals(f[j]));
    int k = j + 1;
    while ((k < m) && (e[k] == paramInt))
    {
      if (paramObject.equals(f[k])) {
        return k;
      }
      k += 1;
    }
    j -= 1;
    for (;;)
    {
      if ((j < 0) || (e[j] != paramInt)) {
        break label150;
      }
      i = j;
      if (paramObject.equals(f[j])) {
        break;
      }
      j -= 1;
    }
    label150:
    return k ^ 0xFFFFFFFF;
  }
  
  public E a(int paramInt)
  {
    int i = 8;
    Object localObject = f[paramInt];
    if (g <= 1)
    {
      a(e, f, g);
      e = gvv.b;
      f = gvv.d;
      g = 0;
    }
    int[] arrayOfInt;
    Object[] arrayOfObject;
    do
    {
      return (E)localObject;
      if ((e.length <= 8) || (g >= e.length / 3)) {
        break;
      }
      if (g > 8) {
        i = g + (g >> 1);
      }
      arrayOfInt = e;
      arrayOfObject = f;
      b(i);
      g -= 1;
      if (paramInt > 0)
      {
        System.arraycopy(arrayOfInt, 0, e, 0, paramInt);
        System.arraycopy(arrayOfObject, 0, f, 0, paramInt);
      }
    } while (paramInt >= g);
    System.arraycopy(arrayOfInt, paramInt + 1, e, paramInt, g - paramInt);
    System.arraycopy(arrayOfObject, paramInt + 1, f, paramInt, g - paramInt);
    return (E)localObject;
    g -= 1;
    if (paramInt < g)
    {
      System.arraycopy(e, paramInt + 1, e, paramInt, g - paramInt);
      System.arraycopy(f, paramInt + 1, f, paramInt, g - paramInt);
    }
    f[g] = null;
    return (E)localObject;
  }
  
  public boolean add(E paramE)
  {
    int k = 8;
    int i;
    int j;
    if (paramE == null)
    {
      i = a();
      j = 0;
    }
    while (i >= 0)
    {
      return false;
      j = paramE.hashCode();
      i = a(paramE, j);
    }
    int m = i ^ 0xFFFFFFFF;
    if (g >= e.length)
    {
      if (g < 8) {
        break label223;
      }
      i = g + (g >> 1);
    }
    for (;;)
    {
      int[] arrayOfInt = e;
      Object[] arrayOfObject = f;
      b(i);
      if (e.length > 0)
      {
        System.arraycopy(arrayOfInt, 0, e, 0, arrayOfInt.length);
        System.arraycopy(arrayOfObject, 0, f, 0, arrayOfObject.length);
      }
      a(arrayOfInt, arrayOfObject, g);
      if (m < g)
      {
        System.arraycopy(e, m, e, m + 1, g - m);
        System.arraycopy(f, m, f, m + 1, g - m);
      }
      e[m] = j;
      f[m] = paramE;
      g += 1;
      return true;
      label223:
      i = k;
      if (g < 4) {
        i = 4;
      }
    }
  }
  
  public boolean addAll(Collection<? extends E> paramCollection)
  {
    boolean bool = false;
    int i = g + paramCollection.size();
    if (e.length < i)
    {
      int[] arrayOfInt = e;
      Object[] arrayOfObject = f;
      b(i);
      if (g > 0)
      {
        System.arraycopy(arrayOfInt, 0, e, 0, g);
        System.arraycopy(arrayOfObject, 0, f, 0, g);
      }
      a(arrayOfInt, arrayOfObject, g);
    }
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      bool |= add(paramCollection.next());
    }
    return bool;
  }
  
  public void clear()
  {
    if (g != 0)
    {
      a(e, f, g);
      e = gvv.b;
      f = gvv.d;
      g = 0;
    }
  }
  
  public boolean contains(Object paramObject)
  {
    if (paramObject == null) {
      if (a() < 0) {}
    }
    while (a(paramObject, paramObject.hashCode()) >= 0)
    {
      return true;
      return false;
    }
    return false;
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!contains(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    for (;;)
    {
      return true;
      if ((paramObject instanceof Set))
      {
        paramObject = (Set)paramObject;
        if (size() != ((Set)paramObject).size()) {
          return false;
        }
        int i = 0;
        try
        {
          while (i < g)
          {
            boolean bool = ((Set)paramObject).contains(f[i]);
            if (!bool) {
              return false;
            }
            i += 1;
          }
          return false;
        }
        catch (NullPointerException paramObject)
        {
          return false;
        }
        catch (ClassCastException paramObject)
        {
          return false;
        }
      }
    }
  }
  
  public int hashCode()
  {
    int i = 0;
    int[] arrayOfInt = e;
    int k = g;
    int j = 0;
    while (i < k)
    {
      j += arrayOfInt[i];
      i += 1;
    }
    return j;
  }
  
  public boolean isEmpty()
  {
    return g <= 0;
  }
  
  public Iterator<E> iterator()
  {
    if (h == null) {
      h = new gvu(this);
    }
    return h.e().iterator();
  }
  
  public boolean remove(Object paramObject)
  {
    if (paramObject == null) {}
    for (int i = a(); i >= 0; i = a(paramObject, paramObject.hashCode()))
    {
      a(i);
      return true;
    }
    return false;
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    boolean bool = false;
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      bool |= remove(paramCollection.next());
    }
    return bool;
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    int i = g;
    boolean bool = false;
    i -= 1;
    while (i >= 0)
    {
      if (!paramCollection.contains(f[i]))
      {
        a(i);
        bool = true;
      }
      i -= 1;
    }
    return bool;
  }
  
  public int size()
  {
    return g;
  }
  
  public Object[] toArray()
  {
    Object[] arrayOfObject = new Object[g];
    System.arraycopy(f, 0, arrayOfObject, 0, g);
    return arrayOfObject;
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    if (paramArrayOfT.length < g) {
      paramArrayOfT = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), g);
    }
    for (;;)
    {
      System.arraycopy(f, 0, paramArrayOfT, 0, g);
      if (paramArrayOfT.length > g) {
        paramArrayOfT[g] = null;
      }
      return paramArrayOfT;
    }
  }
  
  public String toString()
  {
    if (isEmpty()) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(g * 14);
    localStringBuilder.append('{');
    int i = 0;
    if (i < g)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      Object localObject = f[i];
      if (localObject != this) {
        localStringBuilder.append(localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("(this Set)");
      }
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     gvt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */