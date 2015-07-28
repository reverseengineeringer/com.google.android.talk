package com.google.android.talk.fragments;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;

class SetStatusFragment$3
  implements Runnable
{
  SetStatusFragment$3(SetStatusFragment paramSetStatusFragment, int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void run()
  {
    if (val$resultCode == -1) {}
    switch (val$requestCode)
    {
    default: 
    case 1100: 
      Bundle localBundle;
      do
      {
        return;
        localBundle = val$data.getExtras();
      } while (localBundle == null);
      SetStatusFragment.access$1502(this$0, (Bitmap)localBundle.getParcelable("data"));
      SetStatusFragment.access$1600(this$0);
      return;
    }
    SetStatusFragment.access$1700(this$0).cropPhoto();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */