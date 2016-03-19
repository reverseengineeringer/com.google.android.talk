.class public final Lkvo;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public volatile b:I

.field public c:I

.field d:I

.field public volatile e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final f:I

.field final g:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2099
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2083
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lkvo;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2100
    iput-object p1, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2101
    iput p3, p0, Lkvo;->f:I

    .line 2102
    invoke-static {p2}, Lkvo;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    .line 3129
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lkvo;->d:I

    .line 3130
    iget v2, p0, Lkvo;->d:I

    iget v3, p0, Lkvo;->f:I

    if-ne v2, v3, :cond_0

    .line 3132
    iget v2, p0, Lkvo;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkvo;->d:I

    .line 3134
    :cond_0
    iput-object v0, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2104
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lkvo;->g:Ljava/lang/ref/ReferenceQueue;

    .line 2106
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_1
    iput-object v1, p0, Lkvo;->h:Ljava/lang/ref/ReferenceQueue;

    .line 2109
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2110
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 2111
    :goto_1
    iput-object v0, p0, Lkvo;->i:Ljava/util/Queue;

    .line 2114
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2115
    new-instance v0, Lkvd;

    invoke-direct {v0}, Lkvd;-><init>()V

    .line 2116
    :goto_2
    iput-object v0, p0, Lkvo;->k:Ljava/util/Queue;

    .line 2119
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2120
    new-instance v0, Lkvg;

    invoke-direct {v0}, Lkvg;-><init>()V

    .line 2121
    :goto_3
    iput-object v0, p0, Lkvo;->l:Ljava/util/Queue;

    .line 2122
    return-void

    :cond_3
    move-object v0, v1

    .line 2104
    goto :goto_0

    .line 3909
    :cond_4
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->q:Ljava/util/Queue;

    goto :goto_1

    .line 4909
    :cond_5
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->q:Ljava/util/Queue;

    goto :goto_2

    .line 5909
    :cond_6
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->q:Ljava/util/Queue;

    goto :goto_3
.end method

.method private a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2148
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2162
    :cond_0
    :goto_0
    return-object v0

    .line 2153
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v1

    .line 2154
    invoke-interface {v1}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2155
    if-eqz v2, :cond_0

    .line 2160
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->n:Lkus;

    invoke-virtual {v0, p0, p1, p2}, Lkus;->a(Lkvo;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2161
    iget-object v3, p0, Lkvo;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lkwb;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lkwb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lkwb;)V

    goto :goto_0
.end method

.method private static a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method private a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2330
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setExpirationTime(J)V

    .line 2331
    return-void
.end method

.method private a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 2170
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->h:Lkvr;

    invoke-virtual {v0, p0, p1, p2}, Lkvr;->a(Lkvo;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lkwb;

    move-result-object v0

    .line 2171
    invoke-interface {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lkwb;)V

    .line 6291
    invoke-direct {p0}, Lkvo;->e()V

    .line 6292
    iget-object v0, p0, Lkvo;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6293
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6296
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    .line 6297
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->j:J

    .line 6298
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 6299
    iget-object v0, p0, Lkvo;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2173
    :cond_0
    return-void

    .line 6297
    :cond_1
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->k:J

    goto :goto_0
.end method

.method private a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lkuh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lkuh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2368
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v1

    invoke-interface {v1}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2369
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 2372
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->l:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->q:Ljava/util/Queue;

    if-eq v0, v1, :cond_0

    .line 2373
    new-instance v0, Lkun;

    invoke-direct {v0, p1, p2, p3}, Lkun;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2374
    iget-object v1, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2376
    :cond_0
    return-void
.end method

.method private a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;ILkuh;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;I",
            "Lkuh;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3006
    iget v0, p0, Lkvo;->b:I

    .line 3007
    iget-object v2, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3008
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 3009
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v1, v0

    .line 3011
    :goto_0
    if-eqz v1, :cond_1

    .line 3012
    if-ne v1, p1, :cond_0

    .line 3013
    iget v4, p0, Lkvo;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lkvo;->c:I

    .line 3014
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v5

    invoke-interface {v5}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 3015
    invoke-direct {p0, v0, v1}, Lkvo;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 3016
    iget v1, p0, Lkvo;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3017
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3018
    iput v1, p0, Lkvo;->b:I

    .line 3019
    const/4 v0, 0x1

    .line 3023
    :goto_1
    return v0

    .line 3011
    :cond_0
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    goto :goto_0

    .line 3023
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lkwb;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkwb",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3034
    invoke-interface {p0}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2878
    iget-object v0, p0, Lkvo;->k:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2879
    iget-object v0, p0, Lkvo;->l:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2881
    iget v2, p0, Lkvo;->b:I

    .line 2882
    invoke-interface {p2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    .line 2883
    :goto_0
    if-eq p1, p2, :cond_1

    .line 2884
    invoke-direct {p0, p1, v1}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2885
    if-eqz v0, :cond_0

    move v1, v2

    .line 2883
    :goto_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 2888
    :cond_0
    invoke-direct {p0, p1}, Lkvo;->c(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 2889
    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 2892
    :cond_1
    iput v2, p0, Lkvo;->b:I

    .line 2893
    return-object v1
.end method

.method private b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2277
    iget-object v0, p0, Lkvo;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2278
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2279
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->j:J

    invoke-direct {p0, p1, v0, v1}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 2280
    iget-object v0, p0, Lkvo;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2282
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 2181
    invoke-virtual {p0}, Lkvo;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2183
    :try_start_0
    invoke-direct {p0}, Lkvo;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2185
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 2188
    :cond_0
    return-void

    .line 2185
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->unlock()V

    throw v0
.end method

.method private c(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2897
    sget-object v0, Lkuh;->c:Lkuh;

    invoke-direct {p0, p1, v0}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lkuh;)V

    .line 2898
    iget-object v0, p0, Lkvo;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2899
    iget-object v0, p0, Lkvo;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2900
    return-void
.end method

.method private d(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2410
    iget v0, p0, Lkvo;->b:I

    if-eqz v0, :cond_2

    .line 7403
    iget-object v0, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 7404
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2411
    :goto_0
    if-eqz v0, :cond_2

    .line 2412
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 2416
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2417
    if-nez v1, :cond_1

    .line 2418
    invoke-direct {p0}, Lkvo;->c()V

    .line 2411
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2422
    :cond_1
    iget-object v2, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->e:Lkng;

    invoke-virtual {v2, p1, v1}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2428
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 2196
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 7208
    :goto_0
    iget-object v0, p0, Lkvo;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7210
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 7211
    iget-object v3, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 7212
    add-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_3

    .line 2199
    :cond_0
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7222
    :cond_1
    iget-object v0, p0, Lkvo;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7224
    check-cast v0, Lkwb;

    .line 7225
    iget-object v1, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lkwb;)V

    .line 7226
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 2202
    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private e(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2432
    invoke-direct {p0, p1, p2}, Lkvo;->d(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    .line 2433
    if-nez v1, :cond_0

    .line 2439
    :goto_0
    return-object v0

    .line 2435
    :cond_0
    iget-object v2, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MapMakerInternalMap;->c(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2436
    invoke-direct {p0}, Lkvo;->f()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2439
    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 2312
    :cond_0
    :goto_0
    iget-object v0, p0, Lkvo;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_2

    .line 2317
    iget-object v1, p0, Lkvo;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2318
    iget-object v1, p0, Lkvo;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2320
    :cond_1
    iget-object v1, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkvo;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2321
    iget-object v1, p0, Lkvo;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2324
    :cond_2
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 2337
    invoke-virtual {p0}, Lkvo;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2339
    :try_start_0
    invoke-direct {p0}, Lkvo;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2341
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 2345
    :cond_0
    return-void

    .line 2341
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->unlock()V

    throw v0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 2349
    invoke-direct {p0}, Lkvo;->e()V

    .line 2351
    iget-object v0, p0, Lkvo;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2363
    :cond_0
    return-void

    .line 2356
    :cond_1
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v2

    .line 2358
    :cond_2
    iget-object v0, p0, Lkvo;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2359
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v4, Lkuh;->d:Lkuh;

    invoke-direct {p0, v0, v1, v4}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;ILkuh;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2360
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 3094
    invoke-virtual {p0}, Lkvo;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3096
    :try_start_0
    invoke-direct {p0}, Lkvo;->d()V

    .line 3097
    invoke-direct {p0}, Lkvo;->g()V

    .line 3098
    iget-object v0, p0, Lkvo;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3100
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 3103
    :cond_0
    return-void

    .line 3100
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->unlock()V

    throw v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 3107
    invoke-virtual {p0}, Lkvo;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3108
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->h()V

    .line 3110
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3042
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3043
    invoke-direct {p0}, Lkvo;->c()V

    .line 3056
    :goto_0
    return-object v0

    .line 3046
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v1

    invoke-interface {v1}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3047
    if-nez v1, :cond_1

    .line 3048
    invoke-direct {p0}, Lkvo;->c()V

    goto :goto_0

    .line 3052
    :cond_1
    iget-object v2, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/MapMakerInternalMap;->c(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3053
    invoke-direct {p0}, Lkvo;->f()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3056
    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 2444
    :try_start_0
    invoke-direct {p0, p1, p2}, Lkvo;->e(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2445
    if-nez v1, :cond_0

    .line 2457
    invoke-virtual {p0}, Lkvo;->b()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2449
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v0

    invoke-interface {v0}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2450
    if-eqz v0, :cond_2

    .line 8262
    iget-object v2, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8263
    iget-object v2, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->j:J

    invoke-direct {p0, v1, v2, v3}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 8265
    :cond_1
    iget-object v2, p0, Lkvo;->i:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2457
    :goto_1
    invoke-virtual {p0}, Lkvo;->b()V

    goto :goto_0

    .line 2453
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lkvo;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2457
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->b()V

    throw v0
.end method

.method public a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2700
    invoke-virtual {p0}, Lkvo;->lock()V

    .line 20078
    :try_start_0
    invoke-direct {p0}, Lkvo;->h()V

    .line 2704
    iget-object v4, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2705
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2706
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v3, v0

    .line 2708
    :goto_0
    if-eqz v3, :cond_3

    .line 2709
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2710
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->e:Lkng;

    .line 2712
    invoke-virtual {v2, p1, v6}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2715
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v7

    .line 2716
    invoke-interface {v7}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2717
    if-nez v2, :cond_1

    .line 2718
    invoke-static {v7}, Lkvo;->a(Lkwb;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2719
    iget v7, p0, Lkvo;->b:I

    .line 2720
    iget v7, p0, Lkvo;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lkvo;->c:I

    .line 2721
    sget-object v7, Lkuh;->c:Lkuh;

    invoke-direct {p0, v6, v2, v7}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2722
    invoke-direct {p0, v0, v3}, Lkvo;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2723
    iget v2, p0, Lkvo;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 2724
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2725
    iput v2, p0, Lkvo;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2739
    :cond_0
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 20085
    invoke-direct {p0}, Lkvo;->i()V

    move-object v0, v1

    .line 2740
    :goto_1
    return-object v0

    .line 2730
    :cond_1
    :try_start_1
    iget v0, p0, Lkvo;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkvo;->c:I

    .line 2731
    sget-object v0, Lkuh;->b:Lkuh;

    invoke-direct {p0, p1, v2, v0}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2732
    invoke-direct {p0, v3, p3}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2739
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 21085
    invoke-direct {p0}, Lkvo;->i()V

    move-object v0, v2

    .line 2740
    goto :goto_1

    .line 2708
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2739
    :cond_3
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 22085
    invoke-direct {p0}, Lkvo;->i()V

    move-object v0, v1

    .line 2740
    goto :goto_1

    .line 2739
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 23085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2740
    throw v0
.end method

.method public a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 2507
    invoke-virtual {p0}, Lkvo;->lock()V

    .line 9078
    :try_start_0
    invoke-direct {p0}, Lkvo;->h()V

    .line 2511
    iget v0, p0, Lkvo;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 2512
    iget v0, p0, Lkvo;->d:I

    if-le v1, v0, :cond_5

    .line 9580
    iget-object v7, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 9581
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 9582
    const/high16 v0, 0x40000000    # 2.0f

    if-ge v8, v0, :cond_4

    .line 9596
    iget v1, p0, Lkvo;->b:I

    .line 9597
    shl-int/lit8 v0, v8, 0x1

    invoke-static {v0}, Lkvo;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 9598
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkvo;->d:I

    .line 9599
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 9600
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_3

    .line 9603
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 9605
    if-eqz v0, :cond_d

    .line 9606
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    .line 9607
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    and-int v3, v2, v10

    .line 9610
    if-nez v4, :cond_0

    .line 9611
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    .line 9600
    :goto_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 9618
    :goto_2
    if-eqz v4, :cond_1

    .line 9619
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    and-int/2addr v2, v10

    .line 9620
    if-eq v2, v3, :cond_e

    move-object v3, v4

    .line 9618
    :goto_3
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    move-object v5, v3

    move v3, v2

    goto :goto_2

    .line 9626
    :cond_1
    invoke-virtual {v9, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    .line 9629
    :goto_4
    if-eq v2, v5, :cond_d

    .line 9630
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v0

    and-int v3, v0, v10

    .line 9631
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 9632
    invoke-direct {p0, v2, v0}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 9633
    if-eqz v0, :cond_2

    .line 9634
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 9629
    :goto_5
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 9636
    :cond_2
    invoke-direct {p0, v2}, Lkvo;->c(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 9637
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 9643
    :cond_3
    iput-object v9, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 9644
    iput v1, p0, Lkvo;->b:I

    .line 2514
    :cond_4
    iget v0, p0, Lkvo;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 2517
    :cond_5
    iget-object v3, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2518
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2519
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v2, v0

    .line 2522
    :goto_6
    if-eqz v2, :cond_9

    .line 2523
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2524
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_8

    if-eqz v5, :cond_8

    iget-object v6, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->e:Lkng;

    .line 2526
    invoke-virtual {v6, p1, v5}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2529
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v0

    .line 2530
    invoke-interface {v0}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2532
    if-nez v0, :cond_6

    .line 2533
    iget v1, p0, Lkvo;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkvo;->c:I

    .line 2534
    invoke-direct {p0, v2, p3}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2536
    sget-object v1, Lkuh;->c:Lkuh;

    invoke-direct {p0, p1, v0, v1}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2537
    iget v0, p0, Lkvo;->b:I

    .line 2541
    iput v0, p0, Lkvo;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2570
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 10085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2571
    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 2543
    :cond_6
    if-eqz p4, :cond_7

    .line 2547
    :try_start_1
    invoke-direct {p0, v2}, Lkvo;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2570
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 11085
    invoke-direct {p0}, Lkvo;->i()V

    goto :goto_7

    .line 2551
    :cond_7
    :try_start_2
    iget v1, p0, Lkvo;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkvo;->c:I

    .line 2552
    sget-object v1, Lkuh;->b:Lkuh;

    invoke-direct {p0, p1, v0, v1}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2553
    invoke-direct {p0, v2, p3}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2570
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 12085
    invoke-direct {p0}, Lkvo;->i()V

    goto :goto_7

    .line 2522
    :cond_8
    :try_start_3
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v2

    goto :goto_6

    .line 2560
    :cond_9
    iget v2, p0, Lkvo;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkvo;->c:I

    .line 12139
    iget-object v2, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->n:Lkus;

    invoke-virtual {v2, p0, p1, p2, v0}, Lkus;->a(Lkvo;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2562
    invoke-direct {p0, v0, p3}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2563
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 12386
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lkvo;->b:I

    iget v2, p0, Lkvo;->f:I

    if-lt v0, v2, :cond_b

    .line 12387
    invoke-direct {p0}, Lkvo;->e()V

    .line 12389
    iget-object v0, p0, Lkvo;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 12390
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    sget-object v3, Lkuh;->e:Lkuh;

    invoke-direct {p0, v0, v2, v3}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;ILkuh;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 12391
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2570
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 14085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2571
    throw v0

    .line 12393
    :cond_a
    const/4 v0, 0x1

    .line 2564
    :goto_8
    if-eqz v0, :cond_c

    .line 2565
    :try_start_4
    iget v0, p0, Lkvo;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2567
    :goto_9
    iput v0, p0, Lkvo;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2570
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 13085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2571
    const/4 v0, 0x0

    goto :goto_7

    .line 12395
    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    move v0, v1

    goto :goto_9

    :cond_d
    move v0, v1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    move-object v3, v5

    goto/16 :goto_3
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2833
    iget v0, p0, Lkvo;->b:I

    if-eqz v0, :cond_7

    .line 2834
    invoke-virtual {p0}, Lkvo;->lock()V

    .line 2836
    :try_start_0
    iget-object v3, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2837
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->l:Ljava/util/Queue;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap;->q:Ljava/util/Queue;

    if-eq v0, v2, :cond_1

    move v2, v1

    .line 2838
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 2839
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    :goto_1
    if-eqz v0, :cond_0

    .line 2841
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    .line 2842
    sget-object v4, Lkuh;->a:Lkuh;

    invoke-direct {p0, v0, v4}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lkuh;)V

    .line 2839
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 2838
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2847
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2848
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2847
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 31236
    :cond_2
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31245
    :cond_3
    iget-object v0, p0, Lkvo;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_3

    .line 31239
    :cond_4
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31249
    :cond_5
    iget-object v0, p0, Lkvo;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2851
    :cond_6
    iget-object v0, p0, Lkvo;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2852
    iget-object v0, p0, Lkvo;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2853
    iget-object v0, p0, Lkvo;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2855
    iget v0, p0, Lkvo;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkvo;->c:I

    .line 2856
    const/4 v0, 0x0

    iput v0, p0, Lkvo;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2858
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 32085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2862
    :cond_7
    return-void

    .line 2858
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 33085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2859
    throw v0
.end method

.method public a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 2906
    invoke-virtual {p0}, Lkvo;->lock()V

    .line 2908
    :try_start_0
    iget v0, p0, Lkvo;->b:I

    .line 2909
    iget-object v2, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2910
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2911
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v1, v0

    .line 2913
    :goto_0
    if-eqz v1, :cond_1

    .line 2914
    if-ne v1, p1, :cond_0

    .line 2915
    iget v4, p0, Lkvo;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lkvo;->c:I

    .line 2917
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v5

    invoke-interface {v5}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkuh;->c:Lkuh;

    .line 2916
    invoke-direct {p0, v4, v5, v6}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2918
    invoke-direct {p0, v0, v1}, Lkvo;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2919
    iget v1, p0, Lkvo;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 2920
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2921
    iput v1, p0, Lkvo;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2928
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 34085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2929
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2913
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2928
    :cond_1
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 35085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2929
    const/4 v0, 0x0

    goto :goto_1

    .line 2928
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 36085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2929
    throw v0
.end method

.method public a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2648
    invoke-virtual {p0}, Lkvo;->lock()V

    .line 15078
    :try_start_0
    invoke-direct {p0}, Lkvo;->h()V

    .line 2652
    iget-object v3, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2653
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2654
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v2, v0

    .line 2656
    :goto_0
    if-eqz v2, :cond_4

    .line 2657
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2658
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->e:Lkng;

    .line 2660
    invoke-virtual {v6, p1, v5}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2663
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v6

    .line 2664
    invoke-interface {v6}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2665
    if-nez v7, :cond_1

    .line 2666
    invoke-static {v6}, Lkvo;->a(Lkwb;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2667
    iget v6, p0, Lkvo;->b:I

    .line 2668
    iget v6, p0, Lkvo;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lkvo;->c:I

    .line 2669
    sget-object v6, Lkuh;->c:Lkuh;

    invoke-direct {p0, v5, v7, v6}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2670
    invoke-direct {p0, v0, v2}, Lkvo;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2671
    iget v2, p0, Lkvo;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 2672
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2673
    iput v2, p0, Lkvo;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2694
    :cond_0
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 15085
    invoke-direct {p0}, Lkvo;->i()V

    move v0, v1

    .line 2695
    :goto_1
    return v0

    .line 2678
    :cond_1
    :try_start_1
    iget-object v0, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->f:Lkng;

    invoke-virtual {v0, p3, v7}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2679
    iget v0, p0, Lkvo;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkvo;->c:I

    .line 2680
    sget-object v0, Lkuh;->b:Lkuh;

    invoke-direct {p0, p1, v7, v0}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2681
    invoke-direct {p0, v2, p4}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2694
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 16085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2695
    const/4 v0, 0x1

    goto :goto_1

    .line 2686
    :cond_2
    :try_start_2
    invoke-direct {p0, v2}, Lkvo;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2694
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 17085
    invoke-direct {p0}, Lkvo;->i()V

    move v0, v1

    .line 2695
    goto :goto_1

    .line 2656
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2694
    :cond_4
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 18085
    invoke-direct {p0}, Lkvo;->i()V

    move v0, v1

    .line 2695
    goto :goto_1

    .line 2694
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 19085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2695
    throw v0
.end method

.method public a(Ljava/lang/Object;ILkwb;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lkwb",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2937
    invoke-virtual {p0}, Lkvo;->lock()V

    .line 2939
    :try_start_0
    iget v0, p0, Lkvo;->b:I

    .line 2940
    iget-object v3, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2941
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2942
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v2, v0

    .line 2944
    :goto_0
    if-eqz v2, :cond_4

    .line 2945
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2946
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->e:Lkng;

    .line 2948
    invoke-virtual {v6, p1, v5}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2949
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v5

    .line 2950
    if-ne v5, p3, :cond_1

    .line 2951
    iget v1, p0, Lkvo;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkvo;->c:I

    .line 2952
    invoke-interface {p3}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lkuh;->c:Lkuh;

    invoke-direct {p0, p1, v1, v5}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2953
    invoke-direct {p0, v0, v2}, Lkvo;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2954
    iget v1, p0, Lkvo;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 2955
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2956
    iput v1, p0, Lkvo;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2965
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 2966
    invoke-virtual {p0}, Lkvo;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2967
    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2965
    :cond_1
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 2966
    invoke-virtual {p0}, Lkvo;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38085
    invoke-direct {p0}, Lkvo;->i()V

    :cond_2
    move v0, v1

    .line 2967
    goto :goto_1

    .line 2944
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2965
    :cond_4
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 2966
    invoke-virtual {p0}, Lkvo;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5

    .line 39085
    invoke-direct {p0}, Lkvo;->i()V

    :cond_5
    move v0, v1

    .line 2967
    goto :goto_1

    .line 2965
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 2966
    invoke-virtual {p0}, Lkvo;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_6

    .line 40085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2967
    :cond_6
    throw v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 3065
    iget-object v0, p0, Lkvo;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 40089
    invoke-direct {p0}, Lkvo;->h()V

    .line 40090
    invoke-direct {p0}, Lkvo;->i()V

    .line 3068
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2463
    :try_start_0
    iget v1, p0, Lkvo;->b:I

    if-eqz v1, :cond_2

    .line 2464
    invoke-direct {p0, p1, p2}, Lkvo;->e(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2465
    if-nez v1, :cond_0

    .line 2473
    invoke-virtual {p0}, Lkvo;->b()V

    :goto_0
    return v0

    .line 2468
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v1

    invoke-interface {v1}, Lkwb;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2473
    :cond_1
    invoke-virtual {p0}, Lkvo;->b()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lkvo;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->b()V

    throw v0
.end method

.method public b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 2789
    invoke-virtual {p0}, Lkvo;->lock()V

    .line 28078
    :try_start_0
    invoke-direct {p0}, Lkvo;->h()V

    .line 2793
    iget v0, p0, Lkvo;->b:I

    .line 2794
    iget-object v4, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2795
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2796
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v3, v0

    .line 2798
    :goto_0
    if-eqz v3, :cond_4

    .line 2799
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2800
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v2, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->e:Lkng;

    .line 2802
    invoke-virtual {v2, p1, v6}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2803
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v2

    .line 2804
    invoke-interface {v2}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2807
    iget-object v8, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v8, v8, Lcom/google/common/collect/MapMakerInternalMap;->f:Lkng;

    invoke-virtual {v8, p3, v7}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2808
    sget-object v2, Lkuh;->a:Lkuh;

    .line 2815
    :goto_1
    iget v8, p0, Lkvo;->c:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lkvo;->c:I

    .line 2816
    invoke-direct {p0, v6, v7, v2}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2817
    invoke-direct {p0, v0, v3}, Lkvo;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2818
    iget v3, p0, Lkvo;->b:I

    add-int/lit8 v3, v3, -0x1

    .line 2819
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2820
    iput v3, p0, Lkvo;->b:I

    .line 2821
    sget-object v0, Lkuh;->a:Lkuh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    .line 2827
    :goto_2
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 29085
    invoke-direct {p0}, Lkvo;->i()V

    move v1, v0

    .line 2828
    :goto_3
    return v1

    .line 2809
    :cond_0
    :try_start_1
    invoke-static {v2}, Lkvo;->a(Lkwb;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2810
    sget-object v2, Lkuh;->c:Lkuh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2827
    :cond_1
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 28085
    invoke-direct {p0}, Lkvo;->i()V

    goto :goto_3

    :cond_2
    move v0, v1

    .line 2821
    goto :goto_2

    .line 2798
    :cond_3
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2827
    :cond_4
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 30085
    invoke-direct {p0}, Lkvo;->i()V

    goto :goto_3

    .line 2827
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 31085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2828
    throw v0
.end method

.method public c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2745
    invoke-virtual {p0}, Lkvo;->lock()V

    .line 24078
    :try_start_0
    invoke-direct {p0}, Lkvo;->h()V

    .line 2749
    iget v0, p0, Lkvo;->b:I

    .line 2750
    iget-object v4, p0, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2751
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2752
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v3, v0

    .line 2754
    :goto_0
    if-eqz v3, :cond_3

    .line 2755
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2756
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lkvo;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->e:Lkng;

    .line 2758
    invoke-virtual {v2, p1, v6}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2759
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v7

    .line 2760
    invoke-interface {v7}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2763
    if-eqz v2, :cond_0

    .line 2764
    sget-object v1, Lkuh;->a:Lkuh;

    .line 2771
    :goto_1
    iget v7, p0, Lkvo;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lkvo;->c:I

    .line 2772
    invoke-direct {p0, v6, v2, v1}, Lkvo;->a(Ljava/lang/Object;Ljava/lang/Object;Lkuh;)V

    .line 2773
    invoke-direct {p0, v0, v3}, Lkvo;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2774
    iget v1, p0, Lkvo;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 2775
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2776
    iput v1, p0, Lkvo;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2783
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 25085
    invoke-direct {p0}, Lkvo;->i()V

    move-object v0, v2

    .line 2784
    :goto_2
    return-object v0

    .line 2765
    :cond_0
    :try_start_1
    invoke-static {v7}, Lkvo;->a(Lkwb;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2766
    sget-object v1, Lkuh;->c:Lkuh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2783
    :cond_1
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 24085
    invoke-direct {p0}, Lkvo;->i()V

    move-object v0, v1

    .line 2784
    goto :goto_2

    .line 2754
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2783
    :cond_3
    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 26085
    invoke-direct {p0}, Lkvo;->i()V

    move-object v0, v1

    .line 2784
    goto :goto_2

    .line 2783
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkvo;->unlock()V

    .line 27085
    invoke-direct {p0}, Lkvo;->i()V

    .line 2784
    throw v0
.end method
