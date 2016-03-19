import java.util.Map.Entry;

abstract class ksv<K, V>
  extends kth<Map.Entry<K, V>>
{
  boolean Z_()
  {
    return b().i();
  }
  
  abstract ksm<K, V> b();
  
  public boolean contains(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      Object localObject = b().get(((Map.Entry)paramObject).getKey());
      bool1 = bool2;
      if (localObject != null)
      {
        bool1 = bool2;
        if (localObject.equals(((Map.Entry)paramObject).getValue())) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  boolean e()
  {
    return b().d();
  }
  
  public int hashCode()
  {
    return b().hashCode();
  }
  
  public int size()
  {
    return b().size();
  }
  
  Object writeReplace()
  {
    return new ksw(b());
  }
}

/* Location:
 * Qualified Name:     ksv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */