.class public abstract Leaw;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field static final b:Z


# instance fields
.field private final a:Landroid/os/Handler;

.field c:I

.field d:I

.field final e:Ljava/lang/Object;

.field private f:Z

.field private final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Leaw;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leaw;->a:Landroid/os/Handler;

    .line 24
    iput v1, p0, Leaw;->c:I

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Leaw;->f:Z

    .line 28
    iput v1, p0, Leaw;->d:I

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leaw;->e:Ljava/lang/Object;

    .line 52
    new-instance v0, Leax;

    invoke-direct {v0, p0}, Leax;-><init>(Leaw;)V

    iput-object v0, p0, Leaw;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public J_()Z
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Leaw;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-boolean v0, p0, Leaw;->f:Z

    if-eqz v0, :cond_1

    .line 87
    sget-boolean v0, Leaw;->b:Z

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "Retain failed."

    invoke-virtual {p0, v0}, Leaw;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 98
    :goto_0
    return v0

    .line 92
    :cond_1
    iget v0, p0, Leaw;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leaw;->c:I

    .line 93
    sget-boolean v0, Leaw;->b:Z

    if-eqz v0, :cond_2

    .line 94
    const-string v0, "Retain"

    invoke-virtual {p0, v0}, Leaw;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    :cond_2
    iget-object v0, p0, Leaw;->a:Landroid/os/Handler;

    iget-object v2, p0, Leaw;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    monitor-exit v1

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract a()I
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Leaw;->c:I

    iget v2, p0, Leaw;->d:I

    iget-boolean v3, p0, Leaw;->f:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "RefCountedService("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (count="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Leaw;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iput p1, p0, Leaw;->d:I

    .line 105
    sget-boolean v0, Leaw;->b:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "Retain w/ startId"

    invoke-virtual {p0, v0}, Leaw;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    :cond_0
    invoke-virtual {p0}, Leaw;->h()V

    .line 109
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 7

    .prologue
    .line 130
    iget-object v1, p0, Leaw;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    iget v0, p0, Leaw;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Leaw;->c:I

    .line 132
    sget-boolean v0, Leaw;->b:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "Release"

    invoke-virtual {p0, v0}, Leaw;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    :cond_0
    iget v0, p0, Leaw;->c:I

    if-gez v0, :cond_1

    .line 136
    const-string v0, "Babel"

    const-string v2, "Negative service count"

    invoke-virtual {p0, v2}, Leaw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_1
    iget v0, p0, Leaw;->c:I

    if-nez v0, :cond_2

    .line 141
    invoke-virtual {p0}, Leaw;->a()I

    move-result v0

    .line 142
    const-string v2, "Babel"

    const-string v3, "Idle: Shutdown runnable posted in release with a delay of %d ms."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 142
    invoke-static {v2, v3, v4}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v2, p0, Leaw;->a:Landroid/os/Handler;

    iget-object v3, p0, Leaw;->g:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Leaw;->f:Z

    .line 45
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lhbs;->a()V

    .line 119
    invoke-virtual {p0}, Leaw;->J_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "Babel"

    const-string v1, "Retain Failed"

    invoke-virtual {p0, v1}, Leaw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 123
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 152
    iget-object v1, p0, Leaw;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Leaw;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Leaw;->f:Z

    .line 156
    invoke-virtual {p0}, Leaw;->a()I

    move-result v0

    .line 157
    const-string v2, "Babel"

    const-string v3, "onCreate: Shutdown runnable posted in onCreate with a delay of %d ms."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 157
    invoke-static {v2, v3, v4}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v2, p0, Leaw;->a:Landroid/os/Handler;

    iget-object v3, p0, Leaw;->g:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 165
    const-string v0, "Babel"

    const-string v1, "onDestroy"

    invoke-virtual {p0, v1}, Leaw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 167
    return-void
.end method
