import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;

final class fkd
  extends fe<ConnectionResult>
  implements fif, fih
{
  public final fic a;
  private boolean b;
  private ConnectionResult c;
  
  public fkd(Context paramContext, fic paramfic)
  {
    super(paramContext);
    a = paramfic;
  }
  
  private void b(ConnectionResult paramConnectionResult)
  {
    c = paramConnectionResult;
    if ((p()) && (!q())) {
      b(paramConnectionResult);
    }
  }
  
  public void a(int paramInt) {}
  
  public void a(ConnectionResult paramConnectionResult)
  {
    b = true;
    b(paramConnectionResult);
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    a.a(paramString, paramPrintWriter);
  }
  
  public void a_(Bundle paramBundle)
  {
    b = false;
    b(ConnectionResult.a);
  }
  
  public boolean c()
  {
    return b;
  }
  
  protected void i()
  {
    super.i();
    a.a(this);
    a.a(this);
    if (c != null) {
      b(c);
    }
    if ((!a.e()) && (!a.f()) && (!b)) {
      a.b();
    }
  }
  
  protected void j()
  {
    a.d();
  }
  
  protected void k()
  {
    c = null;
    b = false;
    a.b(this);
    a.b(this);
    a.d();
  }
}

/* Location:
 * Qualified Name:     fkd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */