import android.os.Handler;
import android.telecom.DisconnectCause;
import android.telephony.PhoneNumberUtils;
import java.lang.reflect.Method;

final class esx
  implements eqt
{
  private final eqs a;
  private final Handler b = new Handler();
  private int c;
  private int d = 0;
  private final Runnable e = new esy(this);
  
  esx(eqs parameqs)
  {
    a = parameqs;
  }
  
  private void a(long paramLong)
  {
    b.postDelayed(e, paramLong);
  }
  
  private void b()
  {
    d = 3;
    b.removeCallbacksAndMessages(null);
  }
  
  void a()
  {
    erg localerg = a.a();
    if ((localerg != null) && (localerg.getState() == 4)) {}
    String str1;
    for (Object localObject = localerg.f().g();; str1 = null)
    {
      if ((localObject != null) && (c < ((String)localObject).length()))
      {
        char c1 = ((String)localObject).charAt(c);
        String str2 = String.valueOf(ezi.b(String.valueOf(c1)));
        if (str2.length() != 0) {
          str2 = "TelePostDialHelper.processNextCharacter, processing: ".concat(str2);
        }
        for (;;)
        {
          ezi.c("Babel_telephony", str2, new Object[0]);
          c += 1;
          if (PhoneNumberUtils.is12Key(c1))
          {
            a.a(c1);
            a(cgw.L());
          }
          try
          {
            for (;;)
            {
              localObject = localerg.getClass().getDeclaredMethod("setNextPostDialWaitChar", new Class[] { Character.TYPE });
              if (localObject != null) {
                ((Method)localObject).invoke(localerg, new Object[] { Character.valueOf(c1) });
              }
              return;
              str2 = new String("TelePostDialHelper.processNextCharacter, processing: ");
              break;
              if (c1 == ',')
              {
                a(3000L);
              }
              else if (c1 == ';')
              {
                localerg.setPostDialWait(((String)localObject).substring(c));
                d = 2;
              }
              else
              {
                a(0L);
              }
            }
          }
          catch (NoSuchMethodException localNoSuchMethodException)
          {
            for (;;)
            {
              Method localMethod = localerg.getClass().getDeclaredMethod("setNextPostDialChar", new Class[] { Character.TYPE });
            }
          }
          catch (Exception localException)
          {
            str1 = String.valueOf(localException);
            ezi.c("Babel_telephony", String.valueOf(str1).length() + 58 + "setNextPostDialCharacter, calling setNextPostDial failed: " + str1, new Object[0]);
            return;
          }
        }
      }
      b();
      return;
    }
  }
  
  public void a(eqs parameqs, int paramInt)
  {
    if ((paramInt == 4) && (d == 0))
    {
      d = 1;
      a();
    }
  }
  
  public void a(eqs parameqs, DisconnectCause paramDisconnectCause)
  {
    b();
  }
  
  void a(boolean paramBoolean)
  {
    if (d == 2)
    {
      if (paramBoolean)
      {
        d = 1;
        a();
      }
    }
    else {
      return;
    }
    b();
  }
}

/* Location:
 * Qualified Name:     esx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */