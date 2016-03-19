.class final Ldgo;
.super Landroid/os/AsyncTask;
.source "SourceFile"


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
.field final synthetic a:Ldgn;


# direct methods
.method constructor <init>(Ldgn;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Ldgo;->a:Ldgn;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Ldgo;->a:Ldgn;

    iget-object v0, v0, Ldgn;->a:Ldfq;

    .line 2055
    iget-object v0, v0, Ldfq;->b:Lbfd;

    .line 1185
    invoke-static {v0}, Ledb;->a(Lbfd;)Ledb;

    move-result-object v0

    .line 1186
    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {v0}, Ledb;->p_()V

    .line 1189
    :cond_0
    const/4 v0, 0x0

    .line 182
    return-object v0
.end method
