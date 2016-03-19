.class public final Lgun;
.super Lflc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflc",
        "<",
        "Lgts;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Lgtv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgtv",
            "<",
            "Lavb;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lgtv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgtv",
            "<",
            "Lavb;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lgtv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgtv",
            "<",
            "Lavb;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lgtv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgtv",
            "<",
            "Lgri;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lgtv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgtv",
            "<",
            "Lgrs;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lgtv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgtv",
            "<",
            "Lavb;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lgtv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgtv",
            "<",
            "Lavb;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgtv",
            "<",
            "Lavb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lfif;Lfih;Lfkq;)V
    .locals 7

    const/16 v3, 0xe

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lflc;-><init>(Landroid/content/Context;Landroid/os/Looper;ILfkq;Lfif;Lfih;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lgun;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lgtv;

    invoke-direct {v0}, Lgtv;-><init>()V

    iput-object v0, p0, Lgun;->f:Lgtv;

    new-instance v0, Lgtv;

    invoke-direct {v0}, Lgtv;-><init>()V

    iput-object v0, p0, Lgun;->g:Lgtv;

    new-instance v0, Lgtv;

    invoke-direct {v0}, Lgtv;-><init>()V

    iput-object v0, p0, Lgun;->h:Lgtv;

    new-instance v0, Lgtv;

    invoke-direct {v0}, Lgtv;-><init>()V

    iput-object v0, p0, Lgun;->i:Lgtv;

    new-instance v0, Lgtv;

    invoke-direct {v0}, Lgtv;-><init>()V

    iput-object v0, p0, Lgun;->j:Lgtv;

    new-instance v0, Lgtv;

    invoke-direct {v0}, Lgtv;-><init>()V

    iput-object v0, p0, Lgun;->k:Lgtv;

    new-instance v0, Lgtv;

    invoke-direct {v0}, Lgtv;-><init>()V

    iput-object v0, p0, Lgun;->l:Lgtv;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgun;->m:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 2000
    invoke-static {p1}, Lgtt;->a(Landroid/os/IBinder;)Lgts;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wearable.BIND"

    return-object v0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3

    const-string v0, "WearableClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lgun;->f:Lgtv;

    invoke-virtual {v0, p2}, Lgtv;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Lgun;->g:Lgtv;

    invoke-virtual {v0, p2}, Lgtv;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Lgun;->i:Lgtv;

    invoke-virtual {v0, p2}, Lgtv;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Lgun;->j:Lgtv;

    invoke-virtual {v0, p2}, Lgtv;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Lgun;->k:Lgtv;

    invoke-virtual {v0, p2}, Lgtv;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Lgun;->l:Lgtv;

    invoke-virtual {v0, p2}, Lgtv;->a(Landroid/os/IBinder;)V

    iget-object v1, p0, Lgun;->m:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lgun;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgtv;

    invoke-virtual {v0, p2}, Lgtv;->a(Landroid/os/IBinder;)V

    goto :goto_0

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

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lflc;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public a(Lfis;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfis",
            "<",
            "Lgro;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lgun;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgts;

    new-instance v1, Lguj;

    invoke-direct {v1, p1}, Lguj;-><init>(Lfis;)V

    invoke-interface {v0, v1}, Lgts;->b(Lgtm;)V

    return-void
.end method

.method public a(Lfis;Landroid/net/Uri;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfis",
            "<",
            "Lgro;",
            ">;",
            "Landroid/net/Uri;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lgun;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgts;

    new-instance v1, Lguj;

    invoke-direct {v1, p1}, Lguj;-><init>(Lfis;)V

    invoke-interface {v0, v1, p2, p3}, Lgts;->a(Lgtm;Landroid/net/Uri;I)V

    return-void
.end method

.method public a(Lfis;Lcom/google/android/gms/wearable/PutDataRequest;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfis",
            "<",
            "Lgrh;",
            ">;",
            "Lcom/google/android/gms/wearable/PutDataRequest;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 0
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->a()[B

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->d()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Put for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contains invalid asset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->b()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->a([B)Lcom/google/android/gms/wearable/PutDataRequest;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->a()[B

    move-result-object v5

    if-nez v5, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const-string v6, "WearableClient"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "processAssets: replacing data with FD in asset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " read:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " write:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v6, v5, v8

    invoke-static {v6}, Lcom/google/android/gms/wearable/Asset;->a(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/wearable/PutDataRequest;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    aget-object v0, v5, v9

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->a()[B

    move-result-object v1

    .line 1000
    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lguo;

    invoke-direct {v6, p0, v0, v1}, Lguo;-><init>(Lgun;Landroid/os/ParcelFileDescriptor;[B)V

    invoke-direct {v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 0
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lgun;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create ParcelFileDescriptor for asset in request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    invoke-virtual {p0}, Lgun;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgts;

    new-instance v1, Lgul;

    invoke-direct {v1, p1, v3}, Lgul;-><init>(Lfis;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Lgts;->a(Lgtm;Lcom/google/android/gms/wearable/PutDataRequest;)V

    return-void
.end method

.method public a(Lfis;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfis",
            "<",
            "Lgrt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    invoke-virtual {p0}, Lgun;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgts;

    new-instance v1, Lgum;

    invoke-direct {v1, p1}, Lgum;-><init>(Lfis;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lgts;->a(Lgtm;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    return-object v0
.end method

.method public b(Lfis;Landroid/net/Uri;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfis",
            "<",
            "Lgrj;",
            ">;",
            "Landroid/net/Uri;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lgun;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgts;

    new-instance v1, Lgui;

    invoke-direct {v1, p1}, Lgui;-><init>(Lfis;)V

    invoke-interface {v0, v1, p2, p3}, Lgts;->b(Lgtm;Landroid/net/Uri;I)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lgun;->f:Lgtv;

    invoke-virtual {v0, p0}, Lgtv;->a(Lgun;)V

    iget-object v0, p0, Lgun;->g:Lgtv;

    invoke-virtual {v0, p0}, Lgtv;->a(Lgun;)V

    iget-object v0, p0, Lgun;->i:Lgtv;

    invoke-virtual {v0, p0}, Lgtv;->a(Lgun;)V

    iget-object v0, p0, Lgun;->j:Lgtv;

    invoke-virtual {v0, p0}, Lgtv;->a(Lgun;)V

    iget-object v0, p0, Lgun;->k:Lgtv;

    invoke-virtual {v0, p0}, Lgtv;->a(Lgun;)V

    iget-object v0, p0, Lgun;->l:Lgtv;

    invoke-virtual {v0, p0}, Lgtv;->a(Lgun;)V

    iget-object v1, p0, Lgun;->m:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lgun;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgtv;

    invoke-virtual {v0, p0}, Lgtv;->a(Lgun;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Lflc;->c()V

    return-void
.end method
