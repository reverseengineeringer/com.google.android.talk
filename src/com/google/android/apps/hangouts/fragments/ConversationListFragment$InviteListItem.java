package com.google.android.apps.hangouts.fragments;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import bfd;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class ConversationListFragment$InviteListItem
  extends RelativeLayout
{
  private String a;
  private bfd b;
  
  public ConversationListFragment$InviteListItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a()
  {
    if (a != null) {
      RealTimeChatService.a(b.g(), a, false, false, false);
    }
  }
  
  public void a(bfd parambfd, String paramString)
  {
    b = parambfd;
    a = paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.ConversationListFragment.InviteListItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */