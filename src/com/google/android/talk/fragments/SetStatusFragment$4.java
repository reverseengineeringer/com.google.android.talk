package com.google.android.talk.fragments;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

class SetStatusFragment$4
  extends ArrayAdapter<SetStatusFragment.StatusItem>
{
  SetStatusFragment$4(SetStatusFragment paramSetStatusFragment, Context paramContext1, int paramInt, List paramList, ArrayList paramArrayList, LayoutInflater paramLayoutInflater, Context paramContext2)
  {
    super(paramContext1, paramInt, paramList);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = (SetStatusFragment.StatusItem)val$items.get(paramInt);
    paramViewGroup = val$inflater.inflate(2130968636, paramViewGroup, false);
    TextView localTextView = (TextView)paramViewGroup.findViewById(16908308);
    localTextView.setText(mStatus);
    if (mStatusResourceId != 0)
    {
      localTextView.setCompoundDrawablePadding(6);
      localTextView.setCompoundDrawablesWithIntrinsicBounds(val$ctx.getResources().getDrawable(mStatusResourceId), null, null, null);
    }
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */