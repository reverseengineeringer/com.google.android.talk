.class Lcom/google/android/videochat/CameraManager$1$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/CameraManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/videochat/CameraManager$1;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CameraManager$1;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager$1$1;->this$1:Lcom/google/android/videochat/CameraManager$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x64

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "pushFrame":Z
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager$1$1;->this$1:Lcom/google/android/videochat/CameraManager$1;

    iget-object v1, v1, Lcom/google/android/videochat/CameraManager$1;->this$0:Lcom/google/android/videochat/CameraManager;

    # getter for: Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/videochat/CameraManager;->access$100(Lcom/google/android/videochat/CameraManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 505
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x65

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/videochat/CameraManager$1$1;->this$1:Lcom/google/android/videochat/CameraManager$1;

    iget-object v1, v1, Lcom/google/android/videochat/CameraManager$1;->this$0:Lcom/google/android/videochat/CameraManager;

    # getter for: Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/videochat/CameraManager;->access$300(Lcom/google/android/videochat/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_3

    .line 506
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 514
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    if-eqz v0, :cond_2

    .line 516
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager$1$1;->this$1:Lcom/google/android/videochat/CameraManager$1;

    iget-object v1, v1, Lcom/google/android/videochat/CameraManager$1;->this$0:Lcom/google/android/videochat/CameraManager;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    # invokes: Lcom/google/android/videochat/CameraManager;->nativePushPausedFrame(J)V
    invoke-static {v1, v2, v3}, Lcom/google/android/videochat/CameraManager;->access$400(Lcom/google/android/videochat/CameraManager;J)V

    .line 518
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 507
    :cond_3
    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_1

    .line 509
    const/4 v0, 0x1

    .line 510
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager$1$1;->this$1:Lcom/google/android/videochat/CameraManager$1;

    iget-object v1, v1, Lcom/google/android/videochat/CameraManager$1;->this$0:Lcom/google/android/videochat/CameraManager;

    # getter for: Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/videochat/CameraManager;->access$300(Lcom/google/android/videochat/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x64

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
