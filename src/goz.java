import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;
import java.io.IOException;

final class goz
  implements glp
{
  private final Status a;
  private final ParcelFileDescriptor b;
  private final boolean c;
  private final int d;
  private final int e;
  
  public goz(Status paramStatus, ParcelFileDescriptor paramParcelFileDescriptor, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    a = paramStatus;
    b = paramParcelFileDescriptor;
    c = paramBoolean;
    d = paramInt1;
    e = paramInt2;
  }
  
  public ParcelFileDescriptor a()
  {
    return b;
  }
  
  public void b()
  {
    ParcelFileDescriptor localParcelFileDescriptor;
    if (b != null)
    {
      localParcelFileDescriptor = b;
      if (localParcelFileDescriptor == null) {}
    }
    try
    {
      localParcelFileDescriptor.close();
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public int c()
  {
    return d;
  }
  
  public int d()
  {
    return e;
  }
  
  public Status j()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     goz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */