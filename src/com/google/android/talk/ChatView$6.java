package com.google.android.talk;

import android.os.AsyncTask;
import android.os.RemoteException;
import android.text.Editable;
import android.util.Log;
import android.widget.EditText;
import com.google.android.gtalkservice.IChatSession;

class ChatView$6
  extends AsyncTask<Object, Object, String>
{
  ChatView$6(ChatView paramChatView, EditText paramEditText) {}
  
  protected String doInBackground(Object... paramVarArgs)
  {
    try
    {
      paramVarArgs = ChatView.access$6400(this$0).getUnsentComposedMessage();
      if (TalkApp.verboseLoggable()) {
        ChatView.access$4200(this$0, "restoreUnsentComposedMessage to this: '" + paramVarArgs + "'");
      }
      return paramVarArgs;
    }
    catch (RemoteException paramVarArgs)
    {
      paramVarArgs = paramVarArgs;
      Log.e("talk", "saveUnsentComposedMessage: caught ", paramVarArgs);
      return null;
    }
    finally {}
  }
  
  protected void onPostExecute(String paramString)
  {
    if ((paramString != null) && (val$chatInputField.getText().length() == 0))
    {
      val$chatInputField.setText(paramString);
      val$chatInputField.setSelection(val$chatInputField.length());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */