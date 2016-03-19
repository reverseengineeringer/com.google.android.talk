import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.apps.hangouts.concurrent.impl.ConcurrentServiceImpl;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class bcx
  extends axv
  implements bcm
{
  private static final boolean d = false;
  private static final ezv e = ezv.a("concurrent");
  private static final long h = TimeUnit.MINUTES.toMillis(10L);
  bde a;
  List<bcp> b;
  bcz c;
  private final Context f;
  private final bdm g;
  private final ServiceConnection i = new bcy(this);
  
  static
  {
    imx localimx = ezi.t;
  }
  
  public bcx(Context paramContext)
  {
    f = paramContext;
    g = bdm.a(paramContext, null);
  }
  
  private bcg a(bcp parambcp)
  {
    for (;;)
    {
      try
      {
        ezv localezv = e;
        String str1 = String.valueOf("SCHEDULE_");
        String str2 = String.valueOf(parambcp.a());
        if (str2.length() != 0)
        {
          str1 = str1.concat(str2);
          localezv.b(str1);
          if (a == null) {
            break label120;
          }
          str1 = String.valueOf(parambcp.a());
          if (str1.length() != 0)
          {
            "Found BinderService, scheduling: ".concat(str1);
            a.a(parambcp);
            parambcp = c;
            return parambcp;
          }
        }
        else
        {
          str1 = new String(str1);
          continue;
        }
        new String("Found BinderService, scheduling: ");
      }
      finally {}
      continue;
      label120:
      if (b == null) {
        b = new ArrayList();
      }
      b.add(parambcp);
      if (c == null)
      {
        c = new bcz(this);
        aal.a(c, h);
      }
      e();
    }
  }
  
  public static bcp b(bcn parambcn, long paramLong)
  {
    if ((parambcn instanceof bcl)) {}
    for (Object localObject1 = ((bcl)parambcn).c();; localObject1 = null)
    {
      String str = parambcn.getClass().getName();
      bcs localbcs = new bcs();
      Object localObject2;
      if ((parambcn instanceof bci))
      {
        localObject2 = (bci)parambcn;
        long l = ((bci)localObject2).a();
        paramLong += l;
        a = ((bci)localObject2).b();
        if (((parambcn instanceof bcl)) && (l > 0L) && (a == bcj.a))
        {
          Log.e("Babel_ConcSchedImpl", "No coalesce parameter passed in");
          throw new IllegalArgumentException("Delayed grouped tasks should be coalesced.");
        }
        localObject2 = localObject1;
        if (localObject1 == null)
        {
          localObject2 = localObject1;
          if (a != bcj.a) {
            localObject2 = str;
          }
        }
        b = false;
        localObject1 = localObject2;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = "";
        }
        if ((parambcn instanceof bck)) {
          d = true;
        }
        Parcelable localParcelable = (Parcelable)parambcn;
        localObject1 = new Bundle();
        if (localParcelable != null) {
          ((Bundle)localObject1).putParcelable("concurrent_bundle_util_key", localParcelable);
        }
        localObject2 = new bcp(str, (String)localObject2, (Bundle)localObject1, paramLong, localbcs);
        if ((d) && ((bcn)parambcn.getClass().cast(aal.a((Bundle)localObject1)) == null))
        {
          parambcn = String.valueOf(parambcn.getClass().getName());
          if (parambcn.length() != 0)
          {
            parambcn = "Checking task state failed - incorrect Parcelable probably for ".concat(parambcn);
            Log.e("Babel_ConcSchedImpl", parambcn);
            parambcn = String.valueOf(str);
            if (parambcn.length() == 0) {
              break label324;
            }
          }
          label324:
          for (parambcn = "Incorrect parcelable for task ".concat(parambcn);; parambcn = new String("Incorrect parcelable for task "))
          {
            throw new IllegalStateException(parambcn);
            parambcn = new String("Checking task state failed - incorrect Parcelable probably for ");
            break;
          }
        }
        return (bcp)localObject2;
      }
    }
  }
  
  private void e()
  {
    if (a == null)
    {
      Intent localIntent = new Intent(f, ConcurrentServiceImpl.class);
      localIntent.putExtra("concurrent_service_command_key", bcu.a.ordinal());
      f.bindService(localIntent, i, 1);
    }
  }
  
  public <T extends bcn,  extends Parcelable> bcg a(T paramT)
  {
    return a(paramT, 0L);
  }
  
  public <T extends bcn,  extends Parcelable> bcg a(T paramT, long paramLong)
  {
    String str = String.valueOf(paramT.getClass().getName());
    if (str.length() != 0)
    {
      "Start scheduling ".concat(str);
      paramT = b(paramT, paramLong);
      if (g.a(a) == null) {
        break label77;
      }
    }
    label77:
    for (boolean bool = true;; bool = false)
    {
      aen.a(bool);
      return a(paramT);
      new String("Start scheduling ");
      break;
    }
  }
  
  public void c()
  {
    d();
  }
  
  public void d()
  {
    if (a != null)
    {
      f.unbindService(i);
      a = null;
    }
  }
  
  public void j_()
  {
    if (c != null)
    {
      bcz localbcz = c;
      aal.y().removeCallbacks(localbcz);
    }
    e();
  }
}

/* Location:
 * Qualified Name:     bcx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */