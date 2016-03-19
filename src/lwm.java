import java.util.Map.Entry;

final class lwm<K>
  implements Map.Entry<K, Object>
{
  private Map.Entry<K, lwl> a;
  
  lwm(Map.Entry<K, lwl> paramEntry)
  {
    a = paramEntry;
  }
  
  public K getKey()
  {
    return (K)a.getKey();
  }
  
  public Object getValue()
  {
    lwl locallwl = (lwl)a.getValue();
    if (locallwl == null) {
      return null;
    }
    return locallwl.a();
  }
  
  public Object setValue(Object paramObject)
  {
    if (!(paramObject instanceof lwp)) {
      throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
    return ((lwl)a.getValue()).b((lwp)paramObject);
  }
}

/* Location:
 * Qualified Name:     lwm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */