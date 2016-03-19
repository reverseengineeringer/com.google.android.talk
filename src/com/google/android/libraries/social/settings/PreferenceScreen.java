package com.google.android.libraries.social.settings;

import aal;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.google.android.apps.common.proguard.UsedByReflection;
import ijc;
import ijo;
import ijp;
import ijs;
import ijy;

@UsedByReflection
public final class PreferenceScreen
  extends ijo
  implements DialogInterface.OnDismissListener, AdapterView.OnItemClickListener
{
  private ListAdapter a;
  private Dialog c;
  
  @UsedByReflection
  public PreferenceScreen(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, aal.uN);
  }
  
  private void a(Bundle paramBundle)
  {
    Object localObject = y();
    ListView localListView = new ListView((Context)localObject);
    a(localListView);
    CharSequence localCharSequence = o();
    if (TextUtils.isEmpty(localCharSequence)) {}
    for (int i = 16973830;; i = 16973829)
    {
      localObject = new Dialog((Context)localObject, i);
      c = ((Dialog)localObject);
      ((Dialog)localObject).setContentView(localListView);
      if (!TextUtils.isEmpty(localCharSequence)) {
        ((Dialog)localObject).setTitle(localCharSequence);
      }
      ((Dialog)localObject).setOnDismissListener(this);
      if (paramBundle != null) {
        ((Dialog)localObject).onRestoreInstanceState(paramBundle);
      }
      C().a((DialogInterface)localObject);
      ((Dialog)localObject).show();
      return;
    }
  }
  
  private ListAdapter h()
  {
    if (a == null) {
      a = new ijp(this);
    }
    return a;
  }
  
  protected void K_()
  {
    if ((j() != null) || (a() == 0)) {
      return;
    }
    a(null);
  }
  
  protected void a(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(ijy.class))) {
      super.a(paramParcelable);
    }
    do
    {
      return;
      paramParcelable = (ijy)paramParcelable;
      super.a(paramParcelable.getSuperState());
    } while (!a);
    a(b);
  }
  
  public void a(ListView paramListView)
  {
    paramListView.setOnItemClickListener(this);
    paramListView.setAdapter(h());
    D();
  }
  
  protected boolean d()
  {
    return false;
  }
  
  protected Parcelable e()
  {
    Object localObject = super.e();
    Dialog localDialog = c;
    if ((localDialog == null) || (!localDialog.isShowing())) {
      return (Parcelable)localObject;
    }
    localObject = new ijy((Parcelable)localObject);
    a = true;
    b = localDialog.onSaveInstanceState();
    return (Parcelable)localObject;
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    c = null;
    C().b(paramDialogInterface);
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = h().getItem(paramInt);
    if (!(paramAdapterView instanceof ijc)) {
      return;
    }
    ((ijc)paramAdapterView).a(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.settings.PreferenceScreen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */