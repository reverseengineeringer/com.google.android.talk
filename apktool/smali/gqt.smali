.class final Lgqt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lgqn;

.field final synthetic d:Lgqs;


# direct methods
.method constructor <init>(Lgqs;Ljava/util/List;Ljava/lang/String;Lgqn;)V
    .locals 0

    iput-object p1, p0, Lgqt;->d:Lgqs;

    iput-object p2, p0, Lgqt;->a:Ljava/util/List;

    iput-object p3, p0, Lgqt;->b:Ljava/lang/String;

    iput-object p4, p0, Lgqt;->c:Lgqn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lgqt;->d:Lgqs;

    .line 2000
    iget-object v0, v0, Lgqs;->a:Lgqd;

    invoke-virtual {v0}, Lgqd;->d()La;

    move-result-object v0

    .line 0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lgqt;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    invoke-interface {v0}, La;->k()Lfii;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;

    invoke-virtual {v0}, Lfii;->a()Z

    move-result v2

    invoke-virtual {v0}, Lfii;->b()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;-><init>(ZLjava/util/Set;)V

    iget-object v0, p0, Lgqt;->c:Lgqn;

    invoke-interface {v0, v1}, Lgqn;->a(Lcom/google/android/gms/signin/internal/CheckServerAuthResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "RemoteException thrown when processing checkServerAuthorization callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
