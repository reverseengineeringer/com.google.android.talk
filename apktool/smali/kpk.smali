.class final enum Lkpk;
.super Lkpi;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x1

    .line 1375
    invoke-direct {p0, p1, v0}, Lkpi;-><init>(Ljava/lang/String;I)V

    .line 396
    return-void
.end method


# virtual methods
.method a(Lkpf;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lkps;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkpf",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TV;I)",
            "Lkps",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 400
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 401
    new-instance v0, Lkph;

    iget-object v1, p1, Lkpf;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lkph;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 402
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkpz;

    iget-object v1, p1, Lkpf;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2, p4}, Lkpz;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;I)V

    goto :goto_0
.end method
