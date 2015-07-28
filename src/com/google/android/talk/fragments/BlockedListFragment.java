package com.google.android.talk.fragments;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.ListFragment;
import android.app.LoaderManager;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Loader;
import android.database.Cursor;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ResourceCursorAdapter;
import android.widget.TextView;
import com.google.android.gsf.TalkContract.Contacts;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.AvatarCache;
import com.google.android.talk.TalkApp;

public class BlockedListFragment
  extends ListFragment
  implements LoaderManager.LoaderCallbacks<Cursor>
{
  private static final String SELECTED_NICKNAME_TAG = "talk:selectedNickname";
  private static final String SELECTED_USERNAME_TAG = "talk:selectedUsername";
  private static final int UNBLOCK_DIALOG = 1;
  private long mAccountId;
  private TalkApp mApp;
  private int mAvatarDataColumn;
  private int mAvatarHashColumn;
  private int mNicknameColumn;
  private String mSelectedNickname = "";
  private String mSelectedUsername = "";
  private String mUnblockDialogFormatString;
  private int mUsernameColumn;
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getLoaderManager().initLoader(0, null, this);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mApp = TalkApp.getApplication(getActivity());
    mAccountId = getArguments().getLong("accountId");
    mUnblockDialogFormatString = getString(2131492905);
    if (paramBundle != null)
    {
      mSelectedUsername = paramBundle.getString("talk:selectedUsername");
      mSelectedNickname = paramBundle.getString("talk:selectedNickname");
    }
  }
  
  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new CursorLoader(getActivity(), TalkContract.Contacts.CONTENT_URI_BLOCKED_CONTACTS, null, " account=" + mAccountId, null, "nickname COLLATE UNICODE ASC");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130968644, null);
    paramViewGroup = (TextView)paramLayoutInflater.findViewById(16908292);
    paramViewGroup.setText(2131492908);
    paramBundle = (ListView)paramLayoutInflater.findViewById(16908298);
    paramBundle.setEmptyView(paramViewGroup);
    paramBundle.setSaveEnabled(true);
    paramBundle.setItemsCanFocus(true);
    paramBundle.setTextFilterEnabled(true);
    return paramLayoutInflater;
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    mSelectedUsername = ((TextView)paramView.findViewById(2131755036)).getText().toString();
    mSelectedNickname = ((TextView)paramView.findViewById(2131755035)).getText().toString();
    paramListView = new MyAlertDialogFragment(1);
    paramListView.setTargetFragment(this, 0);
    paramListView.show(getFragmentManager(), "unblock");
  }
  
  public void onLoadFinished(Loader<Cursor> paramLoader, Cursor paramCursor)
  {
    paramLoader = (BlockedUserAdapter)getListAdapter();
    if (paramLoader == null) {
      paramLoader = new BlockedUserAdapter(getActivity(), paramCursor);
    }
    for (;;)
    {
      mUsernameColumn = paramCursor.getColumnIndexOrThrow("username");
      mNicknameColumn = paramCursor.getColumnIndexOrThrow("nickname");
      mAvatarHashColumn = paramCursor.getColumnIndexOrThrow("avatars_hash");
      mAvatarDataColumn = paramCursor.getColumnIndexOrThrow("avatars_data");
      setListAdapter(paramLoader);
      return;
      paramLoader.changeCursor(paramCursor);
    }
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader) {}
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("talk:selectedUsername", mSelectedUsername);
    paramBundle.putString("talk:selectedNickname", mSelectedNickname);
  }
  
  private final class BlockedUserAdapter
    extends ResourceCursorAdapter
  {
    public BlockedUserAdapter(Context paramContext, Cursor paramCursor)
    {
      super(2130968587, paramCursor);
    }
    
    public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
    {
      paramContext = (TextView)paramView.findViewById(2131755036);
      TextView localTextView = (TextView)paramView.findViewById(2131755035);
      String str = paramCursor.getString(mUsernameColumn);
      paramContext.setText(str);
      localTextView.setText(paramCursor.getString(mNicknameColumn));
      ((ImageView)paramView.findViewById(2131755034)).setImageDrawable(AvatarCache.getInstance(mAccountId, true).getAvatar(paramCursor, mAvatarHashColumn, mAvatarDataColumn, str, mApp.getGenericAvatar()));
    }
  }
  
  private class MyAlertDialogFragment
    extends DialogFragment
  {
    public MyAlertDialogFragment(int paramInt)
    {
      this$1 = new Bundle();
      putInt("id", paramInt);
      setArguments(BlockedListFragment.this);
    }
    
    public Dialog onCreateDialog(Bundle paramBundle)
    {
      switch (getArguments().getInt("id"))
      {
      default: 
        return null;
      }
      new AlertDialog.Builder(getActivity()).setMessage(String.format(mUnblockDialogFormatString, new Object[] { mSelectedNickname })).setNegativeButton(2131492907, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
        }
      }).setPositiveButton(2131492906, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          try
          {
            mApp.getGTalkService().getImSessionForAccountId(mAccountId).clearContactFlags(mSelectedUsername);
            return;
          }
          catch (RemoteException paramAnonymousDialogInterface) {}
        }
      }).create();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BlockedListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */