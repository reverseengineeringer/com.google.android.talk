package com.google.android.talk;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

public class SearchFooterView
  extends LinearLayout
  implements View.OnClickListener
{
  private View mLoading;
  private View mNetworkError;
  private View mRetry;
  
  public SearchFooterView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void bind(GmailProviderWrapper.CursorStatus paramCursorStatus, GmailProviderWrapper.ConversationCursor paramConversationCursor)
  {
    mRetry.setTag(paramConversationCursor);
    switch (paramCursorStatus)
    {
    default: 
      return;
    case ???: 
    case ???: 
      throw new IllegalStateException();
    case ???: 
      mLoading.setVisibility(0);
      mNetworkError.setVisibility(8);
      return;
    }
    mNetworkError.setVisibility(0);
    mLoading.setVisibility(8);
  }
  
  public void onClick(View paramView)
  {
    ((GmailProviderWrapper.ConversationCursor)paramView.getTag()).retry();
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    mLoading = findViewById(2131755134);
    mNetworkError = findViewById(2131755132);
    mRetry = findViewById(2131755133);
    mRetry.setOnClickListener(this);
    setBackgroundColor(-1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SearchFooterView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */