.class public abstract Lkxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lkxj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lkxj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 165
    instance-of v0, p0, Lkxj;

    if-eqz v0, :cond_0

    .line 166
    check-cast p0, Lkxj;

    .line 167
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lkrh;

    invoke-direct {v0, p0}, Lkrh;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lksf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lksf",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1334
    invoke-static {p1}, Laal;->b(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 885
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 886
    invoke-static {v3}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 888
    :cond_0
    invoke-static {v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2291
    array-length v0, v1

    invoke-static {v1, v0}, Lksf;->b([Ljava/lang/Object;I)Lksf;

    move-result-object v0

    .line 889
    return-object v0
.end method

.method public a()Lkxj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lkxj",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lkxg;

    invoke-direct {v0, p0}, Lkxg;-><init>(Lkxj;)V

    return-object v0
.end method

.method public a(Lknj;)Lkxj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lknj",
            "<TF;+TT;>;)",
            "Lkxj",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lkrf;

    invoke-direct {v0, p1, p0}, Lkrf;-><init>(Lknj;Lkxj;)V

    return-object v0
.end method

.method public b()Lkxj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lkxj",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Lkxh;

    invoke-direct {v0, p0}, Lkxh;-><init>(Lkxj;)V

    return-object v0
.end method

.method public c()Lkxj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lkxj",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Lkxw;

    invoke-direct {v0, p0}, Lkxw;-><init>(Lkxj;)V

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method d()Lkxj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:TT;>()",
            "Lkxj",
            "<",
            "Ljava/util/Map$Entry",
            "<TT2;*>;>;"
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {}, Lkwj;->a()Lknj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkxj;->a(Lknj;)Lkxj;

    move-result-object v0

    return-object v0
.end method
