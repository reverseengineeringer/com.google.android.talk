package com.google.android.apps.hangouts.peoplelistv2.impl;

import aal;
import aen;
import android.os.Bundle;
import android.view.LayoutInflater;
import bg;
import bz;
import cbr;
import dcc;
import epc;
import hqo;
import qe;

public class PeopleSearchActivity
  extends cbr
{
  public PeopleSearchActivity()
  {
    new hqo(this, B).a(A);
    new epc(this, B).b(A);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.gA);
    bg localbg = C_();
    Object localObject = (dcc)localbg.a(aen.eP);
    paramBundle = (Bundle)localObject;
    if (localObject == null)
    {
      paramBundle = new dcc();
      localbg.a().a(aen.eP, paramBundle, PeopleSearchActivity.class.getName()).b();
    }
    localObject = getLayoutInflater();
    findViewById(aen.eQ);
    paramBundle.a((LayoutInflater)localObject, m);
    g().a(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.peoplelistv2.impl.PeopleSearchActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */