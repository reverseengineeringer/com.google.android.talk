package com.google.android.talk.fragments;

import android.database.ContentObserver;
import android.database.Cursor;
import com.google.android.talk.ContactInfoQuery;
import com.google.android.talk.GmailProviderWrapper.MessageCursor;

final class SearchChatResultFragment$ConversationContentObserver
  extends ContentObserver
{
  public SearchChatResultFragment$ConversationContentObserver(SearchChatResultFragment paramSearchChatResultFragment)
  {
    super(SearchChatResultFragment.access$1400(paramSearchChatResultFragment));
  }
  
  public boolean deliverSelfNotifications()
  {
    return false;
  }
  
  public void onChange(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      if (SearchChatResultFragment.access$200(this$0).getCursor().requery())
      {
        if (!SearchChatResultFragment.access$1500(this$0)) {
          SearchChatResultFragment.access$1600(this$0);
        }
        SearchChatResultFragment.access$1800(this$0).requeryForContactInfo();
      }
    }
    else {
      return;
    }
    SearchChatResultFragment.access$1700(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SearchChatResultFragment.ConversationContentObserver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */