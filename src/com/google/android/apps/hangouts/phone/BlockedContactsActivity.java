package com.google.android.apps.hangouts.phone;

import aal;
import android.os.Bundle;
import android.view.MenuItem;
import cbr;
import hqo;
import qe;

public class BlockedContactsActivity
  extends cbr
{
  public BlockedContactsActivity()
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
    setContentView(aal.eX);
    g().a(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.BlockedContactsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */