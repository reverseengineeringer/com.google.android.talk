import java.util.Comparator;

final class kts
  extends ksr
{
  private static final long serialVersionUID = 0L;
  private final Comparator<Object> a;
  
  kts(kto<?, ?> paramkto)
  {
    super(paramkto);
    a = paramkto.comparator();
  }
  
  Object readResolve()
  {
    return a(new ktr(a));
  }
}

/* Location:
 * Qualified Name:     kts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */