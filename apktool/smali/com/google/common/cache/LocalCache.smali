.class public Lcom/google/common/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final r:Lkps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkps",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:I

.field final c:I

.field public final d:[Lkpf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkpf",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public final e:Lkng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkng",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lkng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkng",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lkpi;

.field public final h:Lkpi;

.field final i:J

.field public final j:La;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La;"
        }
    .end annotation
.end field

.field final k:J

.field final l:J

.field public final m:J

.field public final n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lkqj",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final o:Lkoi;

.field public final p:Lkoo;

.field public final q:Laak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laak;"
        }
    .end annotation
.end field

.field t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field u:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const-class v0, Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/LocalCache;->a:Ljava/util/logging/Logger;

    .line 690
    new-instance v0, Lkok;

    invoke-direct {v0}, Lkok;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->r:Lkps;

    .line 1021
    new-instance v0, Lkol;

    invoke-direct {v0}, Lkol;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->s:Ljava/util/Queue;

    return-void
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 4507
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4508
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lkty;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 4509
    return-object v0
.end method

.method public static a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1926
    invoke-interface {p0, p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setNextInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1927
    invoke-interface {p1, p0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setPreviousInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1928
    return-void
.end method

.method public static b(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1939
    invoke-interface {p0, p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setNextInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1940
    invoke-interface {p1, p0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setPreviousInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1941
    return-void
.end method

.method public static i()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1018
    sget-object v0, Lkpe;->a:Lkpe;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->e:Lkng;

    invoke-virtual {v0, p1}, Lkng;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4799
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v0, v1

    .line 4800
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 4801
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 4802
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 4803
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 4804
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 1843
    return v0
.end method

.method public a(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1890
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1901
    :cond_0
    :goto_0
    return-object v0

    .line 1893
    :cond_1
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v1

    invoke-interface {v1}, Lkps;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1894
    if-eqz v1, :cond_0

    .line 1898
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1901
    goto :goto_0
.end method

.method a(I)Lkpf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkpf",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->d:[Lkpf;

    iget v1, p0, Lcom/google/common/cache/LocalCache;->c:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/cache/LocalCache;->b:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1853
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    .line 1854
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lkpf;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;I)Z

    .line 1855
    return-void
.end method

.method public a(Lkps;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkps",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1847
    invoke-interface {p1}, Lkps;->b()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 1848
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    .line 1849
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->a(I)Lkpf;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lkpf;->a(Ljava/lang/Object;ILkps;)Z

    .line 1850
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 4

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1910
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1912
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getAccessTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/common/cache/LocalCache;->k:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 1919
    :cond_0
    :goto_0
    return v0

    .line 1915
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1916
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/common/cache/LocalCache;->l:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1919
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 4

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 4238
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->d:[Lkpf;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 4239
    invoke-virtual {v3}, Lkpf;->a()V

    .line 4238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4241
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 4129
    if-nez p1, :cond_0

    .line 4130
    const/4 v0, 0x0

    .line 4133
    :goto_0
    return v0

    .line 4132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4133
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lkpf;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lkpf;->b(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 20

    .prologue
    .line 4139
    if-nez p1, :cond_0

    .line 4140
    const/4 v4, 0x0

    .line 4173
    :goto_0
    return v4

    .line 4148
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v4}, Lkoi;->a()J

    move-result-wide v14

    .line 4149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/common/cache/LocalCache;->d:[Lkpf;

    .line 4150
    const-wide/16 v8, -0x1

    .line 4151
    const/4 v4, 0x0

    move v10, v4

    move-wide v12, v8

    :goto_1
    const/4 v4, 0x3

    if-ge v10, v4, :cond_5

    .line 4152
    const-wide/16 v6, 0x0

    .line 4153
    array-length v0, v11

    move/from16 v16, v0

    const/4 v4, 0x0

    move-wide v8, v6

    move v6, v4

    :goto_2
    move/from16 v0, v16

    if-ge v6, v0, :cond_4

    aget-object v7, v11, v6

    .line 4155
    iget v4, v7, Lkpf;->b:I

    .line 4157
    iget-object v0, v7, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v17, v0

    .line 4158
    const/4 v4, 0x0

    move v5, v4

    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_3

    .line 4159
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    :goto_4
    if-eqz v4, :cond_2

    .line 4160
    invoke-virtual {v7, v4, v14, v15}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v18

    .line 4161
    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->f:Lkng;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 4162
    const/4 v4, 0x1

    goto :goto_0

    .line 4159
    :cond_1
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v4

    goto :goto_4

    .line 4158
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 4166
    :cond_3
    iget v4, v7, Lkpf;->d:I

    int-to-long v4, v4

    add-long/2addr v8, v4

    .line 4153
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    .line 4168
    :cond_4
    cmp-long v4, v8, v12

    if-eqz v4, :cond_5

    .line 4151
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v12, v8

    goto :goto_1

    .line 4173
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->v:Ljava/util/Set;

    .line 4275
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkoy;

    invoke-direct {v0, p0, p0}, Lkoy;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->v:Ljava/util/Set;

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->c()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->g:Lkpi;

    sget-object v1, Lkpi;->a:Lkpi;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3941
    if-nez p1, :cond_0

    .line 3942
    const/4 v0, 0x0

    .line 3945
    :goto_0
    return-object v0

    .line 3944
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3945
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lkpf;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lkpf;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->h:Lkpi;

    sget-object v1, Lkpi;->a:Lkpi;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3902
    iget-object v6, p0, Lcom/google/common/cache/LocalCache;->d:[Lkpf;

    move v0, v1

    move-wide v2, v4

    .line 3903
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3904
    aget-object v7, v6, v0

    iget v7, v7, Lkpf;->b:I

    if-eqz v7, :cond_1

    .line 3921
    :cond_0
    :goto_1
    return v1

    .line 3907
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lkpf;->d:I

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 3903
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3910
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3911
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3912
    aget-object v7, v6, v0

    iget v7, v7, Lkpf;->b:I

    if-nez v7, :cond_0

    .line 3915
    aget-object v7, v6, v0

    iget v7, v7, Lkpf;->d:I

    int-to-long v8, v7

    sub-long/2addr v2, v8

    .line 3911
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3917
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3921
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public j()V
    .locals 1

    .prologue
    .line 1957
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqj;

    if-nez v0, :cond_0

    .line 1964
    return-void
.end method

.method k()J
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3925
    iget-object v4, p0, Lcom/google/common/cache/LocalCache;->d:[Lkpf;

    .line 3926
    const-wide/16 v2, 0x0

    move v0, v1

    .line 3927
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 3928
    aget-object v5, v4, v0

    iget v5, v5, Lkpf;->b:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 3927
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3930
    :cond_0
    return-wide v2
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4255
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->t:Ljava/util/Set;

    .line 4256
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkpb;

    invoke-direct {v0, p0, p0}, Lkpb;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->t:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4178
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4179
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4180
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4181
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lkpf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lkpf;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4194
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4197
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4186
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4187
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4188
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4189
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lkpf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lkpf;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 4201
    if-nez p1, :cond_0

    .line 4202
    const/4 v0, 0x0

    .line 4205
    :goto_0
    return-object v0

    .line 4204
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4205
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lkpf;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lkpf;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 4210
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4211
    :cond_0
    const/4 v0, 0x0

    .line 4214
    :goto_0
    return v0

    .line 4213
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4214
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lkpf;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lkpf;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4230
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4231
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4232
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4233
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lkpf;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lkpf;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 4219
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4220
    invoke-static {p3}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4221
    if-nez p2, :cond_0

    .line 4222
    const/4 v0, 0x0

    .line 4225
    :goto_0
    return v0

    .line 4224
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4225
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lkpf;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lkpf;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3935
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Laal;->e(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4264
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->u:Ljava/util/Collection;

    .line 4265
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkpt;

    invoke-direct {v0, p0, p0}, Lkpt;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->u:Ljava/util/Collection;

    goto :goto_0
.end method
