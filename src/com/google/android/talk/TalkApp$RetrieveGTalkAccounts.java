package com.google.android.talk;

import android.accounts.Account;
import android.content.ContentResolver;
import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

class TalkApp$RetrieveGTalkAccounts
  extends AsyncTask<ContentResolver, Void, List<TalkApp.AccountInfo>>
{
  private boolean mCompleted;
  private Account[] mDeviceAccounts;
  
  public TalkApp$RetrieveGTalkAccounts(TalkApp paramTalkApp, Account[] paramArrayOfAccount)
  {
    mDeviceAccounts = paramArrayOfAccount;
    TalkApp.access$000("RetrieveGTalkAccounts account count: " + paramArrayOfAccount.length);
  }
  
  protected List<TalkApp.AccountInfo> doInBackground(ContentResolver... paramVarArgs)
  {
    List localList = DatabaseUtils.getAllAccountInfos(paramVarArgs[0]);
    TalkApp.access$400(this$0).clear();
    TalkApp.access$000("RetrieveGTalkAccounts.onPostExecute size: " + localList.size() + " mDeviceAccounts.length: " + mDeviceAccounts.length);
    int i = 0;
    while (i < mDeviceAccounts.length)
    {
      ListIterator localListIterator = localList.listIterator();
      paramVarArgs = null;
      int k = 0;
      TalkApp.AccountInfo localAccountInfo;
      do
      {
        j = k;
        if (!localListIterator.hasNext()) {
          break;
        }
        localAccountInfo = (TalkApp.AccountInfo)localListIterator.next();
        TalkApp.access$000("gtalkAccount name: " + username);
        paramVarArgs = localAccountInfo;
      } while (!username.equals(mDeviceAccounts[i].name));
      int j = 1;
      paramVarArgs = localAccountInfo;
      if (j == 0)
      {
        paramVarArgs = new TalkApp.AccountInfo();
        username = mDeviceAccounts[i].name;
      }
      TalkApp.access$400(this$0).add(paramVarArgs);
      i += 1;
    }
    TalkApp.access$500(this$0);
    try
    {
      mCompleted = true;
      notifyAll();
      return localList;
    }
    finally {}
  }
  
  protected void onPostExecute(List<TalkApp.AccountInfo> paramList)
  {
    TalkApp.access$602(this$0, true);
    TalkApp.access$000("RetrieveGTalkAccountsonPostExecute mAccountList count: " + TalkApp.access$400(this$0).size());
    TalkApp.access$700(this$0);
  }
  
  /* Error */
  public void waitForAccounts()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 119	com/google/android/talk/TalkApp$RetrieveGTalkAccounts:mCompleted	Z
    //   6: ifeq +6 -> 12
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: aload_0
    //   13: invokevirtual 148	java/lang/Object:wait	()V
    //   16: aload_0
    //   17: monitorexit
    //   18: goto -18 -> 0
    //   21: astore_1
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_1
    //   25: athrow
    //   26: astore_1
    //   27: goto -11 -> 16
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	RetrieveGTalkAccounts
    //   21	4	1	localObject	Object
    //   26	1	1	localInterruptedException	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   2	11	21	finally
    //   12	16	21	finally
    //   16	18	21	finally
    //   22	24	21	finally
    //   12	16	26	java/lang/InterruptedException
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkApp.RetrieveGTalkAccounts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */