.class public final Leex;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;)V
    .locals 1

    .prologue
    .line 495
    iput-object p1, p0, Leex;->b:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 496
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leex;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 518
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 520
    new-instance v0, Leey;

    iget-object v1, p0, Leex;->b:Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-direct {v0, v1}, Leey;-><init>(Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;)V

    .line 522
    iget-object v1, p0, Leex;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    :try_start_0
    iput-object v0, p0, Leex;->a:Landroid/os/Handler;

    .line 524
    iget-object v0, p0, Leex;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 525
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 528
    return-void

    .line 525
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 502
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 505
    iget-object v1, p0, Leex;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :goto_0
    :try_start_0
    iget-object v0, p0, Leex;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 508
    :try_start_1
    iget-object v0, p0, Leex;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    goto :goto_0

    .line 513
    :cond_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
