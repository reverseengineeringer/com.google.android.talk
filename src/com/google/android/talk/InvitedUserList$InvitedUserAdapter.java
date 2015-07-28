package com.google.android.talk;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.widget.QuickContactBadge;
import android.widget.ResourceCursorAdapter;
import android.widget.TextView;

final class InvitedUserList$InvitedUserAdapter
  extends ResourceCursorAdapter
{
  public InvitedUserList$InvitedUserAdapter(InvitedUserList paramInvitedUserList, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, 2130968612, paramCursor);
  }
  
  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    TextView localTextView1 = (TextView)paramView.findViewById(2131755036);
    TextView localTextView2 = (TextView)paramView.findViewById(2131755035);
    paramContext = paramCursor.getString(paramCursor.getColumnIndexOrThrow("username"));
    localTextView1.setText(paramContext);
    localTextView2.setText(paramCursor.getString(paramCursor.getColumnIndexOrThrow("nickname")));
    paramView = (QuickContactBadge)paramView.findViewById(2131755018);
    paramView.setImageDrawable(TalkApp.getApplication(this$0).getGenericAvatar());
    paramView.assignContactFromEmail(paramContext, true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.InvitedUserList.InvitedUserAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */