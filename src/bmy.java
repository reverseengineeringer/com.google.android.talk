import android.os.Handler;
import android.os.SystemClock;
import com.google.android.apps.hangouts.conversation.v2.MessageEditText;

final class bmy
  implements Runnable
{
  bmy(bmx parambmx) {}
  
  public void run()
  {
    bmx localbmx = a;
    long l = SystemClock.elapsedRealtime();
    int i = b.getText().toString().trim().length();
    switch (d)
    {
    }
    for (;;)
    {
      if (d == 1)
      {
        Runnable localRunnable = j;
        aal.y().removeCallbacks(localRunnable);
        aal.a(j, 5000L);
        e = l;
      }
      return;
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
 * Qualified Name:     bmy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */