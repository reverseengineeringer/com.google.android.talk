import android.os.RemoteException;

public final class gjh
{
  private final gka a;
  
  public gjh(gka paramgka)
  {
    a = ((gka)aal.d(paramgka));
  }
  
  public void a()
  {
    try
    {
      a.g();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ax(localRemoteException);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof gjh)) {
      return false;
    }
    try
    {
      boolean bool = a.a(a);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new ax((RemoteException)paramObject);
    }
  }
  
  public int hashCode()
  {
    try
    {
      int i = a.k();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ax(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     gjh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */