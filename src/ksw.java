import java.io.Serializable;

final class ksw<K, V>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final ksm<K, V> a;
  
  ksw(ksm<K, V> paramksm)
  {
    a = paramksm;
  }
  
  Object readResolve()
  {
    return a.e();
  }
}

/* Location:
 * Qualified Name:     ksw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */