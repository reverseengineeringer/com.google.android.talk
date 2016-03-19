.class final Lksi;
.super Lksf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lksf",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lksf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksf",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lksf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lksf",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 502
    invoke-direct {p0}, Lksf;-><init>()V

    .line 503
    iput-object p1, p0, Lksi;->a:Lksf;

    .line 504
    return-void
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p0}, Lksi;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public a(II)Lksf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lksf",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0}, Lksi;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lfii;->a(III)V

    .line 539
    iget-object v0, p0, Lksi;->a:Lksf;

    .line 1511
    invoke-virtual {p0}, Lksi;->size()I

    move-result v1

    sub-int/2addr v1, p2

    .line 2511
    invoke-virtual {p0}, Lksi;->size()I

    move-result v2

    sub-int/2addr v2, p1

    .line 539
    invoke-virtual {v0, v1, v2}, Lksf;->a(II)Lksf;

    move-result-object v0

    invoke-virtual {v0}, Lksf;->d()Lksf;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lksi;->a:Lksf;

    invoke-virtual {v0, p1}, Lksf;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Lksf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksf",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lksi;->a:Lksf;

    return-object v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lksi;->a:Lksf;

    invoke-virtual {v0}, Lksf;->e()Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p0}, Lksi;->size()I

    move-result v0

    invoke-static {p1, v0}, Lfii;->a(II)I

    .line 545
    iget-object v0, p0, Lksi;->a:Lksf;

    invoke-direct {p0, p1}, Lksi;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lksi;->a:Lksf;

    invoke-virtual {v0, p1}, Lksf;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 527
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lksi;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Lksf;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lksi;->a:Lksf;

    invoke-virtual {v0, p1}, Lksf;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 533
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lksi;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Lksf;->c()Lkyq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 499
    invoke-super {p0, p1}, Lksf;->a(I)Lkyq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lksi;->a:Lksf;

    invoke-virtual {v0}, Lksf;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0, p1, p2}, Lksi;->a(II)Lksf;

    move-result-object v0

    return-object v0
.end method
