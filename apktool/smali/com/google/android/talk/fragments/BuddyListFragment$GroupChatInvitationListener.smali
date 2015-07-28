.class public Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;
.super Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupChatInvitationListener"
.end annotation


# instance fields
.field mApp:Lcom/google/android/talk/TalkApp;

.field mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .param p1, "b"    # Lcom/google/android/talk/fragments/BuddyListFragment;
    .param p2, "app"    # Lcom/google/android/talk/TalkApp;

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 455
    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->mApp:Lcom/google/android/talk/TalkApp;

    .line 456
    return-void
.end method


# virtual methods
.method public clearRefs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->mApp:Lcom/google/android/talk/TalkApp;

    .line 460
    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 461
    return-void
.end method

.method public onInvitationReceived(Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    .locals 4
    .param p1, "invitation"    # Lcom/google/android/gtalkservice/GroupChatInvitation;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 466
    .local v0, "b":Lcom/google/android/talk/fragments/BuddyListFragment;
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->mApp:Lcom/google/android/talk/TalkApp;

    .line 468
    .local v1, "t":Lcom/google/android/talk/TalkApp;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->mApp:Lcom/google/android/talk/TalkApp;

    if-nez v2, :cond_1

    .line 469
    :cond_0
    const/4 v2, 0x0

    .line 487
    :goto_0
    return v2

    .line 472
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received MUC invitation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", room="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/google/android/talk/fragments/BuddyListFragment;->logd(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$200(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 477
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 487
    const/4 v2, 0x1

    goto :goto_0
.end method
