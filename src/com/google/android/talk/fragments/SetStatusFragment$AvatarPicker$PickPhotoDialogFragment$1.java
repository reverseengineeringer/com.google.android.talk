package com.google.android.talk.fragments;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1
  implements DialogInterface.OnClickListener
{
  SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1(SetStatusFragment.AvatarPicker.PickPhotoDialogFragment paramPickPhotoDialogFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    paramDialogInterface = this$2.getActivity();
    if ((paramDialogInterface == null) || (paramDialogInterface.isFinishing())) {
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      this$2.this$1.doPickPhotoFromGallery();
      return;
    case 1: 
      this$2.this$1.doTakePhoto();
      return;
    }
    SetStatusFragment.access$2800(this$2.this$1.this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.AvatarPicker.PickPhotoDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */