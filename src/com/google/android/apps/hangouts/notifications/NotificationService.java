package com.google.android.apps.hangouts.notifications;

import android.content.Intent;
import bgz;
import cwu;
import cxd;
import cxe;
import cxk;
import cxl;
import cxv;
import cxw;
import ehq;
import ehr;
import ezi;
import knq;

public class NotificationService
  extends ehq
{
  public NotificationService()
  {
    super("NotificationService");
  }
  
  public void a(Intent paramIntent, knq<Intent> paramknq)
  {
    try
    {
      super.a(paramIntent, paramknq);
      return;
    }
    catch (bgz paramknq)
    {
      int i = paramIntent.getIntExtra("account_id", -1);
      ezi.d("Babel", 71 + "Ignoring NotificationService intent for invalid account id: " + i, new Object[0]);
    }
  }
  
  protected ehr[] a()
  {
    return new ehr[] { new cxw(), new cxl(), new cxe(), new cwu(), new cxv(), new cxk(), new cxd() };
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.notifications.NotificationService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */