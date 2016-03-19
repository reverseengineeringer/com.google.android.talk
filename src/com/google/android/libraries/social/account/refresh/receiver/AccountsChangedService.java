package com.google.android.libraries.social.account.refresh.receiver;

import android.app.IntentService;

public final class AccountsChangedService
  extends IntentService
{
  public AccountsChangedService()
  {
    super("AccountsChangedService");
  }
  
  /* Error */
  protected void onHandleIntent(android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: aload_0
    //   6: ldc 18
    //   8: invokestatic 24	ilh:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   11: checkcast 18	hrq
    //   14: invokeinterface 26 1 0
    //   19: aload_1
    //   20: invokestatic 31	com/google/android/libraries/social/account/refresh/receiver/AccountsChangedReceiver:a	(Landroid/content/Intent;)Z
    //   23: pop
    //   24: return
    //   25: astore_2
    //   26: aload_1
    //   27: invokestatic 31	com/google/android/libraries/social/account/refresh/receiver/AccountsChangedReceiver:a	(Landroid/content/Intent;)Z
    //   30: pop
    //   31: aload_2
    //   32: athrow
    //   33: astore_2
    //   34: goto -15 -> 19
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	AccountsChangedService
    //   0	37	1	paramIntent	android.content.Intent
    //   25	7	2	localObject	Object
    //   33	1	2	localhqn	hqn
    // Exception table:
    //   from	to	target	type
    //   5	19	25	finally
    //   5	19	33	hqn
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.account.refresh.receiver.AccountsChangedService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */