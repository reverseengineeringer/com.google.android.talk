package com.google.android.talk.fragments;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.widget.ImageView;
import android.widget.ResourceCursorAdapter;
import android.widget.TextView;
import com.google.android.talk.AvatarCache;
import com.google.android.talk.TalkApp;

final class BlockedListFragment$BlockedUserAdapter
  extends ResourceCursorAdapter
{
  public BlockedListFragment$BlockedUserAdapter(BlockedListFragment paramBlockedListFragment, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, 2130968587, paramCursor);
  }
  
  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    paramContext = (TextView)paramView.findViewById(2131755036);
    TextView localTextView = (TextView)paramView.findViewById(2131755035);
    String str = paramCursor.getString(BlockedListFragment.access$000(this$0));
    paramContext.setText(str);
    localTextView.setText(paramCursor.getString(BlockedListFragment.access$100(this$0)));
    ((ImageView)paramView.findViewById(2131755034)).setImageDrawable(AvatarCache.getInstance(BlockedListFragment.access$200(this$0), true).getAvatar(paramCursor, BlockedListFragment.access$300(this$0), BlockedListFragment.access$400(this$0), str, BlockedListFragment.access$500(this$0).getGenericAvatar()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BlockedListFragment.BlockedUserAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */