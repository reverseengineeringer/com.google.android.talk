import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;

public class fxr
{
  public final ViewGroup a;
  public final gfz b;
  public View c;
  
  public fxr(ViewGroup paramViewGroup, gfz paramgfz)
  {
    b = ((gfz)aal.d(paramgfz));
    a = ((ViewGroup)aal.d(paramViewGroup));
  }
  
  public void a()
  {
    try
    {
      b.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ax(localRemoteException);
    }
  }
  
  public void a(Bundle paramBundle)
  {
    try
    {
      b.a(paramBundle);
      c = ((View)fya.a(b.f()));
      a.removeAllViews();
      a.addView(c);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new ax(paramBundle);
    }
  }
  
  public void a(gfm paramgfm)
  {
    try
    {
      b.a(new gfk(this, paramgfm));
      return;
    }
    catch (RemoteException paramgfm)
    {
      throw new ax(paramgfm);
    }
  }
  
  public void b()
  {
    try
    {
      b.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ax(localRemoteException);
    }
  }
  
  public void c()
  {
    try
    {
      b.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ax(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     fxr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */