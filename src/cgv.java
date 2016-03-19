import com.google.android.apps.hangouts.hangout.HangoutSelfMenu;
import java.util.Iterator;
import java.util.List;

public final class cgv
  extends hku
{
  public cgv(HangoutSelfMenu paramHangoutSelfMenu)
  {
    super((byte)0);
  }
  
  public void a(hil paramhil)
  {
    if ((paramhil instanceof hir))
    {
      paramhil = a.b.iterator();
      while (paramhil.hasNext()) {
        ((cgp)paramhil.next()).a(a.a.r());
      }
    }
  }
  
  public void b(int paramInt)
  {
    Iterator localIterator = a.b.iterator();
    while (localIterator.hasNext()) {
      ((cgp)localIterator.next()).a(a.a.r());
    }
  }
  
  public void c()
  {
    Iterator localIterator = a.b.iterator();
    while (localIterator.hasNext()) {
      ((cgp)localIterator.next()).a(a.a.r());
    }
  }
  
  public void c(hkx paramhkx)
  {
    Iterator localIterator = a.b.iterator();
    while (localIterator.hasNext()) {
      ((cgp)localIterator.next()).a(paramhkx);
    }
  }
}

/* Location:
 * Qualified Name:     cgv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */