import java.io.Serializable;

final class ktd<V>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final ksm<?, V> a;
  
  ktd(ksm<?, V> paramksm)
  {
    a = paramksm;
  }
  
  Object readResolve()
  {
    return a.c();
  }
}

/* Location:
 * Qualified Name:     ktd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */