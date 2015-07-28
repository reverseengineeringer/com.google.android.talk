package com.google.android.talk;

import android.os.AsyncTask;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gtalkservice.IChatSession;

class ChatView$5
  extends AsyncTask<Object, Object, Object>
{
  final IChatSession chatSession = ChatView.access$6400(this$0);
  
  ChatView$5(ChatView paramChatView, String paramString) {}
  
  protected Object doInBackground(Object... paramVarArgs)
  {
    try
    {
      chatSession.saveUnsentComposedMessage(val$unsentComposedMessage);
      return null;
    }
    catch (RemoteException paramVarArgs)
    {
      for (;;)
      {
        Log.e("talk", "saveUnsentComposedMessage: caught ", paramVarArgs);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */