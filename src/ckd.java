import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

final class ckd
  implements cnz
{
  ckd(ckb paramckb) {}
  
  public void a(Activity paramActivity, Bundle paramBundle)
  {
    int j = ((hpu)ilh.a(paramActivity, hpu.class)).a();
    Object localObject = dvd.e(j);
    if (localObject == null) {
      ezi.d("Babel_call_logs", "Account null.", new Object[0]);
    }
    int i;
    if ((localObject != null) && (aal.c((bfd)localObject)))
    {
      i = 1;
      if (i != 0)
      {
        localObject = (ekh)ilh.a(paramActivity, ekh.class);
        long l1 = ((ekh)localObject).f(j);
        paramBundle.putString("last_call_timestamp_millis", String.valueOf(l1));
        if (l1 != -1L)
        {
          Calendar localCalendar = Calendar.getInstance();
          localCalendar.setTimeInMillis(l1);
          SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss Z");
          paramBundle.putString("last_call_timestamp", localSimpleDateFormat.format(localCalendar.getTime()));
          localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
          paramBundle.putString("last_call_timestamp_utc", localSimpleDateFormat.format(localCalendar.getTime()));
        }
        paramBundle.putString("last_call_local_session", ((ekh)localObject).d(j));
        localObject = (ekh)ilh.a(paramActivity, ekh.class);
        l1 = System.currentTimeMillis();
        long l2 = ((ekh)localObject).f(j);
        long l3 = aal.a(paramActivity, "babel_include_last_call_in_feedback_timeout_ms", eea.t);
        if ((l2 == -1L) || (l2 >= l1) || (l1 >= l2 + l3)) {
          break label292;
        }
        i = 1;
        label242:
        if ((i == 0) || (TextUtils.isEmpty(((ekh)localObject).d(j))) || (TextUtils.isEmpty(((ekh)localObject).e(j)))) {
          break label297;
        }
      }
    }
    label292:
    label297:
    for (boolean bool = true;; bool = false)
    {
      paramBundle.putString("last_call_has_log", String.valueOf(bool));
      return;
      i = 0;
      break;
      i = 0;
      break label242;
    }
  }
}

/* Location:
 * Qualified Name:     ckd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */