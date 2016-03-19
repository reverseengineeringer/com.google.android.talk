.class public final Lgup;
.super Lgtq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgtq;"
    }
.end annotation


# instance fields
.field private a:Lavb;

.field private b:Lavb;

.field private c:Lgri;

.field private d:Lgrs;

.field private e:Lavb;

.field private f:Lavb;

.field private g:Lavb;

.field private h:Lavb;

.field private final i:[Landroid/content/IntentFilter;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lgup;->a:Lavb;

    iput-object v0, p0, Lgup;->b:Lavb;

    iput-object v0, p0, Lgup;->c:Lgri;

    iput-object v0, p0, Lgup;->d:Lgrs;

    iput-object v0, p0, Lgup;->e:Lavb;

    iput-object v0, p0, Lgup;->f:Lavb;

    iput-object v0, p0, Lgup;->g:Lavb;

    iput-object v0, p0, Lgup;->h:Lavb;

    return-void
.end method

.method public a(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lgup;->c:Lgri;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lgup;->c:Lgri;

    new-instance v1, Lgrl;

    invoke-direct {v1, p1}, Lgrl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lgri;->a(Lgrl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->f()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->f()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->f()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;)V
    .locals 1

    iget-object v0, p0, Lgup;->g:Lavb;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/wearable/internal/MessageEventParcelable;)V
    .locals 1

    iget-object v0, p0, Lgup;->d:Lgrs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgup;->d:Lgrs;

    invoke-interface {v0, p1}, Lgrs;->a(Lgru;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/NodeParcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 0

    return-void
.end method

.method public b()[Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lgup;->i:[Landroid/content/IntentFilter;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgup;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgup;->k:Ljava/lang/String;

    return-object v0
.end method
