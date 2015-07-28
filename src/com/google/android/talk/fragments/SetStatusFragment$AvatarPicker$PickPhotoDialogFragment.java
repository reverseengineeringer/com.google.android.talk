package com.google.android.talk.fragments;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;

class SetStatusFragment$AvatarPicker$PickPhotoDialogFragment
  extends DialogFragment
{
  public SetStatusFragment$AvatarPicker$PickPhotoDialogFragment(SetStatusFragment.AvatarPicker paramAvatarPicker) {}
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new ContextThemeWrapper(SetStatusFragment.access$1900(this$1.this$0), 16973934);
    if (SetStatusFragment.access$2700(this$1.this$0)) {}
    for (int i = 3;; i = 2)
    {
      Object localObject = new String[i];
      i = 0 + 1;
      localObject[0] = SetStatusFragment.access$1900(this$1.this$0).getString(2131493048);
      int j = i + 1;
      localObject[i] = SetStatusFragment.access$1900(this$1.this$0).getString(2131493049);
      if (SetStatusFragment.access$2700(this$1.this$0)) {
        localObject[j] = SetStatusFragment.access$1900(this$1.this$0).getString(2131493047);
      }
      localObject = new ArrayAdapter(paramBundle, 17367043, (Object[])localObject);
      paramBundle = new AlertDialog.Builder(paramBundle);
      paramBundle.setTitle(2131493046);
      paramBundle.setSingleChoiceItems((ListAdapter)localObject, -1, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          paramAnonymousDialogInterface = getActivity();
          if ((paramAnonymousDialogInterface == null) || (paramAnonymousDialogInterface.isFinishing())) {
            return;
          }
          switch (paramAnonymousInt)
          {
          default: 
            return;
          case 0: 
            this$1.doPickPhotoFromGallery();
            return;
          case 1: 
            this$1.doTakePhoto();
            return;
          }
          SetStatusFragment.access$2800(this$1.this$0);
        }
      });
      return paramBundle.create();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.AvatarPicker.PickPhotoDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */