.class final Leax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leaw;


# direct methods
.method constructor <init>(Leaw;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Leax;->a:Leaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Leax;->a:Leaw;

    .line 1017
    iget-object v1, v0, Leaw;->e:Ljava/lang/Object;

    .line 55
    monitor-enter v1

    .line 2017
    :try_start_0
    sget-boolean v0, Leaw;->b:Z

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Leax;->a:Leaw;

    const-string v2, "Shutdown Runnable"

    invoke-virtual {v0, v2}, Leaw;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    :cond_0
    iget-object v0, p0, Leax;->a:Leaw;

    .line 3017
    iget v0, v0, Leaw;->c:I

    .line 61
    if-lez v0, :cond_1

    .line 62
    monitor-exit v1

    .line 72
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Leax;->a:Leaw;

    iget-object v2, p0, Leax;->a:Leaw;

    .line 4017
    iget v2, v2, Leaw;->d:I

    .line 64
    invoke-virtual {v0, v2}, Leaw;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5017
    sget-boolean v0, Leaw;->b:Z

    .line 65
    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Leax;->a:Leaw;

    const-string v2, "StopSelf Succeeded"

    invoke-virtual {v0, v2}, Leaw;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    :cond_2
    iget-object v0, p0, Leax;->a:Leaw;

    invoke-virtual {v0}, Leaw;->e()V

    .line 72
    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6017
    :cond_4
    :try_start_1
    sget-boolean v0, Leaw;->b:Z

    .line 69
    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Leax;->a:Leaw;

    const-string v2, "StopSelf Cancelled"

    invoke-virtual {v0, v2}, Leaw;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
