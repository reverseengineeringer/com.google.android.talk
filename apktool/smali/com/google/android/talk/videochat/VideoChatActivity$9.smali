.class Lcom/google/android/talk/videochat/VideoChatActivity$9;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$9;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1642
    const-string v0, "initiate"

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$9;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mIntentAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5000(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$9;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->makeCall()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5100(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1648
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$9;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mReevaluateCallState:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5302(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z

    .line 1649
    return-void

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$9;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->connectToExistingCall()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5200(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    goto :goto_0
.end method
