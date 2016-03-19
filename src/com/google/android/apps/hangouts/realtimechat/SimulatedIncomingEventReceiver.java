package com.google.android.apps.hangouts.realtimechat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import czb;
import dvd;
import efr;
import efx;
import egu;
import egv;
import egy;
import ezi;
import java.util.ArrayList;
import java.util.List;

public class SimulatedIncomingEventReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = String.valueOf(paramIntent);
    String str = String.valueOf(paramIntent.getAction());
    new StringBuilder(String.valueOf(paramContext).length() + 11 + String.valueOf(str).length()).append("onReceive ").append(paramContext).append(" ").append(str);
    Object localObject1;
    label149:
    Object localObject2;
    long l;
    Object localObject3;
    if (paramIntent.getAction().equals("com.google.android.babel.intent.SIMULATED_MESSAGE_EVENT"))
    {
      ezi.c("Babel_SimulatedEvtRcvr", "Message event received", new Object[0]);
      str = paramIntent.getStringExtra("conv_id");
      paramContext = String.valueOf(str);
      if (paramContext.length() != 0)
      {
        paramContext = "conversationId ".concat(paramContext);
        ezi.c("Babel_SimulatedEvtRcvr", paramContext, new Object[0]);
        localObject1 = paramIntent.getStringExtra("msg_text");
        paramContext = String.valueOf(localObject1);
        if (paramContext.length() == 0) {
          break label433;
        }
        paramContext = "text ".concat(paramContext);
        ezi.c("Babel_SimulatedEvtRcvr", paramContext, new Object[0]);
        localObject2 = czb.a(paramIntent.getStringExtra("sender_id"));
        paramContext = String.valueOf(localObject2);
        ezi.c("Babel_SimulatedEvtRcvr", String.valueOf(paramContext).length() + 9 + "senderId " + paramContext, new Object[0]);
        l = Long.parseLong(paramIntent.getStringExtra("timestamp"));
        ezi.c("Babel_SimulatedEvtRcvr", 30 + "timestamp " + l, new Object[0]);
        localObject3 = paramIntent.getStringExtra("event_id");
        paramContext = String.valueOf(localObject3);
        if (paramContext.length() == 0) {
          break label446;
        }
        paramContext = "eventId ".concat(paramContext);
        label284:
        ezi.c("Babel_SimulatedEvtRcvr", paramContext, new Object[0]);
        paramContext = czb.a(paramIntent.getStringExtra("recipient_id"));
        paramIntent = String.valueOf(paramContext);
        ezi.c("Babel_SimulatedEvtRcvr", String.valueOf(paramIntent).length() + 12 + "recipientId " + paramIntent, new Object[0]);
        paramContext = dvd.a(paramContext);
        paramIntent = new ArrayList();
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(new efx(0, (String)localObject1, 0, null));
        paramIntent.add(new efr(str, localArrayList, (czb)localObject2, l, (String)localObject3));
        RealTimeChatService.a(paramIntent, paramContext);
      }
    }
    label433:
    label446:
    int i;
    do
    {
      return;
      paramContext = new String("conversationId ");
      break;
      paramContext = new String("text ");
      break label149;
      paramContext = new String("eventId ");
      break label284;
      if (paramIntent.getAction().equals("com.google.android.babel.intent.SIMULATED_FOCUS_EVENT"))
      {
        ezi.c("Babel_SimulatedEvtRcvr", "Focus event received", new Object[0]);
        str = paramIntent.getStringExtra("conv_id");
        paramContext = String.valueOf(str);
        if (paramContext.length() != 0) {}
        for (paramContext = "conversationId ".concat(paramContext);; paramContext = new String("conversationId "))
        {
          ezi.c("Babel_SimulatedEvtRcvr", paramContext, new Object[0]);
          i = paramIntent.getIntExtra("focus_type", -1);
          ezi.c("Babel_SimulatedEvtRcvr", 16 + "type " + i, new Object[0]);
          paramContext = czb.a(paramIntent.getStringExtra("sender_id"));
          localObject1 = String.valueOf(paramContext);
          ezi.c("Babel_SimulatedEvtRcvr", String.valueOf(localObject1).length() + 9 + "senderId " + (String)localObject1, new Object[0]);
          localObject1 = czb.a(paramIntent.getStringExtra("sender_id2"));
          localObject2 = String.valueOf(localObject1);
          ezi.c("Babel_SimulatedEvtRcvr", String.valueOf(localObject2).length() + 10 + "senderId2 " + (String)localObject2, new Object[0]);
          localObject2 = czb.a(paramIntent.getStringExtra("sender_id3"));
          localObject3 = String.valueOf(localObject2);
          ezi.c("Babel_SimulatedEvtRcvr", String.valueOf(localObject3).length() + 10 + "senderId3 " + (String)localObject3, new Object[0]);
          l = Long.parseLong(paramIntent.getStringExtra("timestamp"));
          ezi.c("Babel_SimulatedEvtRcvr", 30 + "timestamp " + l, new Object[0]);
          paramIntent = czb.a(paramIntent.getStringExtra("recipient_id"));
          localObject3 = String.valueOf(paramIntent);
          ezi.c("Babel_SimulatedEvtRcvr", String.valueOf(localObject3).length() + 12 + "recipientId " + (String)localObject3, new Object[0]);
          paramIntent = dvd.a(paramIntent);
          localObject3 = new ArrayList();
          ((List)localObject3).add(new egu(str, i, paramContext, l));
          ((List)localObject3).add(new egu(str, i, (czb)localObject1, l));
          ((List)localObject3).add(new egu(str, i, (czb)localObject2, l));
          RealTimeChatService.a((List)localObject3, paramIntent);
          return;
        }
      }
      if (paramIntent.getAction().equals("com.google.android.babel.intent.SIMULATED_WATERMARK_EVENT"))
      {
        ezi.c("Babel_SimulatedEvtRcvr", "Watermark event received", new Object[0]);
        str = paramIntent.getStringExtra("conv_id");
        paramContext = String.valueOf(str);
        if (paramContext.length() != 0) {}
        for (paramContext = "conversationId ".concat(paramContext);; paramContext = new String("conversationId "))
        {
          ezi.c("Babel_SimulatedEvtRcvr", paramContext, new Object[0]);
          paramContext = czb.a(paramIntent.getStringExtra("sender_id"));
          localObject1 = String.valueOf(paramContext);
          ezi.c("Babel_SimulatedEvtRcvr", String.valueOf(localObject1).length() + 9 + "senderId " + (String)localObject1, new Object[0]);
          l = Long.parseLong(paramIntent.getStringExtra("timestamp"));
          ezi.c("Babel_SimulatedEvtRcvr", 30 + "timestamp " + l, new Object[0]);
          paramIntent = czb.a(paramIntent.getStringExtra("recipient_id"));
          localObject1 = String.valueOf(paramIntent);
          ezi.c("Babel_SimulatedEvtRcvr", String.valueOf(localObject1).length() + 12 + "recipientId " + (String)localObject1, new Object[0]);
          paramIntent = dvd.a(paramIntent);
          localObject1 = new ArrayList();
          ((List)localObject1).add(new egy(str, paramContext, l));
          RealTimeChatService.a((List)localObject1, paramIntent);
          return;
        }
      }
    } while (!paramIntent.getAction().equals("com.google.android.babel.intent.SIMULATED_TYPING_EVENT"));
    ezi.c("Babel_SimulatedEvtRcvr", "Typing event received", new Object[0]);
    str = paramIntent.getStringExtra("conv_id");
    paramContext = String.valueOf(str);
    if (paramContext.length() != 0) {}
    for (paramContext = "conversationId ".concat(paramContext);; paramContext = new String("conversationId "))
    {
      ezi.c("Babel_SimulatedEvtRcvr", paramContext, new Object[0]);
      paramContext = czb.a(paramIntent.getStringExtra("sender_id"));
      localObject1 = String.valueOf(paramContext);
      ezi.c("Babel_SimulatedEvtRcvr", String.valueOf(localObject1).length() + 9 + "senderId " + (String)localObject1, new Object[0]);
      l = Long.parseLong(paramIntent.getStringExtra("timestamp"));
      ezi.c("Babel_SimulatedEvtRcvr", 30 + "timestamp " + l, new Object[0]);
      localObject1 = czb.a(paramIntent.getStringExtra("recipient_id"));
      localObject2 = String.valueOf(localObject1);
      ezi.c("Babel_SimulatedEvtRcvr", String.valueOf(localObject2).length() + 12 + "recipientId " + (String)localObject2, new Object[0]);
      i = paramIntent.getIntExtra("typing_type", -1);
      ezi.c("Babel_SimulatedEvtRcvr", 22 + "typingType " + i, new Object[0]);
      paramIntent = dvd.a((czb)localObject1);
      localObject1 = new ArrayList();
      ((List)localObject1).add(new egv(str, paramContext, l, i));
      RealTimeChatService.a((List)localObject1, paramIntent);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.realtimechat.SimulatedIncomingEventReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */