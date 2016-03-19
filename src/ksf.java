import com.google.android.apps.hangouts.hangout.StressMode;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public abstract class ksf<E>
  extends krz<E>
  implements List<E>, RandomAccess
{
  public static <E> ksf<E> a(E paramE)
  {
    return new kya(paramE);
  }
  
  public static <E> ksf<E> a(Collection<? extends E> paramCollection)
  {
    if ((paramCollection instanceof krz))
    {
      ksf localksf = ((krz)paramCollection).f();
      paramCollection = localksf;
      if (localksf.e())
      {
        paramCollection = localksf.toArray();
        paramCollection = b(paramCollection, paramCollection.length);
      }
      return paramCollection;
    }
    paramCollection = paramCollection.toArray();
    paramCollection = kxi.b(paramCollection, paramCollection.length);
    return b(paramCollection, paramCollection.length);
  }
  
  public static <E> ksf<E> a(E[] paramArrayOfE)
  {
    switch (paramArrayOfE.length)
    {
    default: 
      paramArrayOfE = (Object[])paramArrayOfE.clone();
      return new kxr(kxi.b(paramArrayOfE, paramArrayOfE.length));
    case 0: 
      return kxr.a;
    }
    return new kya(paramArrayOfE[0]);
  }
  
  public static <E> ksf<E> b(Object[] paramArrayOfObject, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      Object[] arrayOfObject = paramArrayOfObject;
      if (paramInt < paramArrayOfObject.length) {
        arrayOfObject = kxi.a(paramArrayOfObject, paramInt);
      }
      return new kxr(arrayOfObject);
    case 0: 
      return kxr.a;
    }
    return new kya(paramArrayOfObject[0]);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    throw new InvalidObjectException("Use SerializedForm");
  }
  
  int a(Object[] paramArrayOfObject, int paramInt)
  {
    int j = size();
    int i = 0;
    while (i < j)
    {
      paramArrayOfObject[(paramInt + i)] = get(i);
      i += 1;
    }
    return paramInt + j;
  }
  
  public ksf<E> a(int paramInt1, int paramInt2)
  {
    fii.a(paramInt1, paramInt2, size());
    int i = paramInt2 - paramInt1;
    if (i == size()) {
      return this;
    }
    switch (i)
    {
    default: 
      return b(paramInt1, paramInt2);
    case 0: 
      return kxr.a;
    }
    return a(get(paramInt1));
  }
  
  public kyp<E> a()
  {
    return c();
  }
  
  public kyq<E> a(int paramInt)
  {
    return new ksg(this, size(), paramInt);
  }
  
  @Deprecated
  public final void add(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean addAll(int paramInt, Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  ksf<E> b(int paramInt1, int paramInt2)
  {
    return new ksk(this, paramInt1, paramInt2 - paramInt1);
  }
  
  public kyq<E> c()
  {
    return a(0);
  }
  
  public boolean contains(Object paramObject)
  {
    return indexOf(paramObject) >= 0;
  }
  
  public ksf<E> d()
  {
    if (size() <= 1) {
      return this;
    }
    return new ksi(this);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == fii.a(this)) {}
    for (;;)
    {
      return true;
      if (!(paramObject instanceof List)) {
        return false;
      }
      paramObject = (List)paramObject;
      int j = size();
      if (j != ((List)paramObject).size()) {
        return false;
      }
      if ((!(this instanceof RandomAccess)) || (!(paramObject instanceof RandomAccess))) {
        break;
      }
      int i = 0;
      while (i < j)
      {
        if (!StressMode.a(get(i), ((List)paramObject).get(i))) {
          return false;
        }
        i += 1;
      }
    }
    return kty.a(iterator(), ((List)paramObject).iterator());
  }
  
  public final ksf<E> f()
  {
    return this;
  }
  
  public int hashCode()
  {
    int j = 1;
    int k = size();
    int i = 0;
    while (i < k)
    {
      j = j * 31 + get(i).hashCode() ^ 0xFFFFFFFF ^ 0xFFFFFFFF;
      i += 1;
    }
    return j;
  }
  
  public int indexOf(Object paramObject)
  {
    int i = 0;
    int j = 0;
    if (paramObject != null)
    {
      if ((this instanceof RandomAccess))
      {
        int k = size();
        if (paramObject == null)
        {
          i = j;
          while (i < k)
          {
            if (get(i) == null) {
              return i;
            }
            i += 1;
          }
        }
        do
        {
          i += 1;
          if (i >= k) {
            break;
          }
        } while (!paramObject.equals(get(i)));
        return i;
        return -1;
      }
      ListIterator localListIterator = listIterator();
      while (localListIterator.hasNext()) {
        if (StressMode.a(paramObject, localListIterator.next())) {
          return localListIterator.previousIndex();
        }
      }
    }
    return -1;
  }
  
  public int lastIndexOf(Object paramObject)
  {
    if (paramObject != null)
    {
      if ((this instanceof RandomAccess))
      {
        int j;
        if (paramObject == null)
        {
          i = size() - 1;
          while (i >= 0)
          {
            if (get(i) == null)
            {
              j = i;
              return j;
            }
            i -= 1;
          }
        }
        int i = size() - 1;
        for (;;)
        {
          if (i < 0) {
            break label85;
          }
          j = i;
          if (paramObject.equals(get(i))) {
            break;
          }
          i -= 1;
        }
        label85:
        return -1;
      }
      ListIterator localListIterator = listIterator(size());
      while (localListIterator.hasPrevious()) {
        if (StressMode.a(paramObject, localListIterator.previous())) {
          return localListIterator.nextIndex();
        }
      }
    }
    return -1;
  }
  
  @Deprecated
  public final E remove(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final E set(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  Object writeReplace()
  {
    return new ksj(toArray());
  }
}

/* Location:
 * Qualified Name:     ksf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */