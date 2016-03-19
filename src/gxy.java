import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import java.util.Map;

class gxy
{
  private Map<gxn, fif> a = new hq();
  private Map<gxo, fih> b = new hq();
  
  public <O> fhw a(gxj<O> paramgxj)
  {
    if ((paramgxj instanceof gxw)) {
      return ((gxw)paramgxj).a();
    }
    return null;
  }
  
  public fic a(gxk paramgxk)
  {
    if ((paramgxk instanceof gyg)) {
      return ((gyg)paramgxk).d();
    }
    return null;
  }
  
  public fif a(gxn paramgxn)
  {
    if (a.containsKey(paramgxn)) {
      return (fif)a.get(paramgxn);
    }
    gxz localgxz = new gxz(this, paramgxn);
    a.put(paramgxn, localgxz);
    return localgxz;
  }
  
  public fih a(gxo paramgxo)
  {
    if (b.containsKey(paramgxo)) {
      return (fih)b.get(paramgxo);
    }
    gya localgya = new gya(this, paramgxo);
    b.put(paramgxo, localgya);
    return localgya;
  }
  
  public gxf a(ConnectionResult paramConnectionResult)
  {
    return new gxx(paramConnectionResult);
  }
  
  public gxp<avb> a(fij<Status> paramfij)
  {
    return new gxp(paramfij, gyd.a);
  }
}

/* Location:
 * Qualified Name:     gxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */