.class Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;
.super Lcom/google/android/videochat/CallStateClient;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalCallStateClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2079
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 2080
    invoke-direct {p0, p2}, Lcom/google/android/videochat/CallStateClient;-><init>(Landroid/content/Context;)V

    .line 2081
    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 3
    .param p1, "remoteBareJid"    # Ljava/lang/String;
    .param p2, "callState"    # Lcom/google/android/videochat/CallState;
    .param p3, "isRequestReply"    # Z
    .param p4, "callbackParam"    # Ljava/lang/Object;

    .prologue
    .line 2101
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BuddyListFragment call listener state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$2;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;Lcom/google/android/videochat/CallState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2129
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2094
    return-void
.end method
