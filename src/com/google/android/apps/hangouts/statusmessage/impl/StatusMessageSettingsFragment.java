package com.google.android.apps.hangouts.statusmessage.impl;

import aal;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import ba;
import epv;
import eqb;
import ipe;
import jry;
import jrz;
import jsa;
import jsd;
import jsj;
import jud;

public final class StatusMessageSettingsFragment
  extends ipe
  implements jry<eqb>, jrz<epv>
{
  private epv a;
  private eqb b;
  
  @Deprecated
  public StatusMessageSettingsFragment() {}
  
  private StatusMessageSettingsFragment(Activity paramActivity)
  {
    a(paramActivity);
  }
  
  private void a(Activity paramActivity)
  {
    try
    {
      b = ((eqb)((jsd)((jry)paramActivity).a()).b(new jsj(this)));
      a = b.a();
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new IllegalStateException("Missing entry point. If you're in a test with explicit entry points specified in your @TestRoot, check that you're not missing the one for this class.", paramActivity);
    }
  }
  
  private epv b()
  {
    if (a == null) {
      throw new IllegalStateException("peer() called before initialized");
    }
    return a;
  }
  
  public Class<epv> g()
  {
    return epv.class;
  }
  
  public LayoutInflater getLayoutInflater(Bundle paramBundle)
  {
    super.getLayoutInflater(paramBundle);
    return new jsa(getActivity().getLayoutInflater().getContext(), b).b();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    
    try
    {
      super.onActivityCreated(paramBundle);
      return;
    }
    finally
    {
      jud.c();
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    
    try
    {
      super.onAttach(paramActivity);
      if (a == null) {
        a(paramActivity);
      }
      if (Build.VERSION.SDK_INT >= 21) {
        paramActivity.getWindow().setStatusBarColor(paramActivity.getResources().getColor(aal.dG));
      }
      return;
    }
    finally
    {
      jud.c();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    
    try
    {
      super.onCreate(paramBundle);
      return;
    }
    finally
    {
      jud.c();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    
    try
    {
      super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
      paramLayoutInflater = b().a(paramLayoutInflater, paramViewGroup, paramBundle);
      return paramLayoutInflater;
    }
    finally
    {
      jud.c();
    }
  }
  
  public void onDestroy()
  {
    
    try
    {
      super.onDestroy();
      return;
    }
    finally
    {
      jud.c();
    }
  }
  
  public void onDestroyView()
  {
    
    try
    {
      super.onDestroyView();
      return;
    }
    finally
    {
      jud.c();
    }
  }
  
  public void onDetach()
  {
    
    try
    {
      super.onDetach();
      return;
    }
    finally
    {
      jud.c();
    }
  }
  
  public void onPause()
  {
    
    try
    {
      super.onPause();
      return;
    }
    finally
    {
      jud.c();
    }
  }
  
  public void onResume()
  {
    
    try
    {
      super.onResume();
      return;
    }
    finally
    {
      jud.c();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    b().a(paramBundle);
  }
  
  public void onStart()
  {
    
    try
    {
      super.onStart();
      return;
    }
    finally
    {
      jud.c();
    }
  }
  
  public void onStop()
  {
    
    try
    {
      super.onStop();
      return;
    }
    finally
    {
      jud.c();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.statusmessage.impl.StatusMessageSettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */