import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.Collection;
import java.util.Iterator;

public final class kty
{
  static final kyq<Object> a = new ktz();
  private static final Iterator<Object> b = new kuc();
  
  public static <F, T> Iterator<T> a(Iterator<F> paramIterator, knj<? super F, ? extends T> paramknj)
  {
    fii.a(paramknj);
    return new kyn(paramIterator, paramknj);
  }
  
  public static <T> kyp<T> a(T paramT)
  {
    return new kub(paramT);
  }
  
  public static <T> kyp<T> a(Iterator<T> paramIterator)
  {
    fii.a(paramIterator);
    if ((paramIterator instanceof kyp)) {
      return (kyp)paramIterator;
    }
    return new kud(paramIterator);
  }
  
  public static <T> kyp<T> a(T... paramVarArgs)
  {
    return a(paramVarArgs, 0, paramVarArgs.length, 0);
  }
  
  static <T> kyq<T> a(T[] paramArrayOfT, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      fii.a(paramInt1, paramInt1 + paramInt2, paramArrayOfT.length);
      fii.b(paramInt3, paramInt2);
      if (paramInt2 != 0) {
        break;
      }
      return a;
    }
    return new kua(paramInt2, paramInt3, paramArrayOfT, paramInt1);
  }
  
  public static <T> boolean a(Collection<T> paramCollection, Iterator<? extends T> paramIterator)
  {
    fii.a(paramCollection);
    fii.a(paramIterator);
    boolean bool = false;
    while (paramIterator.hasNext()) {
      bool |= paramCollection.add(paramIterator.next());
    }
    return bool;
  }
  
  public static boolean a(Iterator<?> paramIterator, Object paramObject)
  {
    boolean bool = false;
    paramObject = knt.a(paramObject);
    fii.a(paramObject, "predicate");
    int i = 0;
    if (paramIterator.hasNext()) {
      if (!((kns)paramObject).a(paramIterator.next())) {}
    }
    for (;;)
    {
      if (i != -1) {
        bool = true;
      }
      return bool;
      i += 1;
      break;
      i = -1;
    }
  }
  
  public static boolean a(Iterator<?> paramIterator, Collection<?> paramCollection)
  {
    paramCollection = knt.a(paramCollection);
    fii.a(paramCollection);
    boolean bool = false;
    while (paramIterator.hasNext()) {
      if (paramCollection.a(paramIterator.next()))
      {
        paramIterator.remove();
        bool = true;
      }
    }
    return bool;
  }
  
  public static boolean a(Iterator<?> paramIterator1, Iterator<?> paramIterator2)
  {
    if (paramIterator1.hasNext()) {
      if (paramIterator2.hasNext()) {}
    }
    while (paramIterator2.hasNext())
    {
      return false;
      if (StressMode.a(paramIterator1.next(), paramIterator2.next())) {
        break;
      }
      return false;
    }
    return true;
  }
  
  public static <T> T b(Iterator<T> paramIterator)
  {
    Object localObject = paramIterator.next();
    if (!paramIterator.hasNext()) {
      return (T)localObject;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localObject = String.valueOf(localObject);
    localStringBuilder.append(String.valueOf(localObject).length() + 31 + "expected one element but was: <" + (String)localObject);
    int i = 0;
    while ((i < 4) && (paramIterator.hasNext()))
    {
      localObject = String.valueOf(paramIterator.next());
      localStringBuilder.append(String.valueOf(localObject).length() + 2 + ", " + (String)localObject);
      i += 1;
    }
    if (paramIterator.hasNext()) {
      localStringBuilder.append(", ...");
    }
    localStringBuilder.append('>');
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public static <T> T b(Iterator<? extends T> paramIterator, T paramT)
  {
    if (paramIterator.hasNext()) {
      return (T)paramIterator.next();
    }
    return null;
  }
  
  static void c(Iterator<?> paramIterator)
  {
    fii.a(paramIterator);
    while (paramIterator.hasNext())
    {
      paramIterator.next();
      paramIterator.remove();
    }
  }
  
  public static <T> kxk<T> d(Iterator<? extends T> paramIterator)
  {
    if ((paramIterator instanceof kue)) {
      return (kue)paramIterator;
    }
    return new kue(paramIterator);
  }
}

/* Location:
 * Qualified Name:     kty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */