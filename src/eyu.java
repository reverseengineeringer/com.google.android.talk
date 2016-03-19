import java.io.Serializable;

public final class eyu<F extends Serializable, S extends Serializable>
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final F a;
  public final S b;
  
  public eyu(F paramF, S paramS)
  {
    a = paramF;
    b = paramS;
  }
}

/* Location:
 * Qualified Name:     eyu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */