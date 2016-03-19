.class final enum Lkvs;
.super Lkvr;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 1293
    invoke-direct {p0, p1, v0}, Lkvr;-><init>(Ljava/lang/String;I)V

    .line 299
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
    .line 1313
    sget-object v0, Lknh;->a:Lknh;

    .line 308
    return-object v0
.end method

.method a(Lkvo;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lkwb;
    .locals 1
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
    .line 303
    new-instance v0, Lkvz;

    invoke-direct {v0, p3}, Lkvz;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
