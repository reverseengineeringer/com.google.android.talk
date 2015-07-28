.class Lcom/google/android/talk/videochat/VideoChatActivity$6$1;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatActivity$6;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$6;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$6;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$6;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->invalidateOptionsMenu()V

    .line 750
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$6;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$6;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$6;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$6;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mCurrentEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3200(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    move-result-object v0

    iget v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 753
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$6;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$6;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v2, 0x0

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->setActiveEffect(Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V
    invoke-static {v0, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3300(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V

    .line 755
    :cond_0
    monitor-exit v1

    .line 756
    return-void

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
