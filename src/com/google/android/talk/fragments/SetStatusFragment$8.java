package com.google.android.talk.fragments;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListPopupWindow;

class SetStatusFragment$8
  implements View.OnClickListener
{
  SetStatusFragment$8(SetStatusFragment paramSetStatusFragment, boolean paramBoolean, View paramView) {}
  
  public void onClick(final View paramView)
  {
    final ListPopupWindow localListPopupWindow = new ListPopupWindow(this$0.getActivity(), null);
    if (val$custom) {}
    for (paramView = SetStatusFragment.access$2200(this$0, this$0.getActivity());; paramView = SetStatusFragment.access$2300(this$0, this$0.getActivity()))
    {
      localListPopupWindow.setAnchorView(val$anchor);
      localListPopupWindow.setAdapter(paramView);
      localListPopupWindow.setModal(true);
      localListPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          SetStatusFragment.access$2400(this$0, (SetStatusFragment.StatusItem)paramView.getItem(paramAnonymousInt));
          localListPopupWindow.dismiss();
        }
      });
      ((InputMethodManager)SetStatusFragment.access$1900(this$0).getSystemService("input_method")).hideSoftInputFromWindow(val$anchor.getWindowToken(), 0);
      localListPopupWindow.show();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */