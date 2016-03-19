import android.content.Context;
import android.os.Handler;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

final class diy
  extends djc
{
  diy(diu paramdiu)
  {
    super(paramdiu);
  }
  
  boolean a()
  {
    long l1 = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
    long l2 = ((ekq)ilh.a(a.e, ekq.class)).e(a.f);
    if (l1 <= l2)
    {
      a.d.postDelayed(a.i, TimeUnit.MICROSECONDS.toMillis(l2) - System.currentTimeMillis());
      return true;
    }
    return false;
  }
  
  epa b()
  {
    long l = ((ekq)ilh.a(a.e, ekq.class)).e(a.f);
    Object localObject2 = Calendar.getInstance();
    ((Calendar)localObject2).setTime(new Date());
    Object localObject1 = Calendar.getInstance();
    ((Calendar)localObject1).setTime(new Date(l / 1000L));
    String str = "";
    if (((Calendar)localObject1).get(6) > ((Calendar)localObject2).get(6)) {
      str = String.valueOf(((Calendar)localObject1).getDisplayName(7, 1, Locale.getDefault())).concat(" ");
    }
    localObject2 = android.text.format.DateFormat.getTimeFormat(a.e);
    str = String.valueOf(str);
    localObject1 = String.valueOf(((java.text.DateFormat)localObject2).format(((Calendar)localObject1).getTime()));
    if (((String)localObject1).length() != 0) {}
    for (str = str.concat((String)localObject1);; str = new String(str)) {
      return new epb(a.e).a(a.e.getString(StressMode.gW, new Object[] { str })).c(a.e.getString(StressMode.gY)).a(new diz(this)).b();
    }
  }
}

/* Location:
 * Qualified Name:     diy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */