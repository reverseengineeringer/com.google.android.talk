import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.requestwriter.RequestWriter;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

public final class dvm
{
  private static final boolean a = false;
  private static final HashSet<Class> c = new HashSet(Arrays.asList(new Class[] { dop.class, dpk.class, dpl.class, dpz.class, dpy.class }));
  private final bfd b;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public dvm(bfd parambfd)
  {
    b = parambfd;
  }
  
  private void a(eff parameff, int paramInt, eer parameer)
  {
    if ((b.k()) && (c.contains(parameff.getClass())))
    {
      parameff = String.valueOf(parameff.getClass().getSimpleName());
      parameer = String.valueOf(ezi.b(b.a()));
      ezi.e("Babel", String.valueOf(parameff).length() + 29 + String.valueOf(parameer).length() + "Invalid request " + parameff + " for account " + parameer, new Object[0]);
      return;
    }
    parameff.a(paramInt);
    Context localContext = aal.oJ;
    paramInt = b.g();
    Intent localIntent = RequestWriter.k();
    localIntent.putExtra("account_id", paramInt);
    cwf localcwf = RequestWriter.a(parameff.d(), paramInt);
    byte[] arrayOfByte = localcwf.h();
    paramInt = arrayOfByte.length;
    new StringBuilder(31).append("encodedRequestSize: ").append(paramInt);
    long l = -1L;
    if (paramInt > RequestWriter.f)
    {
      l = eez.a(localContext).b(localcwf);
      localIntent.putExtra("database_id", l);
    }
    for (;;)
    {
      if (RequestWriter.a)
      {
        parameff = String.valueOf(parameff.getClass().getSimpleName());
        new StringBuilder(String.valueOf(parameff).length() + 72).append("Creating request service intent for ").append(parameff).append(" request row id ").append(l);
      }
      if (parameer == null) {
        break;
      }
      parameer.a(localIntent);
      return;
      localIntent.putExtra("server_request", arrayOfByte);
    }
    localContext.startService(localIntent);
  }
  
  public void a(eff parameff, int paramInt)
  {
    a(parameff, paramInt, null);
  }
  
  public void a(Collection<? extends eff> paramCollection, int paramInt)
  {
    a(paramCollection, paramInt, null);
  }
  
  public void a(Collection<? extends eff> paramCollection, int paramInt, eer parameer)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      a((eff)paramCollection.next(), paramInt, parameer);
    }
  }
}

/* Location:
 * Qualified Name:     dvm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */