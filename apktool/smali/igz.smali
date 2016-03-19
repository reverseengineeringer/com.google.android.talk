.class public final Ligz;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 268
    const-string v0, "ImageLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 269
    return-void
.end method


# virtual methods
.method public a(Ligp;)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Ligz;->a:Landroid/os/Handler;

    iget-object v1, p0, Ligz;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    .line 289
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ligp;

    .line 290
    invoke-virtual {v0}, Ligp;->m()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 291
    invoke-virtual {v0}, Ligp;->m()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 292
    invoke-virtual {v0}, Ligp;->m()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 293
    :cond_0
    invoke-virtual {v0}, Ligp;->c()V

    .line 295
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 279
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 280
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 281
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Ligz;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ligz;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
