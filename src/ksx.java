import java.util.Map.Entry;

final class ksx<K, V>
  extends ksv<K, V>
{
  private final transient ksm<K, V> a;
  private final transient Map.Entry<K, V>[] b;
  
  ksx(ksm<K, V> paramksm, Map.Entry<K, V>[] paramArrayOfEntry)
  {
    a = paramksm;
    b = paramArrayOfEntry;
  }
  
  public kyp<Map.Entry<K, V>> a()
  {
    return f().a();
  }
  
  ksm<K, V> b()
  {
    return a;
  }
  
  ksf<Map.Entry<K, V>> g()
  {
    return new kxl(this, b);
  }
}

/* Location:
 * Qualified Name:     ksx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */