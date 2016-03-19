.class final Leii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leie;


# direct methods
.method constructor <init>(Leie;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Leii;->a:Leie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Leii;->a:Leie;

    .line 1122
    iget-object v1, v0, Leie;->f:Ljava/lang/Object;

    .line 352
    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Leii;->a:Leie;

    .line 2122
    iget-boolean v0, v0, Leie;->c:Z

    .line 353
    if-eqz v0, :cond_0

    .line 355
    monitor-exit v1

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Leii;->a:Leie;

    .line 3122
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Leie;->a(Z)V

    .line 362
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
