import java.io.Serializable;

public final class kxf
  extends kxj<Comparable>
  implements Serializable
{
  public static final kxf a = new kxf();
  private static final long serialVersionUID = 0L;
  private transient kxj<Comparable> b;
  private transient kxj<Comparable> c;
  
  private Object readResolve()
  {
    return a;
  }
  
  public <S extends Comparable> kxj<S> a()
  {
    kxj localkxj2 = b;
    kxj localkxj1 = localkxj2;
    if (localkxj2 == null)
    {
      localkxj1 = super.a();
      b = localkxj1;
    }
    return localkxj1;
  }
  
  public <S extends Comparable> kxj<S> b()
  {
    kxj localkxj2 = c;
    kxj localkxj1 = localkxj2;
    if (localkxj2 == null)
    {
      localkxj1 = super.b();
      c = localkxj1;
    }
    return localkxj1;
  }
  
  public <S extends Comparable> kxj<S> c()
  {
    return kxv.a;
  }
  
  public String toString()
  {
    return "Ordering.natural()";
  }
}

/* Location:
 * Qualified Name:     kxf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */