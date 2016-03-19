.class Lksr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:[Ljava/lang/Object;

.field private final b:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lksm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lksm",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    invoke-virtual {p1}, Lksm;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lksr;->a:[Ljava/lang/Object;

    .line 637
    invoke-virtual {p1}, Lksm;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lksr;->b:[Ljava/lang/Object;

    .line 638
    const/4 v0, 0x0

    .line 639
    invoke-virtual {p1}, Lksm;->e()Lkth;

    move-result-object v1

    invoke-virtual {v1}, Lkth;->a()Lkyp;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 640
    iget-object v3, p0, Lksr;->a:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 641
    iget-object v3, p0, Lksr;->b:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    .line 642
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 643
    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method


# virtual methods
.method a(Lkso;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkso",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 652
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lksr;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 653
    iget-object v1, p0, Lksr;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Lksr;->b:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {p1}, Lkso;->a()Lksm;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 647
    new-instance v0, Lkso;

    iget-object v1, p0, Lksr;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Lkso;-><init>(I)V

    .line 648
    invoke-virtual {p0, v0}, Lksr;->a(Lkso;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
