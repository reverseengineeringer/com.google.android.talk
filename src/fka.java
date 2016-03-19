import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;

final class fka
  implements fih
{
  public final int a;
  public final fic b;
  public final fih c;
  
  public fka(fjz paramfjz, int paramInt, fic paramfic, fih paramfih)
  {
    a = paramInt;
    b = paramfic;
    c = paramfih;
    paramfic.a(this);
  }
  
  public void a()
  {
    b.b(this);
    b.d();
  }
  
  public void a(ConnectionResult paramConnectionResult)
  {
    fjz.e(d).post(new fkb(d, a, paramConnectionResult));
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.append(paramString).append("GoogleApiClient #").print(a);
    paramPrintWriter.println(":");
    b.a(paramString + "  ", paramPrintWriter);
  }
}

/* Location:
 * Qualified Name:     fka
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */