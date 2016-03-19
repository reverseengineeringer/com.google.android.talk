.class final Lbot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbje;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 6637
    iput-object p1, p0, Lbot;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbjb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbjb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6641
    iget-object v0, p0, Lbot;->a:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->binder:Lilh;

    .line 6641
    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 6642
    iget-object v1, p0, Lbot;->a:Lbng;

    .line 8285
    iget-object v1, v1, Lbng;->av:Lhba;

    .line 6643
    invoke-interface {v1, v0}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0xc14

    .line 6644
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 6645
    invoke-interface {v0}, Lhax;->d()V

    .line 6646
    iget-object v0, p0, Lbot;->a:Lbng;

    .line 9285
    iget-object v1, v0, Lbng;->au:Lcqr;

    .line 6646
    iget-object v0, p0, Lbot;->a:Lbng;

    .line 10285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 6647
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v2

    const-string v3, "conversation_variant_engine_computation"

    .line 6649
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v6, 0x3ee

    .line 6646
    invoke-interface/range {v1 .. v6}, Lcqr;->a(ILjava/lang/String;JI)V

    .line 6651
    return-void
.end method
