package com.google.android.apps.hangouts.fragments;

import aen;
import android.os.Bundle;
import bxu;
import dck;
import dco;
import hpu;
import hqo;
import ilh;
import ils;
import java.util.Collections;

public class BabelPhotoViewFragment$StoragePermissionHelperActivity
  extends ils
{
  private final hpu a = new hqo(this, k).a(j);
  
  protected void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    ((dck)j.a(dck.class)).a(aen.eT, new bxu(this));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null) {
      ((dck)j.a(dck.class)).a(new dco(aen.eT, 2667), Collections.singletonList("android.permission.WRITE_EXTERNAL_STORAGE"));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.BabelPhotoViewFragment.StoragePermissionHelperActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */