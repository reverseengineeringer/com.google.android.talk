.class final Lhsq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Limk;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    const-class v0, Lhsj;

    return-object v0
.end method

.method public a(Lav;Liog;Lilh;)V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p1}, Lav;->getActivity()Lba;

    move-result-object v0

    instance-of v0, v0, Ljry;

    if-eqz v0, :cond_0

    .line 70
    const-class v1, Lhsj;

    .line 71
    invoke-virtual {p1}, Lav;->getActivity()Lba;

    move-result-object v0

    const-class v2, Lhsp;

    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsp;

    .line 72
    invoke-interface {v0}, Lhsp;->b()Lhsj;

    move-result-object v0

    .line 70
    invoke-virtual {p3, v1, v0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 74
    :cond_0
    return-void
.end method
