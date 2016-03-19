import android.os.Handler;
import android.os.SystemClock;
import android.telephony.SmsMessage;
import com.google.android.apps.hangouts.conversation.v2.MessageEditText;

final class bnd
  implements Runnable
{
  private CharSequence b;
  private int c;
  private int d;
  
  bnd(bmx parambmx) {}
  
  public void a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    b = paramCharSequence;
    c = paramInt1;
    d = paramInt2;
  }
  
  public void run()
  {
    boolean bool2 = false;
    boolean bool1 = false;
    bmx localbmx = a;
    Object localObject = b;
    int i = c;
    int j = d;
    long l;
    if ((h == null) || (i == null))
    {
      a.a();
      localbmx = a;
      l = SystemClock.elapsedRealtime();
      i = b.getText().toString().trim().length();
      switch (d)
      {
      }
    }
    for (;;)
    {
      if (d == 1)
      {
        localObject = j;
        aal.y().removeCallbacks((Runnable)localObject);
        aal.a(j, 5000L);
        e = l;
      }
      return;
      if ((c == null) || (!aal.f(i.b))) {
        break;
      }
      if (g.c())
      {
        if (i <= j) {
          break label308;
        }
        i = 1;
        label195:
        if (i == 0) {
          break;
        }
      }
      localObject = SmsMessage.calculateLength((CharSequence)localObject, false);
      i = localObject[0];
      int k = localObject[2];
      eoo localeoo;
      if ((!emy.a().p()) && (!emy.a().q()))
      {
        localeoo = g;
        if (i > 1) {
          bool1 = true;
        }
        localeoo.b(bool1);
      }
      for (;;)
      {
        j = emy.a().c();
        if (j <= 0) {
          break;
        }
        int m = localObject[1];
        i = j;
        if (m + k < 140) {
          i = j / 2;
        }
        if (m <= i) {
          break;
        }
        g.b(true);
        break;
        label308:
        i = 0;
        break label195;
        j = emy.a().b();
        localeoo = g;
        bool1 = bool2;
        if (j > 0)
        {
          bool1 = bool2;
          if (i > j) {
            bool1 = true;
          }
        }
        localeoo.b(bool1);
      }
      if (i > 0)
      {
        d = 1;
        localbmx.a(d);
        continue;
        if (i == 0)
        {
          d = 3;
        }
        else
        {
          d = 1;
          localbmx.a(d);
          continue;
          if (i == 0)
          {
            d = 3;
            localbmx.a(d);
          }
          else if (l - e > 5000L)
          {
            d = 2;
            localbmx.a(d);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     bnd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */