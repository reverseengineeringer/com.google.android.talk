.class final enum Lkvt;
.super Lkvr;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    .line 1293
    invoke-direct {p0, p1, v0}, Lkvr;-><init>(Ljava/lang/String;I)V

    .line 312
    return-void
.end method


# virtual methods
.method a()Lkng;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkng",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1325
    sget-object v0, Lkni;->a:Lkni;

    .line 321
    return-object v0
.end method

.method a(Lkvo;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lkwb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkvo",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lkwb",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lkvq;

    iget-object v1, p1, Lkvo;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lkvq;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-object v0
.end method
