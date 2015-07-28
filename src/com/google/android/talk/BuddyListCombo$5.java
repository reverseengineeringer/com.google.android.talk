package com.google.android.talk;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.ImageButton;
import com.google.android.talk.fragments.BuddyListFragment.ListItemInfo;
import com.google.android.talk.fragments.ChatScreenFragment.Controller;

class BuddyListCombo$5
  implements ChatScreenFragment.Controller
{
  BuddyListCombo$5(BuddyListCombo paramBuddyListCombo) {}
  
  public void onLastChatClosed()
  {
    BuddyListCombo.access$200(this$0, BuddyListCombo.Focus.BuddyList, false);
  }
  
  public void onShowContactInfo(BuddyListFragment.ListItemInfo paramListItemInfo)
  {
    BuddyListCombo.access$100(this$0, paramListItemInfo);
  }
  
  public boolean onVideoChatStarted()
  {
    return this$0.startVideoChatAnimation();
  }
  
  public void setTitle(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, int paramInt2, Drawable paramDrawable)
  {
    if (paramCharSequence1 == null) {
      return;
    }
    if (TextUtils.isEmpty(paramCharSequence3)) {}
    for (;;)
    {
      BuddyListCombo.access$300(this$0, paramCharSequence2, paramCharSequence1, paramInt1, paramDrawable);
      if (BuddyListCombo.access$400(this$0) == null) {
        break;
      }
      if (paramInt2 != 0) {
        break label58;
      }
      BuddyListCombo.access$400(this$0).setVisibility(8);
      return;
      paramCharSequence1 = paramCharSequence3;
    }
    label58:
    BuddyListCombo.access$400(this$0).setVisibility(0);
    BuddyListCombo.access$400(this$0).setImageResource(BuddyListCombo.access$500(this$0).getStatusIcon(5, paramInt2));
  }
  
  public void updateOtrStatus(boolean paramBoolean) {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyListCombo.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */