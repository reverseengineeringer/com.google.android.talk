package com.google.android.talk.fragments;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.Toast;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SetStatusFragment$AvatarPicker
{
  private File mCurrentPhotoFile;
  
  public SetStatusFragment$AvatarPicker(SetStatusFragment paramSetStatusFragment, Bundle paramBundle)
  {
    onRestoreInstanceState(paramBundle);
  }
  
  private String getPhotoFileName()
  {
    Date localDate = new Date(System.currentTimeMillis());
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("'IMG'_yyyyMMdd_HHmmss");
    return localSimpleDateFormat.format(localDate) + ".jpg";
  }
  
  public void cropPhoto()
  {
    try
    {
      MediaScannerConnection.scanFile(SetStatusFragment.access$1900(this$0), new String[] { mCurrentPhotoFile.getAbsolutePath() }, new String[] { null }, null);
      Intent localIntent = SetStatusFragment.getCropImageIntent(Uri.fromFile(mCurrentPhotoFile));
      SetStatusFragment.access$1900(this$0).startActivityForResult(localIntent, 1100);
      return;
    }
    catch (Exception localException)
    {
      Log.e("talk", "Cannot crop image", localException);
      Toast.makeText(SetStatusFragment.access$1900(this$0), 2131493050, 1).show();
    }
  }
  
  protected void doPickPhotoFromGallery()
  {
    try
    {
      Intent localIntent = SetStatusFragment.getPhotoPickIntent();
      SetStatusFragment.access$1900(this$0).startActivityForResult(localIntent, 1100);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Toast.makeText(SetStatusFragment.access$1900(this$0), 2131493050, 1).show();
    }
  }
  
  protected void doTakePhoto()
  {
    try
    {
      SetStatusFragment.access$2900().mkdirs();
      mCurrentPhotoFile = new File(SetStatusFragment.access$2900(), getPhotoFileName());
      Intent localIntent = SetStatusFragment.getTakePickIntent(mCurrentPhotoFile);
      SetStatusFragment.access$1900(this$0).startActivityForResult(localIntent, 1101);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Toast.makeText(SetStatusFragment.access$1900(this$0), 2131493050, 1).show();
    }
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getString("currentphotofile");
      if (paramBundle != null) {
        mCurrentPhotoFile = new File(paramBundle);
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (mCurrentPhotoFile != null) {
      paramBundle.putString("currentphotofile", mCurrentPhotoFile.toString());
    }
  }
  
  public void show()
  {
    new PickPhotoDialogFragment().show(this$0.getFragmentManager(), "pickphoto");
  }
  
  private class PickPhotoDialogFragment
    extends DialogFragment
  {
    public PickPhotoDialogFragment() {}
    
    public Dialog onCreateDialog(Bundle paramBundle)
    {
      paramBundle = new ContextThemeWrapper(SetStatusFragment.access$1900(this$0), 16973934);
      if (SetStatusFragment.access$2700(this$0)) {}
      for (int i = 3;; i = 2)
      {
        Object localObject = new String[i];
        i = 0 + 1;
        localObject[0] = SetStatusFragment.access$1900(this$0).getString(2131493048);
        int j = i + 1;
        localObject[i] = SetStatusFragment.access$1900(this$0).getString(2131493049);
        if (SetStatusFragment.access$2700(this$0)) {
          localObject[j] = SetStatusFragment.access$1900(this$0).getString(2131493047);
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
              doPickPhotoFromGallery();
              return;
            case 1: 
              doTakePhoto();
              return;
            }
            SetStatusFragment.access$2800(this$0);
          }
        });
        return paramBundle.create();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.AvatarPicker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */