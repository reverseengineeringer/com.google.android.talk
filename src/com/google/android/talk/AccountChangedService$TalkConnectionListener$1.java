package com.google.android.talk;

class AccountChangedService$TalkConnectionListener$1
  implements Runnable
{
  AccountChangedService$TalkConnectionListener$1(AccountChangedService.TalkConnectionListener paramTalkConnectionListener) {}
  
  public void run()
  {
    if (!AccountChangedService.access$300(this$1.this$0))
    {
      AccountChangedService.access$100(this$1.this$0, "stopping service");
      AccountChangedService.access$400(this$1.this$0);
      AccountChangedService.access$200(this$1.this$0).removeAccountListChangedListener(this$1.this$0);
      this$1.this$0.stopSelf();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountChangedService.TalkConnectionListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */