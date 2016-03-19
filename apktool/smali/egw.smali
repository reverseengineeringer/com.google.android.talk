.class public final Legw;
.super Legf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljzl;IJ)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Legf;-><init>(Ljzl;IJ)V

    .line 19
    return-void
.end method


# virtual methods
.method protected b(Lbfz;Ldyy;)V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ledo;

    invoke-direct {v0, p0}, Ledo;-><init>(Legw;)V

    invoke-virtual {v0, p1}, Ledo;->b(Lbfz;)V

    .line 30
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Legw;->b:Lczb;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
