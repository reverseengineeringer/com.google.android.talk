package com.google.android.talk;

import android.content.ContentResolver;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.MediaStore.Audio.Media;

class TalkApp$5
  extends AsyncTask<Void, Void, String>
{
  TalkApp$5(TalkApp paramTalkApp) {}
  
  protected String doInBackground(Void... paramVarArgs)
  {
    Cursor localCursor = this$0.getContentResolver().query(MediaStore.Audio.Media.INTERNAL_CONTENT_URI, new String[] { "_id" }, "title=?", new String[] { "Mira" }, null);
    if (localCursor == null) {
      return null;
    }
    paramVarArgs = null;
    try
    {
      if (localCursor.moveToFirst())
      {
        paramVarArgs = MediaStore.Audio.Media.INTERNAL_CONTENT_URI + "/" + localCursor.getString(0);
        TalkApp.access$902(this$0, paramVarArgs);
      }
      return paramVarArgs;
    }
    finally
    {
      localCursor.close();
    }
  }
  
  protected void onPostExecute(String paramString)
  {
    if (paramString != null) {
      TalkApp.access$1000(this$0, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkApp.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */