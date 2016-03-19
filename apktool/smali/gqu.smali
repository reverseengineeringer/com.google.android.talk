.class final Lgqu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lgqn;

.field final synthetic d:Lgqs;


# direct methods
.method constructor <init>(Lgqs;Ljava/lang/String;Ljava/lang/String;Lgqn;)V
    .locals 0

    iput-object p1, p0, Lgqu;->d:Lgqs;

    iput-object p2, p0, Lgqu;->a:Ljava/lang/String;

    iput-object p3, p0, Lgqu;->b:Ljava/lang/String;

    iput-object p4, p0, Lgqu;->c:Lgqn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lgqu;->d:Lgqs;

    .line 2000
    iget-object v0, v0, Lgqs;->a:Lgqd;

    invoke-virtual {v0}, Lgqd;->d()La;

    move-result-object v0

    .line 0
    invoke-interface {v0}, La;->l()Z

    move-result v0

    iget-object v1, p0, Lgqu;->c:Lgqn;

    invoke-interface {v1, v0}, Lgqn;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "RemoteException thrown when processing uploadServerAuthCode callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
