import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

public abstract class krz<E>
  extends AbstractCollection<E>
  implements Serializable
{
  private transient ksf<E> a;
  
  int a(Object[] paramArrayOfObject, int paramInt)
  {
    kyp localkyp = a();
    while (localkyp.hasNext())
    {
      paramArrayOfObject[paramInt] = localkyp.next();
      paramInt += 1;
    }
    return paramInt;
  }
  
  public abstract kyp<E> a();
  
  @Deprecated
  public final boolean add(E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean addAll(Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }
  
  public abstract boolean contains(Object paramObject);
  
  abstract boolean e();
  
  public ksf<E> f()
  {
    ksf localksf2 = a;
    ksf localksf1 = localksf2;
    if (localksf2 == null)
    {
      localksf1 = g();
      a = localksf1;
    }
    return localksf1;
  }
  
  ksf<E> g()
  {
    switch (size())
    {
    default: 
      return new kxl(this, toArray());
    case 0: 
      return kxr.a;
    }
    return ksf.a(a().next());
  }
  
  @Deprecated
  public final boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public final Object[] toArray()
  {
    int i = size();
    if (i == 0) {
      return kxi.a;
    }
    Object[] arrayOfObject = new Object[i];
    a(arrayOfObject, 0);
    return arrayOfObject;
  }
  
  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    fii.a(paramArrayOfT);
    int i = size();
    Object localObject;
    if (paramArrayOfT.length < i) {
      localObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), i);
    }
    for (;;)
    {
      a((Object[])localObject, 0);
      return (T[])localObject;
      localObject = paramArrayOfT;
      if (paramArrayOfT.length > i)
      {
        paramArrayOfT[i] = null;
        localObject = paramArrayOfT;
      }
    }
  }
  
  Object writeReplace()
  {
    return new ksj(toArray());
  }
}

/* Location:
 * Qualified Name:     krz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */