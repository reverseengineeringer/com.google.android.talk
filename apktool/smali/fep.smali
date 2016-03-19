.class final Lfep;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfen;


# direct methods
.method constructor <init>(Lfen;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lfep;->a:Lfen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 2103
    iget-object v0, p0, Lfep;->a:Lfen;

    iget-object v1, p0, Lfep;->a:Lfen;

    .line 3021
    iget-object v1, v1, Lfen;->d:Lbfd;

    .line 2105
    iget-object v2, p0, Lfep;->a:Lfen;

    .line 4021
    iget-object v2, v2, Lfen;->a:Ljava/lang/String;

    .line 2105
    iget-object v3, p0, Lfep;->a:Lfen;

    .line 5021
    iget-object v3, v3, Lfen;->b:Ljava/lang/String;

    .line 2105
    const-string v4, "video/*"

    .line 2104
    invoke-static {v1, v2, v3, v4}, Lbft;->b(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6021
    iput-object v1, v0, Lfen;->c:Ljava/lang/String;

    .line 2106
    const/4 v0, 0x0

    .line 100
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 100
    check-cast p1, Ljava/lang/Void;

    .line 1111
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1112
    iget-object v0, p0, Lfep;->a:Lfen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfen;->setEnabled(Z)V

    .line 100
    return-void
.end method
