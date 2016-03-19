.class final Lwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lwe;

.field private b:Lwj;


# direct methods
.method public constructor <init>(Lwe;Lwj;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lwg;->a:Lwe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    iput-object p2, p0, Lwg;->b:Lwj;

    .line 778
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lwg;->a:Lwe;

    .line 1052
    iget-object v0, v0, Lwe;->c:Ltl;

    .line 781
    invoke-virtual {v0}, Ltl;->f()V

    .line 782
    iget-object v0, p0, Lwg;->a:Lwe;

    .line 2052
    iget-object v0, v0, Lwe;->f:Lub;

    .line 782
    check-cast v0, Landroid/view/View;

    .line 783
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwg;->b:Lwj;

    invoke-virtual {v0}, Lwj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lwg;->a:Lwe;

    iget-object v1, p0, Lwg;->b:Lwj;

    .line 3052
    iput-object v1, v0, Lwe;->h:Lwj;

    .line 786
    :cond_0
    iget-object v0, p0, Lwg;->a:Lwe;

    .line 4052
    const/4 v1, 0x0

    iput-object v1, v0, Lwe;->j:Lwg;

    .line 787
    return-void
.end method
