.class final Lbmb;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lblw;


# direct methods
.method constructor <init>(Lblw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lbmb;->a:Lblw;

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lbmc;

    invoke-direct {v0, p0}, Lbmc;-><init>(Lbmb;)V

    .line 1428
    new-instance v1, Lbmg;

    invoke-direct {v1, v0}, Lbmg;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 1434
    invoke-virtual {v1, v0}, Lbmg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    return-void
.end method
