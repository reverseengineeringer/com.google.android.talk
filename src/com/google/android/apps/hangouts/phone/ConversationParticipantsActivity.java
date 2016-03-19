package com.google.android.apps.hangouts.phone;

import aal;
import android.os.Bundle;
import android.view.MenuItem;
import cbr;
import com.google.android.apps.hangouts.hangout.StressMode;
import hqo;
import qe;

public class ConversationParticipantsActivity
  extends cbr
{
  public ConversationParticipantsActivity()
  {
    new hqo(this, B).a(A);
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.a(paramMenuItem);
    }
    onBackPressed();
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.fp);
    paramBundle = g();
    paramBundle.a(true);
    paramBundle.a(StressMode.aB);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ConversationParticipantsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */