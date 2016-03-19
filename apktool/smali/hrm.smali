.class final Lhrm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lav;

.field final synthetic b:Lhrl;


# direct methods
.method constructor <init>(Lhrl;Lav;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lhrm;->b:Lhrl;

    iput-object p2, p0, Lhrm;->a:Lav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lhrm;->a:Lav;

    invoke-virtual {v0}, Lav;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lhrm;->b:Lhrl;

    iget-object v1, p0, Lhrm;->a:Lav;

    .line 1114
    invoke-virtual {v1}, Lav;->getChildFragmentManager()Lbg;

    move-result-object v3

    .line 1115
    const-string v1, "new.account.launcher"

    .line 1116
    invoke-virtual {v3, v1}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v1

    check-cast v1, Limg;

    .line 1117
    if-nez v1, :cond_0

    .line 1118
    new-instance v1, Limg;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Limg;-><init>(B)V

    .line 1119
    invoke-virtual {v3}, Lbg;->a()Lbz;

    move-result-object v3

    const-string v4, "new.account.launcher"

    invoke-virtual {v3, v1, v4}, Lbz;->a(Lav;Ljava/lang/String;)Lbz;

    move-result-object v3

    .line 1120
    invoke-virtual {v3}, Lbz;->c()I

    .line 1124
    :cond_0
    new-instance v3, Lhrn;

    invoke-direct {v3, v2, v1, v0}, Lhrn;-><init>(Lhrl;Limg;Landroid/content/Intent;)V

    invoke-static {v3}, Laal;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_1
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
