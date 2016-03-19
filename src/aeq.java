import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.params.HttpParams;

final class aeq
  extends aeo
{
  public aeq(HttpParams paramHttpParams, SchemeRegistry paramSchemeRegistry)
  {
    super(paramHttpParams, paramSchemeRegistry, (byte)0);
  }
  
  protected ClientConnectionOperator createConnectionOperator(SchemeRegistry paramSchemeRegistry)
  {
    return new aeh(paramSchemeRegistry, true);
  }
}

/* Location:
 * Qualified Name:     aeq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */