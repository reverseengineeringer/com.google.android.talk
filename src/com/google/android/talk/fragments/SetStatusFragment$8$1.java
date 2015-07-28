package com.google.android.talk.fragments;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListPopupWindow;

class SetStatusFragment$8$1
  implements AdapterView.OnItemClickListener
{
  SetStatusFragment$8$1(SetStatusFragment.8 param8, ArrayAdapter paramArrayAdapter, ListPopupWindow paramListPopupWindow) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SetStatusFragment.access$2400(this$1.this$0, (SetStatusFragment.StatusItem)val$items.getItem(paramInt));
    val$p.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.8.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */