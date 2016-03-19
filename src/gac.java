import org.apache.http.params.AbstractHttpParams;
import org.apache.http.params.HttpParams;

final class gac
  extends AbstractHttpParams
{
  gac(gab paramgab) {}
  
  public HttpParams copy()
  {
    throw new UnsupportedOperationException();
  }
  
  public Object getParameter(String paramString)
  {
    return null;
  }
  
  public boolean removeParameter(String paramString)
  {
    return true;
  }
  
  public HttpParams setParameter(String paramString, Object paramObject)
  {
    if (!paramString.equals("http.conn-manager.timeout"))
    {
      if (!paramString.equals("http.socket.timeout")) {
        break label39;
      }
      paramString = (Integer)paramObject;
      a.a.a = paramString.intValue();
    }
    label39:
    while (!paramString.equals("http.connection.timeout")) {
      return this;
    }
    paramString = (Integer)paramObject;
    a.a.b = paramString.intValue();
    return this;
  }
}

/* Location:
 * Qualified Name:     gac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */