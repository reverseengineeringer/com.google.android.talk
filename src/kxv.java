import java.io.Serializable;

final class kxv
  extends kxj<Comparable>
  implements Serializable
{
  static final kxv a = new kxv();
  private static final long serialVersionUID = 0L;
  
  private Object readResolve()
  {
    return a;
  }
  
  public <S extends Comparable> kxj<S> c()
  {
    return kxf.a;
  }
  
  public String toString()
  {
    return "Ordering.natural().reverse()";
  }
}

/* Location:
 * Qualified Name:     kxv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */