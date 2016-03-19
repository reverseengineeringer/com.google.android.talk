.class final Lhcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhcp;


# direct methods
.method constructor <init>(Lhcp;)V
    .locals 0

    .prologue
    .line 1541
    iput-object p1, p0, Lhcq;->a:Lhcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1544
    iget-object v0, p0, Lhcq;->a:Lhcp;

    .line 2502
    iget-boolean v0, v0, Lhcp;->a:Z

    .line 1544
    if-nez v0, :cond_0

    .line 1546
    const-string v0, "vclib"

    const-string v1, "We still don\'t have a connection after 10 seconds. Terminate the call"

    .line 3081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1549
    iget-object v0, p0, Lhcq;->a:Lhcp;

    iget-object v0, v0, Lhcp;->b:Lhci;

    .line 3997
    iget-object v1, v0, Lhci;->c:Lhcs;

    if-eqz v1, :cond_0

    .line 3998
    iget-object v1, v0, Lhci;->c:Lhcs;

    invoke-virtual {v1}, Lhcs;->o()V

    .line 3999
    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lhci;->a(I)V

    .line 1551
    :cond_0
    return-void
.end method
