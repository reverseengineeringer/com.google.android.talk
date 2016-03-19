.class public final Lktv;
.super Lkti;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkti",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 438
    invoke-direct {p0}, Lkti;-><init>()V

    .line 439
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lktv;->c:Ljava/util/Comparator;

    .line 440
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Lksa;
    .locals 0

    .prologue
    .line 2454
    invoke-super {p0, p1}, Lkti;->c(Ljava/lang/Object;)Lkti;

    .line 431
    return-object p0
.end method

.method public synthetic a([Ljava/lang/Object;)Lksb;
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lktv;->c([Ljava/lang/Object;)Lktv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Lkth;
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lktv;->b()Lktu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lksb;
    .locals 0

    .prologue
    .line 3454
    invoke-super {p0, p1}, Lkti;->c(Ljava/lang/Object;)Lkti;

    .line 431
    return-object p0
.end method

.method public synthetic b([Ljava/lang/Object;)Lkti;
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lktv;->c([Ljava/lang/Object;)Lktv;

    move-result-object v0

    return-object v0
.end method

.method public b()Lktu;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 507
    iget-object v3, p0, Lktv;->a:[Ljava/lang/Object;

    .line 508
    iget-object v4, p0, Lktv;->c:Ljava/util/Comparator;

    iget v5, p0, Lktv;->b:I

    .line 1365
    if-nez v5, :cond_0

    .line 1366
    invoke-static {v4}, Lktu;->a(Ljava/util/Comparator;)Lkxu;

    move-result-object v0

    .line 509
    :goto_0
    invoke-virtual {v0}, Lktu;->size()I

    move-result v1

    iput v1, p0, Lktv;->b:I

    .line 510
    return-object v0

    .line 1368
    :cond_0
    invoke-static {v3, v5}, Lkxi;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1369
    const/4 v1, 0x0

    invoke-static {v3, v1, v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v2, v0

    move v1, v0

    .line 1371
    :goto_1
    if-ge v2, v5, :cond_1

    .line 1372
    aget-object v6, v3, v2

    .line 1373
    add-int/lit8 v0, v1, -0x1

    aget-object v0, v3, v0

    .line 1374
    invoke-interface {v4, v6, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1375
    add-int/lit8 v0, v1, 0x1

    aput-object v6, v3, v1

    .line 1371
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1378
    :cond_1
    const/4 v0, 0x0

    invoke-static {v3, v1, v5, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1379
    new-instance v0, Lkxu;

    .line 1380
    invoke-static {v3, v1}, Lksf;->b([Ljava/lang/Object;I)Lksf;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lkxu;-><init>(Lksf;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public synthetic c(Ljava/lang/Object;)Lkti;
    .locals 0

    .prologue
    .line 1454
    invoke-super {p0, p1}, Lkti;->c(Ljava/lang/Object;)Lkti;

    .line 431
    return-object p0
.end method

.method public varargs c([Ljava/lang/Object;)Lktv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lktv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 468
    invoke-super {p0, p1}, Lkti;->b([Ljava/lang/Object;)Lkti;

    .line 469
    return-object p0
.end method
