package com.google.android.talk;

import android.content.res.Resources;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.QuickContactBadge;
import android.widget.TextView;
import com.google.android.gtalkservice.GroupChatInvitation;
import com.google.android.talk.util.Markup;
import java.util.HashMap;

class RosterListItem$BindHandler
{
  long accountId;
  boolean audioCapable;
  RosterListAdapter.CallState callState;
  int capabilities;
  int clientType;
  int contactType;
  private boolean fastTrack;
  GroupChatInvitation invitation;
  boolean isGroupChat;
  boolean isGroupChatInvitation;
  int itemViewType;
  private boolean narrow;
  CharSequence nickname;
  int presenceMode;
  private boolean scrolling;
  boolean suppressIndent;
  private boolean suppressVideoButton;
  boolean tabletMode;
  boolean videoCapable;
  
  private RosterListItem$BindHandler(RosterListItem paramRosterListItem) {}
  
  private void bindAvatar(Cursor paramCursor)
  {
    int k = 1;
    Object localObject;
    label39:
    ImageView localImageView;
    label59:
    int m;
    int i;
    if ((!isGroupChat) && (fastTrack) && (!narrow))
    {
      j = 1;
      if (j != 0) {
        break label183;
      }
      localObject = RosterListItem.access$2800(this$0);
      localImageView = (ImageView)localObject;
      if (j == 0) {
        break label195;
      }
      localObject = RosterListItem.access$2800(this$0);
      localObject = (ImageView)localObject;
      localImageView.setVisibility(0);
      ((ImageView)localObject).setVisibility(8);
      m = 0;
      i = 0;
      if (!isGroupChat) {
        break label207;
      }
      setAvatar(localImageView, access$400this$0).mGroupAvatar);
      if (!scrolling)
      {
        RosterListItem.access$3000(this$0, localImageView);
        if (itemViewType != 0) {
          RosterListItem.access$3000(this$0, RosterListItem.access$2300(this$0));
        }
      }
      if (presenceMode == 0) {
        break label274;
      }
    }
    label183:
    label195:
    label207:
    label274:
    for (int j = k;; j = 0)
    {
      if ((j != 0) || (i == 0)) {
        break label279;
      }
      localImageView.setColorFilter(RosterListItem.access$400(this$0).getDesaturedColorFilter());
      return;
      j = 0;
      break;
      localObject = RosterListItem.access$2900(this$0);
      break label39;
      localObject = RosterListItem.access$2900(this$0);
      break label59;
      paramCursor = getAvatar(paramCursor, accountId, scrolling);
      if (paramCursor == null) {
        paramCursor = RosterListItem.access$400(this$0).getGenericAvatar();
      }
      for (i = m;; i = 1)
      {
        if (j != 0) {
          ((QuickContactBadge)localImageView).assignContactFromEmail(RosterListItem.access$100(this$0), true);
        }
        setAvatar(localImageView, paramCursor);
        break;
      }
    }
    label279:
    localImageView.clearColorFilter();
  }
  
  private void bindLines(Markup paramMarkup, Cursor paramCursor, boolean paramBoolean)
  {
    RosterListItem.access$1500(this$0).setTypeface(RosterListItem.access$1700(this$0));
    RosterListItem.access$1500(this$0).setTextColor(RosterListItem.access$1800(this$0));
    RosterListItem.access$1600(this$0).setTextColor(RosterListItem.access$1900(this$0));
    if (itemViewType == 0)
    {
      if (isGroupChat)
      {
        RosterListItem.access$1500(this$0).setText(RosterListItem.access$800(this$0).getString(2131492922));
        RosterListItem.access$1600(this$0).setText(StringUtils.parseBareAddress(invitation.getInviter()));
        return;
      }
      RosterListItem.access$1500(this$0).setText(RosterListItem.access$800(this$0).getString(2131492903));
      RosterListItem.access$1600(this$0).setText(nickname);
      return;
    }
    RosterListItem.access$1500(this$0).setText(nickname);
    int i = 0;
    int j = 0;
    if ((itemViewType == 3) || ((tabletMode) && (RosterListItem.access$1100(this$0).isActivated())))
    {
      RosterListItem.access$1500(this$0).setTypeface(RosterListItem.access$1500(this$0).getTypeface(), 1);
      RosterListItem.access$1500(this$0).setTextColor(-1);
      RosterListItem.access$1600(this$0).setTextColor(-1);
    }
    boolean bool;
    if (itemViewType == 1)
    {
      bool = true;
      label247:
      if (bool != paramBoolean)
      {
        String str = paramCursor.getString(RosterListItem.access$2000(this$0));
        if (!TextUtils.isEmpty(str))
        {
          RosterListItem.access$1500(this$0).setTypeface(RosterListItem.access$1500(this$0).getTypeface(), 1);
          RosterListItem.access$1600(this$0).setText(paramMarkup.markup('"' + str + '"'));
          j = 1;
        }
        i = j;
        if (!RosterListItem.access$1100(this$0).isActivated()) {}
      }
      switch (clientType)
      {
      default: 
        i = j;
        label388:
        j = i;
        if (i == 0)
        {
          if (!isGroupChat) {
            break label491;
          }
          RosterListItem.access$1600(this$0).setText(2131492921);
          j = 1;
        }
        break;
      }
    }
    while (j == 0)
    {
      paramCursor = RosterListItem.access$100(this$0);
      paramMarkup = paramCursor;
      if (RosterListItem.access$400(this$0).shouldHideRemoteJid(paramCursor)) {
        paramMarkup = "";
      }
      RosterListItem.access$1600(this$0).setText(paramMarkup);
      return;
      bool = false;
      break label247;
      RosterListItem.access$1600(this$0).setText(2131493121);
      i = j;
      break label388;
      label491:
      if ((presenceMode != 5) && (presenceMode != 4) && (presenceMode != 3))
      {
        j = i;
        if (presenceMode != 2) {}
      }
      else
      {
        paramCursor.copyStringToBuffer(RosterListItem.access$2100(this$0), RosterListItem.access$2200(this$0));
        j = i;
        if (access$2200this$0).sizeCopied > 0)
        {
          RosterListItem.access$1600(this$0).setText(access$2200this$0).data, 0, access$2200this$0).sizeCopied);
          j = 1;
        }
      }
    }
  }
  
  private void bindPresence(Cursor paramCursor)
  {
    RosterListItem.access$2600(this$0).setImageResource(RosterListItem.access$400(this$0).getStatusIcon(presenceMode, 0));
  }
  
  private void bindShover(boolean paramBoolean)
  {
    int i = 0;
    if (suppressIndent)
    {
      i = 0;
      j = i;
      if (paramBoolean) {
        if (i != 0) {
          break label118;
        }
      }
    }
    label118:
    for (int j = 1;; j = 0)
    {
      RosterListItem.access$2700(this$0).setVisibility(8);
      access$1200this$0).getLayoutParams()).leftMargin = RosterListItem.access$800(this$0).getDimensionPixelOffset(2131427339);
      if (j != 0) {
        RosterListItem.access$2700(this$0).setVisibility(0);
      }
      return;
      if (itemViewType == 3)
      {
        i = 0;
        break;
      }
      if (itemViewType == 0) {
        break;
      }
      if (itemViewType != 1) {}
      for (i = 1;; i = 0) {
        break;
      }
    }
  }
  
  private void bindVideoButton(Cursor paramCursor)
  {
    int i;
    if ((callState != null) && (callState.appliesToContact(RosterListItem.access$100(this$0))))
    {
      i = 1;
      RosterListItem.access$1402(this$0, this$0.findViewById(2131755123));
      RosterListItem.access$1400(this$0).setVisibility(8);
      RosterListItem.access$1300(this$0).setVisibility(0);
      RosterListItem.access$1300(this$0).setOnClickListener(null);
      RosterListItem.access$1300(this$0).setClickable(false);
      if (i == 0) {
        break label203;
      }
      RosterListItem.access$2300(this$0).setImageResource(RosterListItem.access$400(this$0).getAudioVideoButtonIcon(capabilities));
      if (!callState.mIsVideo) {
        break label187;
      }
      RosterListItem.access$2300(this$0).setImageResource(2130837637);
      RosterListItem.access$1300(this$0).setOnClickListener(RosterListItem.access$2400(this$0));
    }
    for (;;)
    {
      RosterListItem.access$1400(this$0).setVisibility(0);
      RosterListItem.access$1300(this$0).setBackgroundResource(2130837706);
      return;
      i = 0;
      break;
      label187:
      RosterListItem.access$2300(this$0).setImageResource(2130837567);
    }
    label203:
    if ((!RosterListItem.access$2500(this$0)) && ((ActivityUtils.isVideoChatCapable(capabilities)) || (ActivityUtils.isAudioChatCapable(capabilities))))
    {
      RosterListItem.access$2300(this$0).setImageResource(RosterListItem.access$400(this$0).getAudioVideoButtonIcon(capabilities));
      RosterListItem.access$1300(this$0).setVisibility(0);
      RosterListItem.access$1300(this$0).setOnClickListener(RosterListItem.access$2400(this$0));
      RosterListItem.access$1300(this$0).setBackgroundResource(2130837706);
      RosterListItem.access$1400(this$0).setVisibility(0);
      return;
    }
    RosterListItem.access$1300(this$0).setVisibility(8);
    RosterListItem.access$1400(this$0).setVisibility(8);
  }
  
  private Drawable getAvatar(Cursor paramCursor, long paramLong, boolean paramBoolean)
  {
    AvatarCache localAvatarCache = AvatarCache.getInstance(paramLong, true);
    int i = paramCursor.getColumnIndex("avatars_data");
    if (paramBoolean) {
      return localAvatarCache.getAvatarIfInCache(paramCursor, RosterListItem.access$3100(this$0), i, RosterListItem.access$100(this$0), null, null);
    }
    return localAvatarCache.getAvatar(paramCursor, RosterListItem.access$3100(this$0), i, RosterListItem.access$100(this$0), null);
  }
  
  private void handleLayout(boolean paramBoolean)
  {
    int i = 0;
    this$0.setPadding(0, 0, 0, 0);
    if (presenceMode != 0) {
      i = 1;
    }
    this$0.setBackgroundDrawable(null);
    if (access$1000this$0).itemViewType == 3) {
      RosterListItem.access$1100(this$0).setBackgroundResource(RosterListItem.access$400(this$0).getStatusColorId(presenceMode));
    }
    for (;;)
    {
      RosterListItem.access$1200(this$0).setPadding(RosterListItem.access$1200(this$0).getPaddingLeft(), RosterListItem.access$1200(this$0).getPaddingTop(), RosterListItem.access$800(this$0).getDimensionPixelOffset(2131427376), RosterListItem.access$1200(this$0).getPaddingBottom());
      return;
      if (access$1000this$0).itemViewType == 1) {
        RosterListItem.access$1100(this$0).setBackgroundResource(2130837665);
      } else if (i != 0) {
        RosterListItem.access$1100(this$0).setBackgroundResource(2130837667);
      } else {
        RosterListItem.access$1100(this$0).setBackgroundResource(2130837663);
      }
    }
  }
  
  private void handleNarrow()
  {
    int i = 0;
    if (narrow)
    {
      RosterListItem.access$1300(this$0).setVisibility(8);
      RosterListItem.access$1400(this$0).setVisibility(8);
      return;
    }
    RosterListItem.access$1500(this$0).setVisibility(0);
    TextView localTextView = RosterListItem.access$1600(this$0);
    if (RosterListItem.access$1600(this$0).getText().length() > 0) {}
    for (;;)
    {
      localTextView.setVisibility(i);
      return;
      i = 8;
    }
  }
  
  private void setAvatar(ImageView paramImageView, Drawable paramDrawable)
  {
    paramImageView.setImageDrawable(paramDrawable);
    paramImageView.requestLayout();
  }
  
  void compute(Cursor paramCursor, RosterListAdapter.CallState paramCallState, boolean paramBoolean1, long paramLong, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6)
  {
    boolean bool = true;
    callState = paramCallState;
    suppressIndent = paramBoolean1;
    suppressVideoButton = paramBoolean6;
    RosterListItem.access$102(this$0, paramCursor.getString(RosterListItem.access$200(this$0)));
    isGroupChat = false;
    isGroupChatInvitation = false;
    invitation = null;
    contactType = paramCursor.getInt(RosterListItem.access$300(this$0));
    if (contactType == 2)
    {
      isGroupChat = true;
      invitation = ((GroupChatInvitation)access$400this$0).mGroupChatInvitations.get(RosterListItem.access$100(this$0)));
      if (invitation != null)
      {
        paramBoolean1 = true;
        isGroupChatInvitation = paramBoolean1;
      }
    }
    else
    {
      itemViewType = RosterListItem.access$500(paramCursor, isGroupChatInvitation);
      nickname = paramCursor.getString(RosterListItem.access$600(this$0));
      capabilities = paramCursor.getInt(RosterListItem.access$700(this$0));
      if ((capabilities & 0x1) == 0) {
        break label294;
      }
      paramBoolean1 = true;
      label183:
      audioCapable = paramBoolean1;
      if ((capabilities & 0x2) == 0) {
        break label299;
      }
      paramBoolean1 = bool;
      label200:
      videoCapable = paramBoolean1;
      tabletMode = paramBoolean2;
      accountId = paramLong;
      narrow = paramBoolean5;
      scrolling = paramBoolean3;
      fastTrack = paramBoolean4;
      if (TextUtils.isEmpty(nickname)) {
        if (!isGroupChat) {
          break label304;
        }
      }
    }
    label294:
    label299:
    label304:
    for (paramCallState = RosterListItem.access$800(this$0).getText(2131492920);; paramCallState = RosterListItem.access$100(this$0))
    {
      nickname = paramCallState;
      presenceMode = paramCursor.getInt(RosterListItem.access$900(this$0));
      return;
      paramBoolean1 = false;
      break;
      paramBoolean1 = false;
      break label183;
      paramBoolean1 = false;
      break label200;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListItem.BindHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */