import java.util.Collection;

public final class krg
{
  static final knk a = knk.a(", ").b("null");
  
  static StringBuilder a(int paramInt)
  {
    aal.c(paramInt, "size");
    return new StringBuilder((int)Math.min(paramInt << 3, 1073741824L));
  }
  
  public static <T> Collection<T> a(Iterable<T> paramIterable)
  {
    return (Collection)paramIterable;
  }
  
  static boolean a(Collection<?> paramCollection, Object paramObject)
  {
    fii.a(paramCollection);
    try
    {
      boolean bool = paramCollection.contains(paramObject);
      return bool;
    }
    catch (ClassCastException paramCollection)
    {
      return false;
    }
    catch (NullPointerException paramCollection) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     krg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */