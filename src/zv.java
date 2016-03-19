import android.database.Observable;
import java.util.ArrayList;

public final class zv
  extends Observable<zw>
{
  public void a(int paramInt1, int paramInt2)
  {
    int i = mObservers.size() - 1;
    while (i >= 0)
    {
      ((zw)mObservers.get(i)).a(paramInt1, paramInt2, null);
      i -= 1;
    }
  }
  
  public boolean a()
  {
    return !mObservers.isEmpty();
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    int i = mObservers.size() - 1;
    while (i >= 0)
    {
      ((zw)mObservers.get(i)).a(paramInt1, paramInt2);
      i -= 1;
    }
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    int i = mObservers.size() - 1;
    while (i >= 0)
    {
      ((zw)mObservers.get(i)).b(paramInt1, paramInt2);
      i -= 1;
    }
  }
}

/* Location:
 * Qualified Name:     zv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */