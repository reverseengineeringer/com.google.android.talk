.class final Lbmj;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lblw;


# direct methods
.method public constructor <init>(Lblw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lbmj;->a:Lblw;

    .line 215
    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    .line 216
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lbmk;

    invoke-direct {v0, p0}, Lbmk;-><init>(Lbmj;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 337
    invoke-virtual {v0, v1}, Lbmk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 338
    return-void
.end method
