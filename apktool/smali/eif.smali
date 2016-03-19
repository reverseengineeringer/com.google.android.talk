.class final Leif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfif;


# instance fields
.field final synthetic a:Leie;


# direct methods
.method constructor <init>(Leie;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Leif;->a:Leie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 180
    const-string v0, "BabelPeopleCache"

    const-string v1, "Google API client disconnected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public a_(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 163
    iget-object v0, p0, Leif;->a:Leie;

    .line 1122
    iget-object v1, v0, Leie;->f:Ljava/lang/Object;

    .line 163
    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Leif;->a:Leie;

    .line 2122
    iget-boolean v0, v0, Leie;->c:Z

    .line 164
    if-eqz v0, :cond_0

    .line 166
    monitor-exit v1

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string v0, "BabelPeopleCache"

    const-string v2, "Google API client connected."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    sget-object v0, Lglu;->m:Lgls;

    iget-object v2, p0, Leif;->a:Leie;

    .line 3122
    iget-object v2, v2, Leie;->d:Lfic;

    .line 170
    iget-object v3, p0, Leif;->a:Leie;

    .line 4122
    iget-object v3, v3, Leie;->j:Lglt;

    .line 170
    const-string v4, "gms_people_cache_account"

    .line 169
    invoke-virtual {v0, v2, v3, v4}, Lgls;->a(Lfic;Lglt;Ljava/lang/String;)Lfij;

    .line 172
    iget-object v0, p0, Leif;->a:Leie;

    .line 5122
    invoke-virtual {v0}, Leie;->e()V

    .line 173
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
