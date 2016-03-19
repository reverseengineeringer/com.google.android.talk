.class final Ldhb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldfq;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldfq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Ldhb;->a:Ldfq;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 471
    iput-object p2, p0, Ldhb;->b:Ljava/lang/String;

    .line 472
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3476
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 3477
    new-instance v1, Ldhc;

    invoke-direct {v1, p0}, Ldhc;-><init>(Ldhb;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 467
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 467
    check-cast p1, [Ljava/lang/String;

    .line 1490
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    iget-object v0, p0, Ldhb;->a:Ldfq;

    .line 2055
    iget-object v0, v0, Ldfq;->e:Lbg;

    .line 1493
    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    .line 1494
    iget-object v1, p0, Ldhb;->b:Ljava/lang/String;

    .line 3042
    new-instance v2, Lcaq;

    invoke-direct {v2}, Lcaq;-><init>()V

    .line 3043
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3044
    const-string v4, "dump_files"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3045
    const-string v4, "action"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    invoke-virtual {v2, v3}, Lcaq;->setArguments(Landroid/os/Bundle;)V

    .line 1496
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcaq;->a(Lbz;Ljava/lang/String;)I

    goto :goto_0
.end method
