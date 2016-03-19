package com.google.android.apps.hangouts.phone;

import android.app.Activity;
import android.content.Intent;
import android.widget.Toast;

public class ShowToastForTesting
  extends Activity
{
  public void onStart()
  {
    super.onStart();
    Toast.makeText(this, getIntent().getStringExtra("toast_text"), 0).show();
    finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ShowToastForTesting
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */