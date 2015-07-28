package com.google.android.talk.fragments;

import android.text.style.ClickableSpan;
import android.view.View;
import com.google.android.talk.HelpUtils;

class AboutFragment$1
  extends ClickableSpan
{
  AboutFragment$1(AboutFragment paramAboutFragment) {}
  
  public void onClick(View paramView)
  {
    HelpUtils.showFeedbackForm(this$0.getActivity());
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.AboutFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */