final class kta<K, V>
  extends krz<V>
{
  final ksm<K, V> a;
  
  kta(ksm<K, V> paramksm)
  {
    a = paramksm;
  }
  
  public kyp<V> a()
  {
    return new ktb(this);
  }
  
  public boolean contains(Object paramObject)
  {
    return (paramObject != null) && (kty.a(a(), paramObject));
  }
  
  boolean e()
  {
    return true;
  }
  
  ksf<V> g()
  {
    return new ktc(this, a.e().f());
  }
  
  public int size()
  {
    return a.size();
  }
  
  Object writeReplace()
  {
    return new ktd(a);
  }
}

/* Location:
 * Qualified Name:     kta
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */