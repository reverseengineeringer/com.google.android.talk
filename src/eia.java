import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

public final class eia
{
  static final boolean a = false;
  public static volatile eia b;
  final Object c = new Object();
  int d = 0;
  Set<ejc> e = null;
  private final fic f;
  
  static
  {
    imx localimx = ezi.q;
  }
  
  public eia()
  {
    fid localfid = new fid(aal.oJ);
    localfid.a(glu.c, new glx().a(117).a());
    localfid.a(new eib(this));
    localfid.a(new eic(this));
    f = localfid.b();
  }
  
  public static String a(Long paramLong)
  {
    String str = String.valueOf("gmscontact:");
    paramLong = String.valueOf(String.valueOf(paramLong));
    if (paramLong.length() != 0) {
      return str.concat(paramLong);
    }
    return new String(str);
  }
  
  public static boolean a(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (paramString.startsWith("gmscontact:"));
  }
  
  void a(Status paramStatus, ParcelFileDescriptor paramParcelFileDescriptor, ejc paramejc)
  {
    localObject1 = null;
    Object localObject2 = null;
    if ((!paramStatus.a()) || (paramParcelFileDescriptor == null))
    {
      if (a)
      {
        paramStatus = String.valueOf(paramStatus);
        paramParcelFileDescriptor = String.valueOf(paramParcelFileDescriptor);
        ezi.a("Babel_medialoader", String.valueOf(paramStatus).length() + 45 + String.valueOf(paramParcelFileDescriptor).length() + "GmsAvatarLoader: Avatar loaded: status=" + paramStatus + "  pfd=" + paramParcelFileDescriptor, new Object[0]);
      }
      a(paramejc, null);
      return;
    }
    paramParcelFileDescriptor = new FileInputStream(paramParcelFileDescriptor.getFileDescriptor());
    for (;;)
    {
      try
      {
        int i = paramParcelFileDescriptor.available();
        paramStatus = new byte[i];
        int j = paramParcelFileDescriptor.read(paramStatus);
        if (j >= i) {
          continue;
        }
        paramStatus = (Status)localObject2;
      }
      catch (IOException paramStatus)
      {
        ezi.d("Babel_medialoader", "Error reading avatar file for contact.", paramStatus);
        try
        {
          paramParcelFileDescriptor.close();
          paramStatus = (Status)localObject1;
        }
        catch (IOException paramStatus)
        {
          ezi.d("Babel_medialoader", "Error closing avatar file for contact.", paramStatus);
          paramStatus = (Status)localObject1;
        }
        continue;
      }
      finally
      {
        try
        {
          paramParcelFileDescriptor.close();
          throw paramStatus;
        }
        catch (IOException paramParcelFileDescriptor)
        {
          ezi.d("Babel_medialoader", "Error closing avatar file for contact.", paramParcelFileDescriptor);
          continue;
        }
        continue;
      }
      try
      {
        paramParcelFileDescriptor.close();
        a(paramejc, paramStatus);
        return;
      }
      catch (IOException paramParcelFileDescriptor)
      {
        ezi.d("Babel_medialoader", "Error closing avatar file for contact.", paramParcelFileDescriptor);
      }
    }
  }
  
  public void a(ejc paramejc)
  {
    
    for (;;)
    {
      synchronized (c)
      {
        d += 1;
        if (!f.e())
        {
          if (!f.f())
          {
            f.b();
            break label111;
            if (i == 0)
            {
              if (e == null) {
                e = new HashSet();
              }
              e.add(paramejc);
            }
            if (i != 0) {
              b(paramejc);
            }
          }
        }
        else {
          i = 1;
        }
      }
      label111:
      int i = 0;
    }
  }
  
  void a(ejc arg1, byte[] paramArrayOfByte)
  {
    eit localeit = (eit)ilh.a(aal.oJ, eit.class);
    if (paramArrayOfByte != null) {
      localeit.a(???, new eis(paramArrayOfByte, "image/jpeg", false));
    }
    synchronized (c)
    {
      d -= 1;
      if ((d == 0) && ((f.e()) || (f.f()))) {
        f.d();
      }
      return;
      localeit.b(???);
    }
  }
  
  void b(ejc paramejc)
  {
    String str = paramejc.n().n();
    if (!a(str))
    {
      ezi.e("Babel_medialoader", "GmsAvatarLoader: Not a valid gms url", new Object[0]);
      a(paramejc, null);
      return;
    }
    str = str.substring(11);
    if (TextUtils.isEmpty(str))
    {
      ezi.e("Babel_medialoader", "GmsAvatarLoader: Empty contact id in gms url", new Object[0]);
      a(paramejc, null);
      return;
    }
    try
    {
      long l = Long.parseLong(str);
      glu.g.a(f, l).a(new eid(this, paramejc));
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      ezi.e("Babel_medialoader", "GmsAvatarLoader: Invalid contact id.", new Object[0]);
      a(paramejc, null);
    }
  }
}

/* Location:
 * Qualified Name:     eia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */