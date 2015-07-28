.class Lcom/google/android/talk/fragments/ChatScreenFragment$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheContactId(Ljava/lang/String;J)V
    .locals 2
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 904
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    return-void
.end method

.method public convertedToGroupChat(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    .locals 1
    .param p1, "cv"    # Lcom/google/android/talk/ChatView;
    .param p2, "room"    # Ljava/lang/String;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$302(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 924
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->resumeRequery()V

    .line 925
    return-void
.end method

.method public getCachedContactId(Ljava/lang/String;)J
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 909
    const-wide/16 v0, -0x1

    .line 910
    .local v0, "id":J
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 911
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 913
    :cond_0
    return-wide v0
.end method

.method public getMessageBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mMessageBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z
    .locals 7
    .param p1, "cv"    # Lcom/google/android/talk/ChatView;
    .param p2, "item"    # Landroid/view/MenuItem;
    .param p3, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 742
    if-nez p1, :cond_1

    move v3, v4

    .line 835
    :cond_0
    :goto_0
    return v3

    .line 745
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "username":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    .line 748
    .local v1, "session":Lcom/google/android/gtalkservice/IImSession;
    sparse-switch p3, :sswitch_data_0

    .line 831
    const-string v5, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>>>>>>>>> no handler for menu item: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p2, :cond_2

    const-string v3, "NULL"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v3, v4

    .line 835
    goto :goto_0

    .line 750
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->startVoiceChat()V

    goto :goto_0

    .line 754
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->startVideoChat()V

    goto :goto_0

    .line 758
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->resumeVideoChat()V

    goto :goto_0

    .line 762
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->endVideoOrVoiceChat()V

    goto :goto_0

    .line 766
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->endVideoOrVoiceChat()V

    goto :goto_0

    .line 770
    :sswitch_5
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->addToChat()V

    goto :goto_0

    .line 774
    :sswitch_6
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    goto :goto_0

    .line 778
    :sswitch_7
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->clearChat()V

    goto :goto_0

    .line 782
    :sswitch_8
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    invoke-direct {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>()V

    .line 783
    .local v0, "buddyInfo":Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getChatsTableContactId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    .line 784
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    .line 785
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    .line 786
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    goto :goto_0

    .line 790
    .end local v0    # "buddyInfo":Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    :sswitch_9
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 794
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    .line 795
    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->blockContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 799
    :goto_3
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->getChatsTableContactId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/talk/DatabaseUtils;->removeChatsByContactId(Landroid/content/ContentResolver;J)I

    goto/16 :goto_0

    .line 803
    :sswitch_a
    if-eqz v2, :cond_0

    .line 808
    :try_start_1
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    .line 809
    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->removeContact(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 810
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 816
    :sswitch_b
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->toggleOtr()V

    goto/16 :goto_0

    .line 820
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->toggleMute()V

    goto/16 :goto_2

    .line 827
    :sswitch_d
    invoke-virtual {p1, p3}, Lcom/google/android/talk/ChatView;->handleAudioChoice(I)V

    goto/16 :goto_2

    .line 831
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_1

    .line 796
    :catch_1
    move-exception v4

    goto :goto_3

    .line 748
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100059 -> :sswitch_3
        0x7f10005a -> :sswitch_4
        0x7f10005d -> :sswitch_c
        0x7f10005e -> :sswitch_2
        0x7f1000b1 -> :sswitch_d
        0x7f1000b2 -> :sswitch_d
        0x7f1000b3 -> :sswitch_d
        0x7f1000b4 -> :sswitch_d
        0x7f1000b5 -> :sswitch_9
        0x7f1000b6 -> :sswitch_a
        0x7f1000bd -> :sswitch_1
        0x7f1000be -> :sswitch_0
        0x7f1000c0 -> :sswitch_6
        0x7f1000c1 -> :sswitch_b
        0x7f1000c2 -> :sswitch_8
        0x7f1000c3 -> :sswitch_5
        0x7f1000c4 -> :sswitch_7
    .end sparse-switch
.end method

.method public invalidateImSession()V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    const-string v1, "invalidateImSession"

    # invokes: Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$1;)V

    # invokes: Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1700(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 887
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 919
    return-void
.end method

.method public startVideoChatAnimation()Z
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # invokes: Lcom/google/android/talk/fragments/ChatScreenFragment;->hideKeyboard()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1900(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    .line 899
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->onVideoChatStarted()Z

    move-result v0

    return v0
.end method

.method public update(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 848
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # invokes: Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/ChatView;

    move-result-object v1

    .line 849
    .local v1, "cv":Lcom/google/android/talk/ChatView;
    if-eq p1, v1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "contact":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v2, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->updateTitle(Landroid/view/View;)V

    .line 863
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->isOffTheRecord()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->updateOtrStatus(Z)V

    .line 865
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public willConvertToGroupChat(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
    .locals 1
    .param p1, "cv"    # Lcom/google/android/talk/ChatView;
    .param p2, "room"    # Ljava/lang/String;

    .prologue
    .line 929
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->suspendRequery()V

    .line 930
    return-void
.end method
