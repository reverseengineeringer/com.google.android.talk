import com.google.android.gms.common.ConnectionResult;

public final class fli
  implements fig
{
  public fli(flc paramflc) {}
  
  public void a(ConnectionResult paramConnectionResult)
  {
    if (paramConnectionResult.b()) {
      a.a(null, flc.d(a));
    }
    while (flc.e(a) == null) {
      return;
    }
    flc.e(a).a(paramConnectionResult);
  }
  
  public void b(ConnectionResult paramConnectionResult)
  {
    throw new IllegalStateException("Legacy GmsClient received onReportAccountValidation callback.");
  }
}

/* Location:
 * Qualified Name:     fli
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */