import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

final class kxu<E>
  extends ktu<E>
{
  static final kxu<Comparable> c = new kxu(kxr.a, kxf.a);
  private final transient ksf<E> d;
  
  kxu(ksf<E> paramksf, Comparator<? super E> paramComparator)
  {
    super(paramComparator);
    d = paramksf;
  }
  
  int a(Object paramObject)
  {
    if (paramObject == null) {}
    for (;;)
    {
      return -1;
      try
      {
        int i = aal.a(d, paramObject, a, kyh.a, kyd.c);
        if (i >= 0) {
          return i;
        }
      }
      catch (ClassCastException paramObject) {}
    }
    return -1;
  }
  
  int a(Object[] paramArrayOfObject, int paramInt)
  {
    return d.a(paramArrayOfObject, paramInt);
  }
  
  ktu<E> a(E paramE, boolean paramBoolean)
  {
    return a(0, e(paramE, paramBoolean));
  }
  
  ktu<E> a(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2)
  {
    return b(paramE1, paramBoolean1).a(paramE2, paramBoolean2);
  }
  
  kxu<E> a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 == size())) {
      return this;
    }
    if (paramInt1 < paramInt2) {
      return new kxu(d.a(paramInt1, paramInt2), a);
    }
    return a(a);
  }
  
  public kyp<E> a()
  {
    return d.a();
  }
  
  ktu<E> b(E paramE, boolean paramBoolean)
  {
    return a(f(paramE, paramBoolean), size());
  }
  
  public kyp<E> c()
  {
    return d.d().a();
  }
  
  public E ceiling(E paramE)
  {
    int i = f(paramE, true);
    if (i == size()) {
      return null;
    }
    return (E)d.get(i);
  }
  
  public boolean contains(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null) {}
    try
    {
      int i = Collections.binarySearch(d, paramObject, a);
      bool1 = bool2;
      if (i >= 0) {
        bool1 = true;
      }
      return bool1;
    }
    catch (ClassCastException paramObject) {}
    return false;
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    boolean bool2 = true;
    Object localObject = paramCollection;
    if ((paramCollection instanceof kxe)) {
      localObject = ((kxe)paramCollection).a();
    }
    boolean bool1;
    if ((!aal.a(comparator(), (Iterable)localObject)) || (((Collection)localObject).size() <= 1)) {
      bool1 = super.containsAll((Collection)localObject);
    }
    for (;;)
    {
      return bool1;
      kxk localkxk = kty.d(a());
      localObject = ((Collection)localObject).iterator();
      paramCollection = ((Iterator)localObject).next();
      try
      {
        for (;;)
        {
          if (localkxk.hasNext())
          {
            int i = a(localkxk.a(), paramCollection);
            if (i < 0)
            {
              localkxk.next();
            }
            else
            {
              if (i == 0)
              {
                bool1 = bool2;
                if (!((Iterator)localObject).hasNext()) {
                  break;
                }
                paramCollection = ((Iterator)localObject).next();
                continue;
              }
              if (i > 0) {
                return false;
              }
            }
          }
        }
      }
      catch (ClassCastException paramCollection)
      {
        return false;
        return false;
      }
      catch (NullPointerException paramCollection) {}
    }
    return false;
  }
  
  ktu<E> d()
  {
    kxj localkxj = kxj.a(a).c();
    if (isEmpty()) {
      return a(localkxj);
    }
    return new kxu(d.d(), localkxj);
  }
  
  int e(E paramE, boolean paramBoolean)
  {
    ksf localksf = d;
    Object localObject = fii.a(paramE);
    Comparator localComparator = comparator();
    if (paramBoolean) {}
    for (paramE = kyh.d;; paramE = kyh.c) {
      return aal.a(localksf, localObject, localComparator, paramE, kyd.b);
    }
  }
  
  boolean e()
  {
    return d.e();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    for (;;)
    {
      return true;
      if (!(paramObject instanceof Set)) {
        return false;
      }
      paramObject = (Set)paramObject;
      if (size() != ((Set)paramObject).size()) {
        return false;
      }
      if (!isEmpty()) {
        if (aal.a(a, (Iterable)paramObject))
        {
          paramObject = ((Set)paramObject).iterator();
          try
          {
            kyp localkyp = a();
            int i;
            do
            {
              if (!localkyp.hasNext()) {
                break;
              }
              Object localObject1 = localkyp.next();
              Object localObject2 = ((Iterator)paramObject).next();
              if (localObject2 == null) {
                break label109;
              }
              i = a(localObject1, localObject2);
            } while (i == 0);
            label109:
            return false;
          }
          catch (ClassCastException paramObject)
          {
            return false;
          }
          catch (NoSuchElementException paramObject)
          {
            return false;
          }
        }
      }
    }
    return containsAll((Collection)paramObject);
  }
  
  int f(E paramE, boolean paramBoolean)
  {
    ksf localksf = d;
    Object localObject = fii.a(paramE);
    Comparator localComparator = comparator();
    if (paramBoolean) {}
    for (paramE = kyh.c;; paramE = kyh.d) {
      return aal.a(localksf, localObject, localComparator, paramE, kyd.b);
    }
  }
  
  public E first()
  {
    if (isEmpty()) {
      throw new NoSuchElementException();
    }
    return (E)d.get(0);
  }
  
  public E floor(E paramE)
  {
    int i = e(paramE, true) - 1;
    if (i == -1) {
      return null;
    }
    return (E)d.get(i);
  }
  
  ksf<E> g()
  {
    if (size() <= 1) {
      return d;
    }
    return new ktn(this, d);
  }
  
  public E higher(E paramE)
  {
    int i = f(paramE, false);
    if (i == size()) {
      return null;
    }
    return (E)d.get(i);
  }
  
  public E last()
  {
    if (isEmpty()) {
      throw new NoSuchElementException();
    }
    return (E)d.get(size() - 1);
  }
  
  public E lower(E paramE)
  {
    int i = e(paramE, false) - 1;
    if (i == -1) {
      return null;
    }
    return (E)d.get(i);
  }
  
  public int size()
  {
    return d.size();
  }
}

/* Location:
 * Qualified Name:     kxu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */