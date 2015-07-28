package com.google.android.talk.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.provider.SearchRecentSuggestions;
import com.google.android.talk.TalkApp;

class SettingsFragment$ClearSearchDialogFragment$2
  implements DialogInterface.OnClickListener
{
  SettingsFragment$ClearSearchDialogFragment$2(SettingsFragment.ClearSearchDialogFragment paramClearSearchDialogFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = this$0.getActivity();
    if (paramDialogInterface != null)
    {
      TalkApp.getApplication(paramDialogInterface).getRecentSuggestions().clearHistory();
      this$0.dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SettingsFragment.ClearSearchDialogFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */