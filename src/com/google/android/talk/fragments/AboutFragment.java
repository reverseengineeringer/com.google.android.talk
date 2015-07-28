package com.google.android.talk.fragments;

import android.app.Activity;
import android.app.Fragment;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.talk.HelpUtils;
import com.google.android.talk.TalkApp;

public final class AboutFragment
  extends Fragment
{
  private static final String LOG_TAG = "Talk:AboutFragment";
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130968576, null);
    paramViewGroup = new SpannableString(getResources().getString(2131493097));
    paramViewGroup.setSpan(new ClickableSpan()
    {
      public void onClick(View paramAnonymousView)
      {
        HelpUtils.showFeedbackForm(getActivity());
      }
    }, 0, paramViewGroup.length(), 33);
    paramBundle = (TextView)paramLayoutInflater.findViewById(2131755013);
    paramBundle.setText(paramViewGroup);
    paramBundle.setMovementMethod(LinkMovementMethod.getInstance());
    try
    {
      paramViewGroup = getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 0);
      ((TextView)paramLayoutInflater.findViewById(2131755010)).setText(getResources().getString(2131493095, new Object[] { versionName, Integer.valueOf(versionCode) }));
      paramViewGroup = new SpannableString(getResources().getString(2131493101));
      paramViewGroup.setSpan(new ClickableSpan()
      {
        public void onClick(View paramAnonymousView)
        {
          getActivity().showDialog(1);
        }
      }, 0, paramViewGroup.length(), 33);
      paramBundle = (TextView)paramLayoutInflater.findViewById(2131755017);
      paramBundle.setText(paramViewGroup);
      paramBundle.setMovementMethod(LinkMovementMethod.getInstance());
      return paramLayoutInflater;
    }
    catch (PackageManager.NameNotFoundException paramViewGroup)
    {
      for (;;)
      {
        TalkApp.LOGE("Talk:AboutFragment", "Failed to determine package version/code", paramViewGroup);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.AboutFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */