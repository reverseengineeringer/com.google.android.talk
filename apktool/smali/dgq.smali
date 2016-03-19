.class final Ldgq;
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
.field final synthetic a:Ldgp;


# direct methods
.method constructor <init>(Ldgp;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Ldgq;->a:Ldgp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1204
    const-wide v2, 0xc92a69c000L

    sub-long/2addr v0, v2

    .line 1205
    new-instance v2, Lbfz;

    iget-object v3, p0, Ldgq;->a:Ldgp;

    iget-object v3, v3, Ldgp;->a:Ldfq;

    .line 2055
    iget-object v3, v3, Ldfq;->a:Landroid/content/Context;

    .line 1205
    iget-object v4, p0, Ldgq;->a:Ldgp;

    iget-object v4, v4, Ldgp;->a:Ldfq;

    .line 3055
    iget v4, v4, Ldfq;->c:I

    .line 1205
    invoke-direct {v2, v3, v4}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 1206
    invoke-virtual {v2, v0, v1}, Lbfz;->e(J)V

    .line 1207
    const/4 v0, 0x0

    .line 199
    return-object v0
.end method
