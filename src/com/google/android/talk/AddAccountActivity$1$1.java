package com.google.android.talk;

import android.os.Bundle;

class AddAccountActivity$1$1
  implements Runnable
{
  AddAccountActivity$1$1(AddAccountActivity.1 param1, Bundle paramBundle) {}
  
  public void run()
  {
    if (this$1.this$0.isFinishing()) {
      return;
    }
    if (val$finalBundleResult != null)
    {
      AddAccountActivity.access$002(this$1.this$0, val$finalBundleResult.getString("authAccount"));
      AddAccountActivity.access$100(this$1.this$0).addAccountListChangedListener(this$1.this$0);
      return;
    }
    this$1.this$0.finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AddAccountActivity.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */