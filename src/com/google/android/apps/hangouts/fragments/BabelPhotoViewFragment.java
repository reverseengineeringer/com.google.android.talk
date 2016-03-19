package com.google.android.apps.hangouts.fragments;

import aal;
import ack;
import aco;
import aen;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.Toast;
import ba;
import bfd;
import bhs;
import bhv;
import com.google.android.apps.hangouts.hangout.StressMode;
import dcj;
import dvd;
import ehx;
import eit;
import exs;
import eyd;
import eys;
import fcd;
import fe;
import hbs;
import ilh;

public final class BabelPhotoViewFragment
  extends ack
  implements bhv
{
  private Drawable au;
  private bfd av;
  
  public static BabelPhotoViewFragment a(Intent paramIntent, int paramInt, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("arg-intent", paramIntent);
    localBundle.putInt("arg-position", paramInt);
    localBundle.putBoolean("arg-show-spinner", paramBoolean);
    paramIntent = new BabelPhotoViewFragment();
    paramIntent.setArguments(localBundle);
    return paramIntent;
  }
  
  private void v()
  {
    Object localObject = new eyd(a, av.a());
    ((eyd)localObject).c();
    localObject = new bhs((eyd)localObject, this, c.getStringExtra("content_type"), true, null);
    ((eit)ilh.a(getActivity().getApplicationContext(), eit.class)).c((ehx)localObject);
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    hbs.a("Expected null", paramexs);
    hbs.a("Expected null", parameys);
    parameys = getActivity();
    if (parameys != null) {
      if (!paramBoolean1) {
        break label41;
      }
    }
    label41:
    for (int i = StressMode.rI;; i = StressMode.rH)
    {
      Toast.makeText(parameys, i, 0).show();
      return;
    }
  }
  
  public void a(fe<aco> paramfe, aco paramaco)
  {
    if (c == 0)
    {
      super.a(paramfe, paramaco);
      if (paramfe.o() == 3)
      {
        au = paramaco.a(getResources());
        if ((au instanceof fcd)) {
          ((fcd)au).a();
        }
        paramfe = getActivity();
        if (paramfe != null) {
          paramfe.y_();
        }
      }
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1)
    {
      if (paramInt2 == -1) {
        v();
      }
    }
    else {
      return;
    }
    Toast.makeText(getActivity(), StressMode.rH, 0).show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    paramBundle = getActivity();
    av = dvd.e(paramBundle.getIntent().getIntExtra("account_id", -1));
    if (av == null) {
      paramBundle.finish();
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(aal.he, paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem.getItemId() == aen.fR) && (au != null))
    {
      if (((dcj)ilh.a(getActivity().getApplicationContext(), dcj.class)).a("android.permission.WRITE_EXTERNAL_STORAGE")) {
        v();
      }
      for (;;)
      {
        return true;
        paramMenuItem = new Intent(getContext(), BabelPhotoViewFragment.StoragePermissionHelperActivity.class);
        paramMenuItem.putExtra("account_id", av.g());
        startActivityForResult(paramMenuItem, 1);
      }
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    super.onPause();
    if ((au != null) && ((au instanceof fcd))) {
      ((fcd)au).b();
    }
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu = paramMenu.findItem(aen.fR);
    if (au != null) {}
    for (boolean bool = true;; bool = false)
    {
      paramMenu.setVisible(bool);
      return;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if ((au != null) && ((au instanceof fcd))) {
      ((fcd)au).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.BabelPhotoViewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */