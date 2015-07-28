package com.google.android.talk;

import android.app.ListActivity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.widget.QuickContactBadge;
import android.widget.ResourceCursorAdapter;
import android.widget.TextView;
import com.google.android.gsf.TalkContract.Contacts;

public class InvitedUserList
  extends ListActivity
{
  private long mAccountId;
  
  private void query()
  {
    Cursor localCursor = getContentResolver().query(TalkContract.Contacts.CONTENT_URI, null, String.format("account=%d AND %s=%d AND %s=%d", new Object[] { Long.valueOf(mAccountId), "subscriptionStatus", Integer.valueOf(1), "subscriptionType", Integer.valueOf(0) }), null, "nickname COLLATE UNICODE ASC");
    if (localCursor != null) {
      startManagingCursor(localCursor);
    }
    setListAdapter(new InvitedUserAdapter(this, localCursor));
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968644);
    ((TextView)findViewById(16908292)).setText(2131492909);
    setTitle(getString(2131492971));
    mAccountId = getIntent().getExtras().getLong("accountId");
    query();
  }
  
  public final void onResume()
  {
    super.onResume();
    query();
  }
  
  private final class InvitedUserAdapter
    extends ResourceCursorAdapter
  {
    public InvitedUserAdapter(Context paramContext, Cursor paramCursor)
    {
      super(2130968612, paramCursor);
    }
    
    public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
    {
      TextView localTextView1 = (TextView)paramView.findViewById(2131755036);
      TextView localTextView2 = (TextView)paramView.findViewById(2131755035);
      paramContext = paramCursor.getString(paramCursor.getColumnIndexOrThrow("username"));
      localTextView1.setText(paramContext);
      localTextView2.setText(paramCursor.getString(paramCursor.getColumnIndexOrThrow("nickname")));
      paramView = (QuickContactBadge)paramView.findViewById(2131755018);
      paramView.setImageDrawable(TalkApp.getApplication(InvitedUserList.this).getGenericAvatar());
      paramView.assignContactFromEmail(paramContext, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.InvitedUserList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */