import java.util.Comparator;
import java.util.List;

 enum kyl
{
  kyl() {}
  
  public <E> int a(Comparator<? super E> paramComparator, E paramE, List<? extends E> paramList, int paramInt)
  {
    return b.a(paramComparator, paramE, paramList, paramInt) + 1;
  }
}

/* Location:
 * Qualified Name:     kyl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */