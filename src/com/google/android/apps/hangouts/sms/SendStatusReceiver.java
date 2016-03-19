package com.google.android.apps.hangouts.sms;

import android.content.BroadcastReceiver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.requestwriter.RequestWriter;
import ezi;
import imx;

public class SendStatusReceiver
  extends BroadcastReceiver
{
  public static final boolean a = false;
  
  static
  {
    imx localimx = ezi.r;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject = paramIntent.getAction();
    int i = getResultCode();
    if (a)
    {
      new StringBuilder(String.valueOf(localObject).length() + 28).append("Action: ").append((String)localObject).append(" result: ").append(i);
      if ((i == 1) && (paramIntent.hasExtra("errorCode")))
      {
        int j = paramIntent.getIntExtra("errorCode", 0);
        new StringBuilder(23).append("Error code: ").append(j);
      }
    }
    long l;
    if ("com.google.android.apps.hangouts.sms.SendStatusReceiver.MESSAGE_SENT".equals(localObject))
    {
      l = ContentUris.parseId(paramIntent.getData());
      if (a) {
        new StringBuilder(32).append("Request ID: ").append(l);
      }
      paramIntent = RequestWriter.k();
      paramIntent.putExtra("sms_request_id", l);
      paramIntent.putExtra("sms_send_result", i);
      paramContext.startService(paramIntent);
    }
    do
    {
      return;
      if ("com.google.android.apps.hangouts.sms.SendStatusReceiver.MMS_SENT".equals(localObject))
      {
        l = ContentUris.parseId(paramIntent.getData());
        localObject = RequestWriter.k();
        ((Intent)localObject).putExtra("mms_request_id", l);
        ((Intent)localObject).putExtra("mms_sent_result", i);
        ((Intent)localObject).putExtra("mms_sent_http_status", paramIntent.getIntExtra("android.telephony.extra.MMS_HTTP_STATUS", 0));
        ((Intent)localObject).putExtra("mms_sent_response_data", paramIntent.getByteArrayExtra("android.telephony.extra.MMS_DATA"));
        paramContext.startService((Intent)localObject);
        return;
      }
      if ("com.google.android.apps.hangouts.sms.SendStatusReceiver.MMS_DOWNLOADED".equals(localObject))
      {
        l = ContentUris.parseId(paramIntent.getData());
        localObject = RequestWriter.k();
        ((Intent)localObject).putExtra("mms_request_id", l);
        ((Intent)localObject).putExtra("mms_download_result", i);
        ((Intent)localObject).putExtra("mms_download_http_status", paramIntent.getIntExtra("android.telephony.extra.MMS_HTTP_STATUS", 0));
        paramContext.startService((Intent)localObject);
        return;
      }
    } while (!"com.google.android.apps.hangouts.sms.SendStatusReceiver.MESSAGE_DELIVERED".equals(localObject));
    RealTimeChatService.e(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.sms.SendStatusReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */