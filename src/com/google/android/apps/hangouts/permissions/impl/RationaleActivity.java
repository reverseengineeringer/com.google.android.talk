package com.google.android.apps.hangouts.permissions.impl;

import aal;
import android.content.Intent;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.widget.Button;
import dcj;
import dck;
import dcl;
import dcx;
import dcy;
import ilh;
import imi;

public class RationaleActivity
  extends imi
{
  public dcj j;
  public dck k;
  private final View.OnClickListener n = new dcx(this);
  private final dcl o = new dcy(this);
  
  private void b(int paramInt)
  {
    Button localButton = (Button)findViewById(paramInt);
    localButton.setAllCaps(true);
    localButton.setOnClickListener(n);
  }
  
  protected void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    j = ((dcj)l.a(dcj.class));
    k = ((dck)l.a(dck.class));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.oG);
    paramBundle = (ViewStub)findViewById(aal.oE);
    Intent localIntent = getIntent();
    paramBundle.setBackgroundColor(localIntent.getIntExtra("background_color_res", 0));
    paramBundle.setLayoutResource(localIntent.getIntExtra("layout_res", 0));
    paramBundle.inflate();
    b(aal.oF);
    b(aal.oB);
    k.a(aal.oC, o);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.permissions.impl.RationaleActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */