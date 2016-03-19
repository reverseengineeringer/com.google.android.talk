import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

abstract class gvw<K, V>
{
  gvy b;
  
  public static <T> boolean a(Set<T> paramSet, Object paramObject)
  {
    if (paramSet == paramObject) {}
    for (;;)
    {
      return true;
      if ((paramObject instanceof Set))
      {
        paramObject = (Set)paramObject;
        try
        {
          if (paramSet.size() == ((Set)paramObject).size())
          {
            boolean bool = paramSet.containsAll((Collection)paramObject);
            if (bool) {}
          }
          else
          {
            return false;
          }
        }
        catch (NullPointerException paramSet)
        {
          return false;
        }
        catch (ClassCastException paramSet)
        {
          return false;
        }
      }
    }
    return false;
  }
  
  protected abstract int a();
  
  protected abstract int a(Object paramObject);
  
  protected abstract Object a(int paramInt);
  
  public <T> T[] a()
  {
    int j = a();
    Object[] arrayOfObject;
    if (arrayOfObject.length < j) {
      arrayOfObject = (Object[])Array.newInstance(arrayOfObject.getClass().getComponentType(), j);
    }
    for (;;)
    {
      int i = 0;
      while (i < j)
      {
        arrayOfObject[i] = a(i);
        i += 1;
      }
      if (arrayOfObject.length > j) {
        arrayOfObject[j] = null;
      }
      return arrayOfObject;
    }
  }
  
  protected abstract Map<K, V> b();
  
  protected abstract void b(int paramInt);
  
  protected abstract void c();
  
  public Object[] d()
  {
    int j = a();
    Object[] arrayOfObject = new Object[j];
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = a(i);
      i += 1;
    }
    return arrayOfObject;
  }
  
  public Set<K> e()
  {
    if (b == null) {
      b = new gvy(this);
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     gvw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */