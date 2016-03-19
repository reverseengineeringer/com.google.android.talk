.class public final Lgqr;
.super Lflc;

# interfaces
.implements Lgra;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflc",
        "<",
        "Lgqn;",
        ">;",
        "Lgra;"
    }
.end annotation


# instance fields
.field private final e:Z

.field private final f:Lfkq;

.field private final g:Lgqd;

.field private h:Ljava/lang/Integer;

.field private final i:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLfkq;Lfif;Lfih;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lflc;-><init>(Landroid/content/Context;Landroid/os/Looper;ILfkq;Lfif;Lfih;)V

    iput-boolean p3, p0, Lgqr;->e:Z

    iput-object p4, p0, Lgqr;->f:Lfkq;

    invoke-virtual {p4}, Lfkq;->i()Lgqd;

    move-result-object v0

    iput-object v0, p0, Lgqr;->g:Lgqd;

    invoke-virtual {p4}, Lfkq;->j()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgqr;->h:Ljava/lang/Integer;

    iput-object p7, p0, Lgqr;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 3000
    invoke-static {p1}, Lgqo;->a(Landroid/os/IBinder;)Lgqn;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public a(Lfks;Ljava/util/Set;Lgqk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfks;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Lgqk;",
            ")V"
        }
    .end annotation

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p3, v0}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lgqr;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgqn;

    new-instance v1, Lcom/google/android/gms/common/internal/AuthAccountRequest;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/common/internal/AuthAccountRequest;-><init>(Lfks;Ljava/util/Set;)V

    invoke-interface {v0, v1, p3}, Lgqn;->a(Lcom/google/android/gms/common/internal/AuthAccountRequest;Lgqk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    new-instance v1, Lcom/google/android/gms/signin/internal/AuthAccountResult;

    invoke-direct {v1}, Lcom/google/android/gms/signin/internal/AuthAccountResult;-><init>()V

    invoke-interface {p3, v0, v1}, Lgqk;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/signin/internal/AuthAccountResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "SignInClientImpl"

    const-string v1, "ISignInCallbacks#onAuthAccount should be executed from the same process, unexpected RemoteException."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lfks;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lgqr;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgqn;

    iget-object v1, p0, Lgqr;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lgqn;->a(Lfks;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lfmd;)V
    .locals 4

    const-string v0, "Expecting a valid IResolveAccountCallbacks"

    invoke-static {p1, v0}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lgqr;->f:Lfkq;

    invoke-virtual {v0}, Lfkq;->c()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0}, Lgqr;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgqn;

    new-instance v2, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    iget-object v3, p0, Lgqr;->h:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(Landroid/accounts/Account;I)V

    invoke-interface {v0, v2, p1}, Lgqn;->a(Lcom/google/android/gms/common/internal/ResolveAccountRequest;Lfmd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;-><init>()V

    invoke-interface {p1, v0}, Lfmd;->a(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "SignInClientImpl"

    const-string v1, "IResolveAccountCallbacks#onAccountResolutionComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lgqr;->e:Z

    return v0
.end method

.method protected j()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lgqr;->g:Lgqd;

    iget-object v1, p0, Lgqr;->f:Lfkq;

    invoke-virtual {v1}, Lfkq;->j()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lgqr;->i:Ljava/util/concurrent/ExecutorService;

    .line 1000
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {v0}, Lgqd;->a()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v0}, Lgqd;->b()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v0}, Lgqd;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgqd;->d()La;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Lgqs;

    invoke-direct {v4, v0, v2}, Lgqs;-><init>(Lgqd;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v4}, Lgqs;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "com.google.android.gms.signin.internal.signInCallbacks"

    new-instance v4, Lcom/google/android/gms/common/internal/BinderWrapper;

    invoke-direct {v4, v0}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 0
    :cond_1
    iget-object v0, p0, Lgqr;->f:Lfkq;

    invoke-virtual {v0}, Lfkq;->g()Ljava/lang/String;

    move-result-object v0

    .line 2000
    iget-object v1, p0, Lflc;->a:Landroid/content/Context;

    .line 0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v1, p0, Lgqr;->f:Lfkq;

    invoke-virtual {v1}, Lfkq;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v3
.end method

.method public o()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lgqr;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgqn;

    iget-object v1, p0, Lgqr;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lgqn;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public p()V
    .locals 1

    new-instance v0, Lfli;

    invoke-direct {v0, p0}, Lfli;-><init>(Lflc;)V

    invoke-virtual {p0, v0}, Lgqr;->a(Lfig;)V

    return-void
.end method
