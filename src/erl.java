import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.telecom.ConnectionRequest;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Base64;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Objects;

public final class erl
{
  private final Context a;
  private final int b;
  private boolean c;
  private ArrayList<euo> d;
  
  public erl(Context paramContext, int paramInt)
  {
    a = paramContext;
    b = paramInt;
    d = new ArrayList();
  }
  
  static long a(Context paramContext)
  {
    return aal.a(paramContext, "babel_incoming_wifi_call_duplicate_time_millis", 20000L);
  }
  
  private void a()
  {
    long l1 = SystemClock.elapsedRealtime();
    long l2 = a(a);
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext())
    {
      long l3 = l1 - nextc;
      if ((l3 < 0L) || (l3 >= l2)) {
        localIterator.remove();
      }
    }
  }
  
  static boolean a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str1 = String.valueOf(aal.s(paramString2));
    String str2 = String.valueOf(aal.s(paramString4));
    ezi.c("Babel_telephony", String.valueOf(paramString1).length() + 51 + String.valueOf(str1).length() + String.valueOf(paramString3).length() + String.valueOf(str2).length() + "TeleDedupeCallLog.arePhoneNumbersLooselyEqual, " + paramString1 + ":" + str1 + ", " + paramString3 + ":" + str2, new Object[0]);
    if (!Objects.equals(paramString1, paramString3))
    {
      ezi.c("Babel_telephony", "TeleDedupeCallLog.arePhoneNumbersLooselyEqual, schemes don't match", new Object[0]);
      return false;
    }
    if ((TextUtils.isEmpty(paramString2)) && (TextUtils.isEmpty(paramString4)))
    {
      ezi.c("Babel_telephony", "TeleDedupeCallLog.arePhoneNumbersLooselyEqual, both phone numbers are empty, returning true", new Object[0]);
      return true;
    }
    if ((TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString4)))
    {
      ezi.c("Babel_telephony", "TeleDedupeCallLog.arePhoneNumbersLooselyEqual, only one phone number is empty", new Object[0]);
      return false;
    }
    if ("tel".equals(paramString1))
    {
      if (!PhoneNumberUtils.compare(paramString2, paramString4))
      {
        ezi.c("Babel_telephony", "TeleDedupeCallLog.arePhoneNumbersLooselyEqual, loose comparison of phone numbers failed", new Object[0]);
        return false;
      }
    }
    else if (paramString2.equals(paramString4))
    {
      ezi.c("Babel_telephony", "TeleDedupeCallLog.arePhoneNumbersLooselyEqual, phone numbers are not equal", new Object[0]);
      return false;
    }
    ezi.c("Babel_telephony", "TeleDedupeCallLog.arePhoneNumbersLooselyEqual, returning true", new Object[0]);
    return true;
  }
  
  boolean a(ConnectionRequest paramConnectionRequest, boolean paramBoolean)
  {
    Object localObject1;
    if (!c)
    {
      localObject1 = eut.a(a).d(b);
      if (localObject1 != null)
      {
        localObject1 = Base64.decode((String)localObject1, 0);
        if (localObject1 == null) {}
      }
    }
    for (;;)
    {
      try
      {
        d = new ArrayList(Arrays.asList(beunlengtha));
        c = true;
        a();
        if (paramConnectionRequest.getAddress() == null) {
          break label576;
        }
        localObject1 = paramConnectionRequest.getAddress().getScheme();
        paramConnectionRequest = paramConnectionRequest.getAddress().getSchemeSpecificPart();
        localeuo = new euo();
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          a = ((String)localObject1);
        }
        if (!TextUtils.isEmpty(paramConnectionRequest)) {
          b = paramConnectionRequest;
        }
        c = SystemClock.elapsedRealtime();
        d = paramBoolean;
        paramConnectionRequest = d.listIterator(d.size());
        if (paramConnectionRequest.hasPrevious())
        {
          localObject1 = (euo)paramConnectionRequest.previous();
          localObject3 = a;
          if (d == d)
          {
            ezi.c("Babel_telephony", "TeleDedupeCallLog.shouldConsiderEntriesAsDuplicate, calls are on same network", new Object[0]);
            i = 0;
            if (i == 0) {
              continue;
            }
            localObject3 = String.valueOf("TeleDedupeCallLog.dedupeIncomingRing, found duplicate ring with start time: ");
            l1 = c;
            ezi.d("Babel_telephony", String.valueOf(localObject3).length() + 20 + (String)localObject3 + l1, new Object[0]);
            paramConnectionRequest.remove();
            paramBoolean = true;
            if (!paramBoolean) {
              d.add(localeuo);
            }
            if (!d.isEmpty()) {
              continue;
            }
            eut.a(a).b(b, null);
            return paramBoolean;
          }
        }
      }
      catch (lyg locallyg)
      {
        euo localeuo;
        Object localObject3;
        ezi.d("Babel_telephony", "TeleDedupeCallLog.readCallLogEntries, unable to parse entries", locallyg);
        continue;
        if (!a(a, b, a, b))
        {
          ezi.c("Babel_telephony", "TeleDedupeCallLog.shouldConsiderEntriesAsDuplicate, phone numbers are different", new Object[0]);
          i = 0;
          continue;
        }
        long l1 = c;
        l1 = Math.abs(c - l1);
        long l2 = a((Context)localObject3);
        ezi.c("Babel_telephony", 103 + "TeleDedupeCallLog.areStartTimesLooselyEqual, delta: " + l1 + " maxDelta: " + l2, new Object[0]);
        if (l1 < l2)
        {
          i = 1;
          if (i == 0)
          {
            ezi.c("Babel_telephony", "TeleDedupeCallLog.shouldConsiderEntriesAsDuplicate, start times are different", new Object[0]);
            i = 0;
          }
        }
        else
        {
          i = 0;
          continue;
        }
        ezi.c("Babel_telephony", "TeleDedupeCallLog.shouldConsiderEntriesAsDuplicate, returning true", new Object[0]);
        int i = 1;
        continue;
        paramConnectionRequest = new eun();
        a = ((euo[])d.toArray(new euo[d.size()]));
        paramConnectionRequest = Base64.encodeToString(lyi.a(paramConnectionRequest), 0);
        eut.a(a).b(b, paramConnectionRequest);
        return paramBoolean;
      }
      paramBoolean = false;
      continue;
      label576:
      paramConnectionRequest = null;
      Object localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     erl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */