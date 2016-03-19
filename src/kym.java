import java.util.Comparator;
import java.util.List;

 enum kym
{
  kym() {}
  
  public <E> int a(Comparator<? super E> paramComparator, E paramE, List<? extends E> paramList, int paramInt)
  {
    return c.a(paramComparator, paramE, paramList, paramInt) - 1;
  }
}

/* Location:
 * Qualified Name:     kym
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */