.class final enum Lkpj;
.super Lkpi;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 1375
    invoke-direct {p0, p1, v0}, Lkpi;-><init>(Ljava/lang/String;I)V

    .line 381
    return-void
.end method


# virtual methods
.method a(Lkpf;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lkps;
    .locals 1
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
    .line 385
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 386
    new-instance v0, Lkpp;

    invoke-direct {v0, p3}, Lkpp;-><init>(Ljava/lang/Object;)V

    .line 387
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkqa;

    invoke-direct {v0, p3, p4}, Lkqa;-><init>(Ljava/lang/Object;I)V

    goto :goto_0
.end method
