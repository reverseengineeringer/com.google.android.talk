package com.google.android.talk.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;

class SetStatusFragment$9$1
  implements DialogInterface.OnClickListener
{
  SetStatusFragment$9$1(SetStatusFragment.9 param9, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1)
    {
      SetStatusFragment.access$2500(this$1.this$0).setText(val$t.getText());
      SetStatusFragment.access$2600(this$1.this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.9.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */