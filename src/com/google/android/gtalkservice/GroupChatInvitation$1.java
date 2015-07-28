package com.google.android.gtalkservice;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class GroupChatInvitation$1
  implements Parcelable.Creator<GroupChatInvitation>
{
  public GroupChatInvitation createFromParcel(Parcel paramParcel)
  {
    return new GroupChatInvitation(paramParcel);
  }
  
  public GroupChatInvitation[] newArray(int paramInt)
  {
    return new GroupChatInvitation[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.GroupChatInvitation.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */