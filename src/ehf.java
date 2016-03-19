import java.util.Iterator;
import java.util.List;

final class ehf
  implements Runnable
{
  ehf(ehd paramehd, dtt paramdtt) {}
  
  public void run()
  {
    ehd localehd = b;
    Object localObject = localehd.b(a.c());
    if ((localObject == null) || (((List)localObject).size() == 0)) {}
    do
    {
      return;
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        bet localbet = (bet)((Iterator)localObject).next();
        localbet.a().a(localbet);
      }
    } while (!ehd.a);
    localehd.b();
  }
}

/* Location:
 * Qualified Name:     ehf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */