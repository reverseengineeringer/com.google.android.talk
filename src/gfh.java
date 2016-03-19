import android.os.RemoteException;
import com.google.android.gms.maps.model.MarkerOptions;

public final class gfh
{
  public final gfq a;
  
  protected gfh(gfq paramgfq)
  {
    a = ((gfq)aal.d(paramgfq));
  }
  
  public final gjh a(MarkerOptions paramMarkerOptions)
  {
    try
    {
      paramMarkerOptions = a.a(paramMarkerOptions);
      if (paramMarkerOptions != null)
      {
        paramMarkerOptions = new gjh(paramMarkerOptions);
        return paramMarkerOptions;
      }
      return null;
    }
    catch (RemoteException paramMarkerOptions)
    {
      throw new ax(paramMarkerOptions);
    }
  }
}

/* Location:
 * Qualified Name:     gfh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */