import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

final class ckc
  implements cny
{
  ckc(ckb paramckb) {}
  
  public boolean a(Context paramContext, int paramInt)
  {
    Object localObject = dvd.e(paramInt);
    if (localObject == null) {
      ezi.d("Babel_call_logs", "Account null.", new Object[0]);
    }
    int i;
    if ((localObject != null) && (aal.c((bfd)localObject)))
    {
      i = 1;
      if (i == 0) {
        break label157;
      }
      localObject = (ekh)ilh.a(paramContext, ekh.class);
      long l1 = System.currentTimeMillis();
      long l2 = ((ekh)localObject).f(paramInt);
      long l3 = aal.a(paramContext, "babel_include_last_call_in_feedback_timeout_ms", eea.t);
      if ((l2 == -1L) || (l2 >= l1) || (l1 >= l2 + l3)) {
        break label147;
      }
      i = 1;
      label106:
      if ((i == 0) || (TextUtils.isEmpty(((ekh)localObject).d(paramInt))) || (TextUtils.isEmpty(((ekh)localObject).e(paramInt)))) {
        break label152;
      }
    }
    label147:
    label152:
    for (paramInt = 1;; paramInt = 0)
    {
      if (paramInt == 0) {
        break label157;
      }
      return true;
      i = 0;
      break;
      i = 0;
      break label106;
    }
    label157:
    return false;
  }
  
  public cnx[] b(Context paramContext, int paramInt)
  {
    int i = 1;
    aal.x();
    Object localObject1 = dvd.e(paramInt);
    if (localObject1 == null) {
      ezi.d("Babel_call_logs", "Account null.", new Object[0]);
    }
    if ((localObject1 != null) && (aal.c((bfd)localObject1))) {}
    while (i == 0)
    {
      ezi.d("Babel_call_logs", "Diagnostics are not enabled.", new Object[0]);
      return new cnx[0];
      i = 0;
    }
    localObject1 = ((hba)ilh.a(paramContext, hba.class)).a(paramInt);
    Object localObject2 = new File(((ekh)ilh.a(paramContext, ekh.class)).e(paramInt));
    if (!((File)localObject2).exists())
    {
      ezi.d("Babel_call_logs", "Log file not found.", new Object[0]);
      ((haw)localObject1).a(2840).d();
      return new cnx[0];
    }
    if (((File)localObject2).length() < 1048576L) {
      paramInt = (int)((File)localObject2).length();
    }
    for (;;)
    {
      paramContext = new byte[paramInt];
      try
      {
        localObject2 = new FileInputStream((File)localObject2);
        i = ((FileInputStream)localObject2).read(paramContext, 0, paramInt);
        if (i != paramInt) {
          ezi.d("Babel_call_logs", String.format("Read len (%d) != file len (%d).", new Object[] { Integer.valueOf(i), Integer.valueOf(paramInt) }), new Object[0]);
        }
        ((FileInputStream)localObject2).close();
        ((haw)localObject1).a(2839).d();
        paramContext = new cnx("call_log.txt", "text/plain", paramContext);
        return new cnx[] { paramContext };
      }
      catch (FileNotFoundException paramContext)
      {
        ezi.d("Babel_call_logs", "Log file not found when reading.", new Object[0]);
        ((haw)localObject1).a(2840).d();
        return new cnx[0];
        paramInt = 1048576;
      }
      catch (IOException paramContext)
      {
        for (;;)
        {
          ezi.d("Babel_call_logs", "IOException when reading log file.", new Object[0]);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     ckc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */