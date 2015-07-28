package com.google.android.talk.fragments;

import android.database.Cursor;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.talk.GmailProviderWrapper;
import com.google.android.talk.GmailProviderWrapper.MessageCursor;
import java.util.Map;

final class SearchChatResultFragment$GmailJsInterface
{
  private String mLastAddressLine;
  private String mLastMessageId;
  
  SearchChatResultFragment$GmailJsInterface(SearchChatResultFragment paramSearchChatResultFragment) {}
  
  @JavascriptInterface
  public void forward(String paramString)
  {
    SearchChatResultFragment.access$000(this$0, true, paramString);
  }
  
  public String getAddress(String paramString)
  {
    if (paramString.equals(mLastMessageId)) {
      return mLastAddressLine;
    }
    long l = SearchChatResultFragment.access$400(this$0, paramString);
    paramString = SearchChatResultFragment.access$600(this$0).getMessageCursorForMessageId(SearchChatResultFragment.access$500(this$0), l);
    paramString.moveTo(0);
    String str = SearchChatResultFragment.access$700(this$0, paramString);
    paramString.getCursor().close();
    return str;
  }
  
  public String getCollapsedSnippet(String arg1)
  {
    long l = SearchChatResultFragment.access$400(this$0, ???);
    synchronized (SearchChatResultFragment.access$800(this$0))
    {
      SearchChatResultFragment.access$800(this$0).put(Long.valueOf(l), Boolean.valueOf(false));
      ??? = SearchChatResultFragment.access$600(this$0).getMessageCursorForMessageId(SearchChatResultFragment.access$500(this$0), l);
      ???.moveTo(0);
      String str = SearchChatResultFragment.access$1300(this$0, ???);
      ???.getCursor().close();
      return "<div class=\"snippetDiv\">" + TextUtils.htmlEncode(str) + "</div>";
    }
  }
  
  public String getMessageBody(String paramString)
  {
    boolean bool = true;
    mLastMessageId = paramString;
    long l = SearchChatResultFragment.access$400(this$0, paramString);
    for (;;)
    {
      synchronized (SearchChatResultFragment.access$800(this$0))
      {
        SearchChatResultFragment.access$800(this$0).put(Long.valueOf(l), Boolean.valueOf(true));
        ??? = SearchChatResultFragment.access$600(this$0).getMessageCursorForMessageId(SearchChatResultFragment.access$500(this$0), l);
        ((GmailProviderWrapper.MessageCursor)???).moveTo(0);
        SearchChatResultFragment.access$200(this$0).moveTo(SearchChatResultFragment.access$200(this$0).count() - 1);
        if (SearchChatResultFragment.access$200(this$0).getMessageId() == ((GmailProviderWrapper.MessageCursor)???).getMessageId())
        {
          StringBuilder localStringBuilder = new StringBuilder(16384);
          SearchChatResultFragment.access$1200(this$0, localStringBuilder, ((GmailProviderWrapper.MessageCursor)???).getBody(), paramString, SearchChatResultFragment.access$900(this$0), SearchChatResultFragment.access$1000(this$0), SearchChatResultFragment.access$1100(this$0), ((GmailProviderWrapper.MessageCursor)???).getBodyEmbedsExternalResources(), bool);
          mLastAddressLine = SearchChatResultFragment.access$700(this$0, (GmailProviderWrapper.MessageCursor)???);
          ((GmailProviderWrapper.MessageCursor)???).getCursor().close();
          return localStringBuilder.toString();
        }
      }
      bool = false;
    }
  }
  
  public String getMessageHeaders(int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    SearchChatResultFragment.access$300(this$0, localStringBuilder, SearchChatResultFragment.access$200(this$0), paramInt1, paramInt2);
    return localStringBuilder.toString();
  }
  
  @JavascriptInterface
  public void reply(String paramString)
  {
    SearchChatResultFragment.access$000(this$0, false, paramString);
  }
  
  @JavascriptInterface
  public void replyByChat(String paramString)
  {
    SearchChatResultFragment.access$100(this$0, paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SearchChatResultFragment.GmailJsInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */