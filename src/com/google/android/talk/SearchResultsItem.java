package com.google.android.talk;

import android.content.Context;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class SearchResultsItem
  extends LinearLayout
{
  private TextView mDate;
  private ImageView mPersonalLevel;
  private TextView mSender;
  private TextView mSnippet;
  private TextView mTitle;
  
  public SearchResultsItem(Context paramContext)
  {
    super(paramContext);
  }
  
  public SearchResultsItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void init()
  {
    mSender = ((TextView)findViewById(2131755139));
    mTitle = ((TextView)findViewById(2131755118));
    mSnippet = ((TextView)findViewById(2131755137));
    mDate = ((TextView)findViewById(2131755140));
    mPersonalLevel = ((ImageView)findViewById(2131755138));
  }
  
  public final void bind(Context paramContext, GmailProviderWrapper.ConversationCursor paramConversationCursor, boolean paramBoolean)
  {
    if (mTitle == null) {
      init();
    }
    paramContext = paramConversationCursor.getAccount();
    mSender.setText(paramContext);
    paramContext = paramConversationCursor.getSubject();
    mTitle.setText(paramContext);
    paramContext = paramConversationCursor.getSnippet();
    mSnippet.setText(paramContext);
    long l = paramConversationCursor.getDateMs();
    paramContext = DateUtils.getRelativeTimeSpanString(getContext(), l);
    mDate.setText(paramContext);
    paramContext = paramConversationCursor.getPersonalLevel();
    int i = 0;
    switch (paramContext)
    {
    }
    for (;;)
    {
      mPersonalLevel.setImageResource(i);
      setActivated(paramBoolean);
      return;
      i = 2130837579;
      continue;
      i = 2130837578;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SearchResultsItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */