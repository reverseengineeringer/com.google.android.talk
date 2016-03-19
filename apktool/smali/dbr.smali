.class final Ldbr;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbdy;

.field final synthetic b:Ldbq;


# direct methods
.method constructor <init>(Ldbq;Landroid/os/Handler;Lbdy;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Ldbr;->b:Ldbq;

    iput-object p3, p0, Ldbr;->a:Lbdy;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 490
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 494
    iget-object v0, p0, Ldbr;->b:Ldbq;

    iget-object v0, v0, Ldbq;->a:Ldbh;

    iget-object v1, p0, Ldbr;->a:Lbdy;

    invoke-static {v0, v1}, Ldbh;->a(Ldbh;Lbdy;)V

    .line 496
    return-void
.end method
