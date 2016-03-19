package com.google.android.apps.hangouts.notifications;

import aal;
import android.content.Context;
import android.content.Intent;
import cxa;
import ekq;
import haw;
import hax;
import hba;
import hpu;
import hqo;
import ilh;
import ils;

public class DndDialogActivity
  extends ils
{
  private final hpu a = new hqo(this, k).a(j);
  
  public static Intent a(Context paramContext, int paramInt)
  {
    paramContext = new Intent(paramContext, DndDialogActivity.class);
    paramContext.putExtra("account_id", paramInt);
    return paramContext;
  }
  
  public void onStart()
  {
    super.onStart();
    int i = a.a();
    int j = getIntent().getIntExtra("opened_from_impression", -1);
    if (j != -1) {
      ((hba)this.j.a(hba.class)).a(i).a(j).d();
    }
    String str = aal.a(getIntent(), "dnd_duration_choice");
    if (str != null)
    {
      ((ekq)this.j.a(ekq.class)).a(i, str);
      finish();
      return;
    }
    ((ekq)this.j.a(ekq.class)).a(this, i, new cxa(this));
  }
  
  public void onStop()
  {
    super.onStop();
    finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.notifications.DndDialogActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */