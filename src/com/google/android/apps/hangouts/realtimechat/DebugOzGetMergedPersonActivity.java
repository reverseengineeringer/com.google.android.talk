package com.google.android.apps.hangouts.realtimechat;

import aal;
import aen;
import android.os.Bundle;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import dwf;
import dwg;
import dwh;
import hqo;
import ils;

public class DebugOzGetMergedPersonActivity
  extends ils
{
  public DebugOzGetMergedPersonActivity()
  {
    new hqo(this, k).a(j);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.fx);
    paramBundle = (EditText)findViewById(aen.fe);
    RadioGroup localRadioGroup = (RadioGroup)findViewById(aen.ff);
    ((RadioButton)findViewById(aen.eS)).setOnClickListener(new dwf(this, paramBundle));
    ((RadioButton)findViewById(aen.bP)).setOnClickListener(new dwg(this, paramBundle));
    CheckBox localCheckBox = (CheckBox)findViewById(aen.ar);
    ((Button)findViewById(aen.fV)).setOnClickListener(new dwh(this, (TextView)findViewById(aen.fH), localRadioGroup, paramBundle, localCheckBox));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.realtimechat.DebugOzGetMergedPersonActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */