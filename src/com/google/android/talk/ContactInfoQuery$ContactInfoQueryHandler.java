package com.google.android.talk;

import android.content.AsyncQueryHandler;
import android.content.Context;
import android.database.Cursor;

final class ContactInfoQuery$ContactInfoQueryHandler
  extends AsyncQueryHandler
{
  public ContactInfoQuery$ContactInfoQueryHandler(ContactInfoQuery paramContactInfoQuery, Context paramContext)
  {
    super(paramContext.getContentResolver());
  }
  
  protected void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    if ((paramCursor == null) || (!paramCursor.moveToFirst())) {
      if ((ContactInfoQuery.access$000(this$0) instanceof ContactInfoQuery.ContactInfoQueryCallbackErrorHandler)) {
        ((ContactInfoQuery.ContactInfoQueryCallbackErrorHandler)ContactInfoQuery.access$000(this$0)).onContactInfoLoadFailed(ContactInfoQuery.access$100(this$0)[0], paramCursor);
      }
    }
    do
    {
      return;
      this$0.cleanupContactInfoCursor();
      ContactInfoQuery.access$202(this$0, paramCursor);
      if (ContactInfoQuery.access$300(this$0) != null) {
        ContactInfoQuery.access$200(this$0).registerContentObserver(ContactInfoQuery.access$300(this$0));
      }
      ContactInfoQuery.access$402(this$0, true);
      if (ContactInfoQuery.access$500(this$0) == 2) {
        ContactInfoQuery.access$600(this$0, "onQueryComplete: cursor.getCount(): " + paramCursor.getCount());
      }
    } while (ContactInfoQuery.access$000(this$0) == null);
    ContactInfoQuery.access$000(this$0).onContactInfoLoaded();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ContactInfoQuery.ContactInfoQueryHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */