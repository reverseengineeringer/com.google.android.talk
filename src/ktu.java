import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Comparator;
import java.util.NavigableSet;

public abstract class ktu<E>
  extends ktx<E>
  implements NavigableSet<E>, kyc<E>
{
  final transient Comparator<? super E> a;
  transient ktu<E> b;
  
  ktu(Comparator<? super E> paramComparator)
  {
    a = paramComparator;
  }
  
  static <E> kxu<E> a(Comparator<? super E> paramComparator)
  {
    if (kxf.a.equals(paramComparator)) {
      return kxu.c;
    }
    return new kxu(kxr.a, paramComparator);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    throw new InvalidObjectException("Use SerializedForm");
  }
  
  abstract int a(Object paramObject);
  
  int a(Object paramObject1, Object paramObject2)
  {
    return a.compare(paramObject1, paramObject2);
  }
  
  abstract ktu<E> a(E paramE, boolean paramBoolean);
  
  abstract ktu<E> a(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2);
  
  public abstract kyp<E> a();
  
  public ktu<E> b()
  {
    ktu localktu2 = b;
    ktu localktu1 = localktu2;
    if (localktu2 == null)
    {
      localktu1 = d();
      b = localktu1;
      b = this;
    }
    return localktu1;
  }
  
  public ktu<E> b(E paramE1, E paramE2)
  {
    return b(paramE1, true, paramE2, false);
  }
  
  abstract ktu<E> b(E paramE, boolean paramBoolean);
  
  public ktu<E> b(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2)
  {
    fii.a(paramE1);
    fii.a(paramE2);
    if (a.compare(paramE1, paramE2) <= 0) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      return a(paramE1, paramBoolean1, paramE2, paramBoolean2);
    }
  }
  
  public ktu<E> c(E paramE)
  {
    return c(paramE, false);
  }
  
  public ktu<E> c(E paramE, boolean paramBoolean)
  {
    return a(fii.a(paramE), paramBoolean);
  }
  
  public abstract kyp<E> c();
  
  public E ceiling(E paramE)
  {
    return (E)aal.c(d(paramE, true));
  }
  
  public Comparator<? super E> comparator()
  {
    return a;
  }
  
  ktu<E> d()
  {
    return new krl(this);
  }
  
  public ktu<E> d(E paramE)
  {
    return d(paramE, true);
  }
  
  public ktu<E> d(E paramE, boolean paramBoolean)
  {
    return b(fii.a(paramE), paramBoolean);
  }
  
  public E first()
  {
    return (E)a().next();
  }
  
  public E floor(E paramE)
  {
    return (E)kty.b(c(paramE, true).c(), null);
  }
  
  public E higher(E paramE)
  {
    return (E)aal.c(d(paramE, false));
  }
  
  public E last()
  {
    return (E)c().next();
  }
  
  public E lower(E paramE)
  {
    return (E)kty.b(c(paramE, false).c(), null);
  }
  
  @Deprecated
  public final E pollFirst()
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final E pollLast()
  {
    throw new UnsupportedOperationException();
  }
  
  Object writeReplace()
  {
    return new ktw(a, toArray());
  }
}

/* Location:
 * Qualified Name:     ktu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */