import com.google.android.gms.wearable.internal.PutDataResponse;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.FutureTask;

final class gul
  extends guh<grh>
{
  private final List<FutureTask<Boolean>> a;
  
  gul(fis<grh> paramfis, List<FutureTask<Boolean>> paramList)
  {
    super(paramfis);
    a = paramList;
  }
  
  public void a(PutDataResponse paramPutDataResponse)
  {
    a(new grh(aal.r(b), c));
    if (b != 0)
    {
      paramPutDataResponse = a.iterator();
      while (paramPutDataResponse.hasNext()) {
        ((FutureTask)paramPutDataResponse.next()).cancel(true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     gul
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */