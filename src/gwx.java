import android.content.Context;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.TimeUnit;

public final class gwx
  implements gwu
{
  public static final gyh<avb, Status> a = new gwy();
  private final fgr b;
  
  private gwx(Context paramContext, String paramString1, String paramString2)
  {
    b = new fgr(paramContext, paramString1, paramString1, paramString2);
  }
  
  public gwx(Context paramContext, String paramString1, String paramString2, byte paramByte)
  {
    this(paramContext, paramString1, paramString2);
  }
  
  public final gwt a(byte[] paramArrayOfByte)
  {
    return new gxb(b, paramArrayOfByte);
  }
  
  public final boolean a(gxk paramgxk, TimeUnit paramTimeUnit)
  {
    return b.a(5000L, paramTimeUnit);
  }
}

/* Location:
 * Qualified Name:     gwx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */