import android.database.Cursor;
import android.database.MatrixCursor;
import com.google.android.gms.common.ConnectionResult;

final class gnz
  extends Thread
{
  public gnz(gny paramgny)
  {
    super("PeopleAggregator-aggregator");
  }
  
  public final void run()
  {
    try
    {
      gny localgny = a;
      aal.b(j.b());
      i.a("agg start");
      if (m != null) {}
      for (Object localObject = m;; localObject = new MatrixCursor(gnv.a))
      {
        localObject = localgny.a(new gob(k), new gob(l), (Cursor)localObject);
        i.a("agg finish");
        i.b("PeopleAggregator");
        b.a(0, (fkg)localObject);
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      aal.a("PeopleAggregator", "Unknown exception during aggregation", localException);
      a.d();
    }
  }
}

/* Location:
 * Qualified Name:     gnz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */