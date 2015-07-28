package com.google.android.talk.fragments;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.provider.SearchRecentSuggestions;
import com.google.android.talk.TalkApp;

public class SettingsFragment$ClearSearchDialogFragment
  extends DialogFragment
{
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    new AlertDialog.Builder(getActivity()).setTitle(2131493038).setMessage(2131493039).setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = getActivity();
        if (paramAnonymousDialogInterface != null)
        {
          TalkApp.getApplication(paramAnonymousDialogInterface).getRecentSuggestions().clearHistory();
          dismiss();
        }
      }
    }).setNegativeButton(17039360, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        dismiss();
      }
    }).setIconAttribute(16843605).create();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SettingsFragment.ClearSearchDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */