.class final Ldgp;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldfq;


# direct methods
.method constructor <init>(Ldfq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Ldgp;->a:Ldfq;

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ldgq;

    invoke-direct {v0, p0}, Ldgq;-><init>(Ldgp;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 209
    invoke-virtual {v0, v1}, Ldgq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 210
    return-void
.end method
