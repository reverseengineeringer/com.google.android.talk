package com.google.android.talk.fragments;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;

class SetStatusFragment$9
  implements View.OnClickListener
{
  SetStatusFragment$9(SetStatusFragment paramSetStatusFragment) {}
  
  public void onClick(final View paramView)
  {
    paramView = (EditText)LayoutInflater.from(this$0.getActivity()).inflate(2130968605, null);
    paramView.setText(SetStatusFragment.access$2500(this$0).getText());
    DialogInterface.OnClickListener local1 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (paramAnonymousInt == -1)
        {
          SetStatusFragment.access$2500(this$0).setText(paramView.getText());
          SetStatusFragment.access$2600(this$0);
        }
      }
    };
    new AlertDialog.Builder(SetStatusFragment.access$1900(this$0)).setTitle(2131492870).setNegativeButton(2131492907, local1).setPositiveButton(2131493085, local1).setView(paramView).show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */