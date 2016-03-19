.class final Lfzl;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfic;

.field final synthetic b:Lfzn;


# direct methods
.method constructor <init>(Lfic;Lfzn;)V
    .locals 0

    iput-object p1, p0, Lfzl;->a:Lfic;

    iput-object p2, p0, Lfzl;->b:Lfzn;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lfzl;->a:Lfic;

    invoke-interface {v0}, Lfic;->c()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfzl;->b:Lfzn;

    invoke-virtual {v0}, Lfzn;->a()Lfij;

    move-result-object v0

    new-instance v1, Lfzm;

    invoke-direct {v1, p0}, Lfzm;-><init>(Lfzl;)V

    invoke-interface {v0, v1}, Lfij;->a(Lfin;)V

    :goto_0
    const/4 v0, 0x0

    .line 0
    return-object v0

    .line 1000
    :cond_0
    iget-object v0, p0, Lfzl;->a:Lfic;

    invoke-interface {v0}, Lfic;->d()V

    goto :goto_0
.end method
