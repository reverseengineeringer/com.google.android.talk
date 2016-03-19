.class abstract Lksp;
.super Lksm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lksm",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lksm;-><init>()V

    return-void
.end method


# virtual methods
.method abstract b()Lkyp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lksm;->e()Lkth;

    move-result-object v0

    return-object v0
.end method

.method f()Lkth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkth",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Lksq;

    invoke-direct {v0, p0}, Lksq;-><init>(Lksp;)V

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lksm;->g()Lkth;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lksm;->c()Lkrz;

    move-result-object v0

    return-object v0
.end method
