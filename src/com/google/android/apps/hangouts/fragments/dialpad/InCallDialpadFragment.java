package com.google.android.apps.hangouts.fragments.dialpad;

import aal;
import aen;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import av;
import ba;
import bg;
import cdw;
import cfc;
import cgw;
import ezi;

public class InCallDialpadFragment
  extends av
  implements cdw
{
  private final cfc a = cfc.a();
  private EditText b;
  private DialpadFragment c;
  private String d;
  
  public void a(int paramInt) {}
  
  public void a(int paramInt, boolean paramBoolean)
  {
    char c1 = '\000';
    if (!paramBoolean) {
      return;
    }
    switch (paramInt)
    {
    default: 
      ezi.a("Babel", 39 + "keyCode is not a dtmf code: " + paramInt, new Object[0]);
    }
    cgw localcgw;
    while (c1 != 0)
    {
      b.getText().append(c1);
      localcgw = a.r();
      if (localcgw == null) {
        break;
      }
      if (d != null) {
        break label220;
      }
      localcgw.a(c1);
      return;
      c1 = '1';
      continue;
      c1 = '2';
      continue;
      c1 = '3';
      continue;
      c1 = '4';
      continue;
      c1 = '5';
      continue;
      c1 = '6';
      continue;
      c1 = '7';
      continue;
      c1 = '8';
      continue;
      c1 = '9';
      continue;
      c1 = '0';
      continue;
      c1 = '#';
      continue;
      c1 = '*';
    }
    label220:
    localcgw.a(d, c1);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(aal.gd, paramViewGroup, false);
    b = ((EditText)paramLayoutInflater.findViewById(aen.du));
    c = ((DialpadFragment)getChildFragmentManager().a(aen.bD));
    c.a(this);
    d = getActivity().getIntent().getStringExtra("extra_endpoint_jid");
    paramViewGroup = a.r();
    if (paramViewGroup != null) {
      b.setText(paramViewGroup.M());
    }
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.dialpad.InCallDialpadFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */