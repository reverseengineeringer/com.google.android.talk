import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.apps.hangouts.requestwriter.RequestWriter;

public final class eey
  extends Handler
{
  private RequestWriter a;
  
  public eey(RequestWriter paramRequestWriter)
  {
    a = paramRequestWriter;
  }
  
  public void handleMessage(Message paramMessage)
  {
    for (;;)
    {
      Object localObject2;
      long l;
      try
      {
        if (arg1 == 1)
        {
          eez.a(a.f()).a(a);
          if (RequestWriter.a) {
            a.a("MSG_LOAD");
          }
          return;
        }
        localObject1 = (Intent)paramMessage.getData().getParcelable("intent");
        paramMessage = ((Intent)localObject1).getExtras();
        if (paramMessage == null) {
          break label700;
        }
        int i = paramMessage.getInt("account_id");
        localObject2 = RequestWriter.a(paramMessage, eez.a(a.f()), i);
        if (localObject2 == null) {
          break label458;
        }
        if (!((hpz)ilh.a(a.f(), hpz.class)).c(i))
        {
          ezi.d("Babel_RequestWriter", a.a(28 + "Invalid account: " + i), new Object[0]);
          return;
        }
        if (paramMessage.containsKey("server_request"))
        {
          l = eez.a(a.f()).b((cwf)localObject2);
          if (RequestWriter.a) {
            new StringBuilder(56).append("Handling EXTRA_WRITABLE_REQUEST for ").append(l);
          }
        }
        localObject1 = ((cwf)localObject2).a();
        l = paramMessage.getLong("timestamp");
        if ((localObject1 instanceof ecg))
        {
          paramMessage = ((ecg)localObject1).f();
          if ((paramMessage instanceof dpo))
          {
            paramMessage = (dpo)paramMessage;
            localObject1 = j;
            paramMessage = c;
            paramMessage = new csn().b((String)localObject1).a(paramMessage);
            aen.a(i, l, 10, paramMessage.a(202));
            aen.a(i, SystemClock.elapsedRealtime(), 10, paramMessage.a(203));
          }
        }
        else
        {
          a.a((cwf)localObject2);
          if (!RequestWriter.a) {
            continue;
          }
          a.a("MSG_INTENT");
          continue;
        }
        if (!(paramMessage instanceof bvx)) {
          continue;
        }
      }
      finally
      {
        if (RequestWriter.a) {
          ezi.d("Babel_RequestWriter", a.a("Looper release"), new Object[0]);
        }
        a.d();
      }
      paramMessage = (bvx)paramMessage;
      Object localObject1 = paramMessage.a();
      paramMessage = paramMessage.b();
      continue;
      label458:
      if (paramMessage.containsKey("cancel_request"))
      {
        localObject1 = paramMessage.getString("cancel_request");
        if (RequestWriter.a)
        {
          localObject2 = String.valueOf(localObject1);
          if (((String)localObject2).length() == 0) {
            break label522;
          }
          "Handling EXTRA_CANCEL_STRING for ".concat((String)localObject2);
        }
        for (;;)
        {
          a.a(paramMessage.getString("cancel_class"), (String)localObject1);
          break;
          label522:
          new String("Handling EXTRA_CANCEL_STRING for ");
        }
      }
      if (paramMessage.containsKey("sms_send_result"))
      {
        l = paramMessage.getLong("sms_request_id", -1L);
        if (RequestWriter.a) {
          new StringBuilder(55).append("Handling EXTRA_SMS_SEND_RESULT for ").append(l);
        }
        enw.a(l, paramMessage.getInt("sms_send_result"));
      }
      else if (paramMessage.containsKey("mms_sent_result"))
      {
        ((eni)ilh.a(a.getApplicationContext(), eni.class)).a(paramMessage.getLong("mms_request_id", -1L), paramMessage.getInt("mms_sent_result"), paramMessage.getInt("mms_sent_http_status"), paramMessage.getByteArray("mms_sent_response_data"));
      }
      else if (paramMessage.containsKey("mms_download_result"))
      {
        ((enb)ilh.a(a.getApplicationContext(), enb.class)).a(paramMessage.getLong("mms_request_id", -1L), paramMessage.getInt("mms_download_result"), paramMessage.getInt("mms_download_http_status"));
        continue;
        label700:
        a.j();
        l = ((Intent)localObject1).getLongExtra("backoff_period", 500L);
        if (RequestWriter.a) {
          new StringBuilder(65).append("RequestWriter.handleMessage. resumeAllQueues ").append(l);
        }
        a.a(l);
      }
    }
  }
}

/* Location:
 * Qualified Name:     eey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */