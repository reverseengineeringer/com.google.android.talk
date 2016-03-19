.class public abstract Lkvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:Lkvo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkvo",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lkwi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkwi;"
        }
    .end annotation
.end field

.field h:Lkwi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkwi;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 1

    .prologue
    .line 3616
    iput-object p1, p0, Lkvj;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3617
    iget-object v0, p1, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkvj;->b:I

    .line 3618
    const/4 v0, -0x1

    iput v0, p0, Lkvj;->c:I

    .line 3619
    invoke-direct {p0}, Lkvj;->d()V

    .line 3620
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 3626
    const/4 v0, 0x0

    iput-object v0, p0, Lkvj;->g:Lkwi;

    .line 3628
    invoke-virtual {p0}, Lkvj;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3646
    :cond_0
    :goto_0
    return-void

    .line 3632
    :cond_1
    invoke-virtual {p0}, Lkvj;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3636
    :cond_2
    iget v0, p0, Lkvj;->b:I

    if-ltz v0, :cond_0

    .line 3637
    iget-object v0, p0, Lkvj;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    iget v1, p0, Lkvj;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lkvj;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lkvj;->d:Lkvo;

    .line 3638
    iget-object v0, p0, Lkvj;->d:Lkvo;

    iget v0, v0, Lkvo;->b:I

    if-eqz v0, :cond_2

    .line 3639
    iget-object v0, p0, Lkvj;->d:Lkvo;

    iget-object v0, v0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lkvj;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3640
    iget-object v0, p0, Lkvj;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkvj;->c:I

    .line 3641
    invoke-virtual {p0}, Lkvj;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 3652
    iget-object v0, p0, Lkvj;->f:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 3653
    iget-object v0, p0, Lkvj;->f:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lkvj;->f:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    :goto_0
    iget-object v0, p0, Lkvj;->f:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 3654
    iget-object v0, p0, Lkvj;->f:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-virtual {p0, v0}, Lkvj;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3655
    const/4 v0, 0x1

    .line 3659
    :goto_1
    return v0

    .line 3653
    :cond_0
    iget-object v0, p0, Lkvj;->f:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lkvj;->f:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    goto :goto_0

    .line 3659
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3682
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3683
    iget-object v1, p0, Lkvj;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 3684
    if-eqz v1, :cond_0

    .line 3685
    new-instance v2, Lkwi;

    iget-object v3, p0, Lkvj;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v2, v3, v0, v1}, Lkwi;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lkvj;->g:Lkwi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3692
    iget-object v0, p0, Lkvj;->d:Lkvo;

    invoke-virtual {v0}, Lkvo;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lkvj;->d:Lkvo;

    invoke-virtual {v0}, Lkvo;->b()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lkvj;->d:Lkvo;

    invoke-virtual {v1}, Lkvo;->b()V

    throw v0
.end method

.method b()Z
    .locals 3

    .prologue
    .line 3666
    :cond_0
    iget v0, p0, Lkvj;->c:I

    if-ltz v0, :cond_2

    .line 3667
    iget-object v0, p0, Lkvj;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkvj;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lkvj;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    iput-object v0, p0, Lkvj;->f:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 3668
    iget-object v0, p0, Lkvj;->f:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-virtual {p0, v0}, Lkvj;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkvj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3669
    :cond_1
    const/4 v0, 0x1

    .line 3673
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Lkwi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkwi;"
        }
    .end annotation

    .prologue
    .line 3702
    iget-object v0, p0, Lkvj;->g:Lkwi;

    if-nez v0, :cond_0

    .line 3703
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3705
    :cond_0
    iget-object v0, p0, Lkvj;->g:Lkwi;

    iput-object v0, p0, Lkvj;->h:Lkwi;

    .line 3706
    invoke-direct {p0}, Lkvj;->d()V

    .line 3707
    iget-object v0, p0, Lkvj;->h:Lkwi;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 3698
    iget-object v0, p0, Lkvj;->g:Lkwi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3712
    iget-object v0, p0, Lkvj;->h:Lkwi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4055
    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lfii;->b(ZLjava/lang/Object;)V

    .line 3713
    iget-object v0, p0, Lkvj;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lkvj;->h:Lkwi;

    invoke-virtual {v1}, Lkwi;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3714
    const/4 v0, 0x0

    iput-object v0, p0, Lkvj;->h:Lkwi;

    .line 3715
    return-void

    .line 3712
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
