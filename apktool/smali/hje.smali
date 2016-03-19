.class public final Lhje;
.super Lhjk;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Landroid/hardware/Camera;

.field f:Lhlp;

.field private final g:Lhjf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Lhjk;-><init>(Landroid/content/Context;)V

    .line 23
    iput v1, p0, Lhje;->a:I

    .line 24
    iput v1, p0, Lhje;->b:I

    .line 25
    iput v0, p0, Lhje;->c:I

    .line 26
    iput v0, p0, Lhje;->d:I

    .line 38
    new-instance v1, Lhjp;

    invoke-direct {v1, p0}, Lhjp;-><init>(Lhjk;)V

    iput-object v1, p0, Lhje;->l:Lhjp;

    .line 39
    new-instance v1, Lhjf;

    .line 1135
    invoke-direct {v1, p0}, Lhjf;-><init>(Lhje;)V

    .line 39
    iput-object v1, p0, Lhje;->g:Lhjf;

    .line 2075
    :try_start_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 2076
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 2077
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2078
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 2079
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2080
    iput v0, p0, Lhje;->a:I

    .line 2081
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v3, p0, Lhje;->c:I

    .line 2077
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2083
    :cond_0
    iput v0, p0, Lhje;->b:I

    .line 2084
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v3, p0, Lhje;->d:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2087
    :catch_0
    move-exception v0

    .line 2089
    const-string v1, "vclib"

    const-string v2, "Failed to detect cameras"

    invoke-static {v1, v2, v0}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2090
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lhks;Lhld;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lhjk;->a(Lhks;Lhld;)V

    .line 47
    iget-object v0, p0, Lhje;->l:Lhjp;

    invoke-interface {p2, v0}, Lhld;->a(Lhle;)V

    .line 48
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lhje;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lhje;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Lhlp;
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lhje;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lhje;->f:Lhlp;

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 95
    iget-object v1, p0, Lhje;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lhje;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "vclib"

    const-string v2, "Camera was already opened, ignoring"

    .line 3073
    const/4 v3, 0x3

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    monitor-exit v1

    .line 113
    :goto_0
    return-void

    .line 103
    :cond_0
    iget v0, p0, Lhje;->x:I

    if-nez v0, :cond_1

    .line 104
    const-string v0, "vclib"

    const-string v2, "openCamera was called with no camera selected."

    invoke-static {v0, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    monitor-exit v1

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    iget-object v0, p0, Lhje;->o:Landroid/os/Handler;

    iget-object v1, p0, Lhje;->g:Lhjf;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lhje;->o:Landroid/os/Handler;

    iget-object v1, p0, Lhje;->g:Lhjf;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lhje;->o:Landroid/os/Handler;

    iget-object v1, p0, Lhje;->g:Lhjf;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v1, p0, Lhje;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lhje;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lhje;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 123
    iget-object v0, p0, Lhje;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lhje;->e:Landroid/hardware/Camera;

    .line 126
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
