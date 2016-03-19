import android.content.Context;
import android.os.SystemClock;
import android.telecom.DisconnectCause;
import android.text.TextUtils;
import android.text.TextUtils.SimpleStringSplitter;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import java.util.Iterator;

public final class esv
{
  final Context a;
  final erg b;
  final long c;
  boolean d;
  private final etk e;
  private final eri f;
  private final eto g;
  
  public esv(Context paramContext, erg paramerg)
  {
    a = paramContext;
    b = paramerg;
    f = new eri(this);
    paramerg.a(f);
    g = new eto(this);
    e = new etk(paramContext, paramerg, g, new eqm());
    c = SystemClock.elapsedRealtime();
  }
  
  private boolean d()
  {
    String str2 = b.f().c();
    if (TextUtils.isEmpty(str2))
    {
      ezi.c("Babel_telephony", "TeleOutgoingCallRequest.isBlockedNumber, no phone number.", new Object[0]);
      return false;
    }
    String str1;
    if (ezm.j(str2))
    {
      str1 = String.valueOf(aal.s(str2));
      if (str1.length() != 0) {}
      for (str1 = "TeleOutgoingCallRequest.isBlockedNumber, potential emergency number, ".concat(str1);; str1 = new String("TeleOutgoingCallRequest.isBlockedNumber, potential emergency number, "))
      {
        ezi.c("Babel_telephony", str1, new Object[0]);
        return false;
      }
    }
    Object localObject = aal.a(a, "babel_tycho_only_blocked_short_codes", "+1411,+1511,+1811");
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      try
      {
        str1 = new ezk(str2, ezm.i()).a(hop.a);
        TextUtils.SimpleStringSplitter localSimpleStringSplitter = new TextUtils.SimpleStringSplitter(',');
        localSimpleStringSplitter.setString((String)localObject);
        localObject = localSimpleStringSplitter.iterator();
        do
        {
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
        } while (!str1.equals((String)((Iterator)localObject).next()));
        str1 = String.valueOf(aal.s(str2));
        if (str1.length() != 0) {}
        for (str1 = "TeleOutgoingCallRequest.isBlockedNumber, black listed: ".concat(str1);; str1 = new String("TeleOutgoingCallRequest.isBlockedNumber, black listed: "))
        {
          ezi.c("Babel_telephony", str1, new Object[0]);
          return true;
        }
        str1 = "TeleOutgoingCallRequest.isBlockedNumber, invalid number: ".concat(str1);
      }
      catch (hnz localhnz)
      {
        str1 = String.valueOf(aal.s(str2));
        if (str1.length() == 0) {}
      }
      for (;;)
      {
        ezi.c("Babel_telephony", str1, localhnz);
        return false;
        str1 = new String("TeleOutgoingCallRequest.isBlockedNumber, invalid number: ");
      }
    }
    if (aal.a(a, "babel_tycho_only_block_special_codes", true))
    {
      int i = str2.charAt(0);
      if (((i == 42) || (i == 35)) && (str2.length() >= 3) && (str2.length() <= 6))
      {
        str1 = String.valueOf(aal.s(str2));
        if (str1.length() != 0) {}
        for (str1 = "TeleOutgoingCallRequest.isBlockedNumber, blocking: ".concat(str1);; str1 = new String("TeleOutgoingCallRequest.isBlockedNumber, blocking: "))
        {
          ezi.c("Babel_telephony", str1, new Object[0]);
          return true;
        }
      }
    }
    return false;
  }
  
  public void a()
  {
    b.c();
    if (d())
    {
      if (!d)
      {
        ezi.c("Babel_telephony", "TeleOutgoingCallRequest.blockCall", new Object[0]);
        b.setDisconnected(new DisconnectCause(1, "invalid or blocked number"));
        c();
      }
      return;
    }
    e.b();
  }
  
  void b()
  {
    if (!d)
    {
      ezi.c("Babel_telephony", "TeleOutgoingCallRequest.cancelCall", new Object[0]);
      b.setDisconnected(new DisconnectCause(4));
      c();
    }
  }
  
  void c()
  {
    if (!d)
    {
      d = true;
      e.c();
      g.c();
      f.b();
      b.a(null);
      b.d().a().b(this);
      if (b.getState() == 6) {
        b.destroy();
      }
    }
  }
}

/* Location:
 * Qualified Name:     esv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */