import android.app.PendingIntent;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsManager;
import android.text.TextUtils;
import com.google.android.apps.hangouts.sms.SendStatusReceiver;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;

public final class enw
{
  public static final boolean a = false;
  private static ConcurrentHashMap<Long, enx> b = new ConcurrentHashMap();
  private static final Random c = new Random();
  private static Boolean d = null;
  private static final Uri e = Uri.parse("content://babelsmssend");
  
  static
  {
    imx localimx = ezi.r;
  }
  
  private static int a(Context paramContext, String paramString1, String paramString2, long paramLong1, String paramString3, boolean paramBoolean, long paramLong2)
  {
    hbs.b("Expected non-null", paramContext);
    if (TextUtils.isEmpty(paramString1)) {
      throw new enr("SmsSender: empty destination address");
    }
    if (TextUtils.isEmpty(paramString2)) {
      throw new enr("SmsSender: empty text message");
    }
    SmsManager localSmsManager = SmsManager.getDefault();
    if ((emy.a().k() != null) && ((aee.b(paramString1)) || (emy.a().a(paramString1))))
    {
      paramString2 = String.valueOf(paramString1).length() + 1 + String.valueOf(paramString2).length() + paramString1 + " " + paramString2;
      paramString1 = emy.a().k();
    }
    int j;
    for (paramString2 = localSmsManager.divideMessage(paramString2);; paramString2 = localSmsManager.divideMessage(paramString2))
    {
      j = paramString2.size();
      if (j > 0) {
        break;
      }
      throw new enr("SmsSender: fails to divide message");
      paramString1 = PhoneNumberUtils.stripSeparators(paramString1);
    }
    ArrayList localArrayList1 = new ArrayList(j);
    ArrayList localArrayList2 = new ArrayList(j);
    int i = 0;
    if (i < j)
    {
      if ((paramBoolean) && (i == j - 1)) {
        localArrayList1.add(PendingIntent.getBroadcast(paramContext, 0, a(paramContext, "com.google.android.apps.hangouts.sms.SendStatusReceiver.MESSAGE_DELIVERED", paramLong2), 0));
      }
      for (;;)
      {
        localArrayList2.add(PendingIntent.getBroadcast(paramContext, 0, a(paramContext, "com.google.android.apps.hangouts.sms.SendStatusReceiver.MESSAGE_SENT", paramLong1), 0));
        i += 1;
        break;
        localArrayList1.add(null);
      }
    }
    if (d == null) {
      d = Boolean.valueOf(emy.a().q());
    }
    if (aal.a(d, false)) {
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        break label364;
      }
      try
      {
        localSmsManager.sendTextMessage(paramString1, paramString3, (String)paramString2.get(i), (PendingIntent)localArrayList2.get(i), (PendingIntent)localArrayList1.get(i));
        i += 1;
      }
      catch (Exception paramContext)
      {
        label364:
        throw new enr("SmsSender: caught exception in sending", paramContext);
      }
    }
    localSmsManager.sendMultipartTextMessage(paramString1, paramString3, paramString2, localArrayList2, localArrayList1);
    return j;
  }
  
  private static Intent a(Context paramContext, String paramString, long paramLong)
  {
    return new Intent(paramString, ContentUris.withAppendedId(e, paramLong), paramContext, SendStatusReceiver.class);
  }
  
  public static enx a(Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean, long paramLong)
  {
    enx localenx = new enx();
    long l2 = Math.abs(c.nextLong());
    if (a)
    {
      String str1 = String.valueOf("SmsSender: sending message. dest=");
      String str2 = String.valueOf(ezi.b(paramString1));
      String str3 = String.valueOf(ezi.b(paramString2));
      new StringBuilder(String.valueOf(str1).length() + 83 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(paramString3).length()).append(str1).append(str2).append(" message=").append(str3).append(" serviceCenter=").append(paramString3).append(" requireDeliveryReport=").append(paramBoolean).append(" requestId=").append(l2);
    }
    for (;;)
    {
      long l1;
      long l3;
      try
      {
        b.put(Long.valueOf(l2), localenx);
        int i = a(paramContext, paramString1, paramString2, l2, paramString3, paramBoolean, paramLong);
        if (a) {
          new StringBuilder(32).append("Sending SMS in ").append(i).append(" parts");
        }
        localenx.a(i);
        l1 = aal.a(aal.oJ, "babel_sms_send_timeout_in_millis", 300000L);
        l3 = System.currentTimeMillis();
        paramLong = l1;
        if (paramLong > 0L) {}
        try
        {
          if (a) {
            new StringBuilder(28).append("Waiting ").append(paramLong);
          }
          localenx.wait(paramLong);
        }
        catch (InterruptedException paramContext)
        {
          ezi.e("Babel_SMS", "SmsSender: sending wait interrupted", new Object[0]);
          continue;
        }
        if (!localenx.a())
        {
          if (a) {
            new StringBuilder(59).append("No more pending messages after waiting ").append(paramLong);
          }
          b.remove(Long.valueOf(l2));
          if (a)
          {
            paramContext = String.valueOf("SmsSender: sending completed. dest=");
            paramString1 = String.valueOf(ezi.b(paramString1));
            paramString2 = String.valueOf(ezi.b(paramString2));
            paramString3 = String.valueOf(localenx);
            new StringBuilder(String.valueOf(paramContext).length() + 17 + String.valueOf(paramString1).length() + String.valueOf(paramString2).length() + String.valueOf(paramString3).length()).append(paramContext).append(paramString1).append(" message=").append(paramString2).append(" result=").append(paramString3);
          }
          return localenx;
        }
      }
      finally {}
      paramLong = System.currentTimeMillis();
      paramLong = l1 - (paramLong - l3);
    }
  }
  
  public static void a(long paramLong, int paramInt)
  {
    if (paramInt != -1)
    {
      localObject1 = String.valueOf("SmsSender: failure in sending message part.  requestId=");
      ezi.e("Babel_SMS", String.valueOf(localObject1).length() + 43 + (String)localObject1 + paramLong + " resultCode=" + paramInt, new Object[0]);
    }
    for (;;)
    {
      if (paramLong >= 0L)
      {
        localObject1 = (enx)b.get(Long.valueOf(paramLong));
        if (localObject1 == null) {}
      }
      try
      {
        ((enx)localObject1).b(paramInt);
        if (!((enx)localObject1).a()) {
          localObject1.notifyAll();
        }
        return;
      }
      finally {}
      if (a)
      {
        localObject1 = String.valueOf("SmsSender: received sent result.  requestId=");
        new StringBuilder(String.valueOf(localObject1).length() + 43).append((String)localObject1).append(paramLong).append(" resultCode=").append(paramInt);
      }
    }
  }
}

/* Location:
 * Qualified Name:     enw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */