import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpParams;

public class aeo
  extends ThreadSafeClientConnManager
{
  private aeo(HttpParams paramHttpParams, SchemeRegistry paramSchemeRegistry)
  {
    super(paramHttpParams, paramSchemeRegistry);
  }
}

/* Location:
 * Qualified Name:     aeo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */