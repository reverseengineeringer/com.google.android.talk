package com.google.android.talk.fragments;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.KeyEvent;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class SearchChatResultFragment$4
  extends WebViewClient
{
  SearchChatResultFragment$4(SearchChatResultFragment paramSearchChatResultFragment) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    SearchChatResultFragment.access$2000(this$0).scrollTo(0, SearchChatResultFragment.access$1900(this$0));
    SearchChatResultFragment.access$1902(this$0, 0);
  }
  
  public void onUnhandledKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0)
    {
      this$0.getActivity().onKeyDown(paramKeyEvent.getKeyCode(), paramKeyEvent);
      return;
    }
    this$0.getActivity().onKeyUp(paramKeyEvent.getKeyCode(), paramKeyEvent);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    paramWebView.putExtra("com.android.browser.application_id", this$0.getActivity().getPackageName());
    paramWebView.setFlags(524288);
    try
    {
      this$0.startActivity(paramWebView);
      return true;
    }
    catch (ActivityNotFoundException paramWebView) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SearchChatResultFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */