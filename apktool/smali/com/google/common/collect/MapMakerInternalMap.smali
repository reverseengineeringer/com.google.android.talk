.class public Lcom/google/common/collect/MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
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
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final p:Lkwb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkwb",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5L

.field private static final u:Ljava/util/logging/Logger;


# instance fields
.field final transient a:I

.field final transient b:I

.field public final transient c:[Lkvo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkvo",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final d:I

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

.field final g:Lkvr;

.field public final h:Lkvr;

.field final i:I

.field public final j:J

.field public final k:J

.field public final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lkun",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final m:Lavb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavb;"
        }
    .end annotation
.end field

.field public final transient n:Lkus;

.field public final o:Lkoi;

.field transient r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient s:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field transient t:Ljava/util/Set;
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
    .line 140
    const-class v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->u:Ljava/util/logging/Logger;

    .line 583
    new-instance v0, Lkuo;

    invoke-direct {v0}, Lkuo;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->p:Lkwb;

    .line 876
    new-instance v0, Lkup;

    invoke-direct {v0}, Lkup;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->q:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Lkuf;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 200
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 201
    invoke-virtual {p1}, Lkuf;->d()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->d:I

    .line 203
    invoke-virtual {p1}, Lkuf;->e()Lkvr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->g:Lkvr;

    .line 204
    invoke-virtual {p1}, Lkuf;->f()Lkvr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->h:Lkvr;

    .line 206
    invoke-virtual {p1}, Lkuf;->b()Lkng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->e:Lkng;

    .line 207
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->h:Lkvr;

    invoke-virtual {v0}, Lkvr;->a()Lkng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->f:Lkng;

    .line 209
    iget v0, p1, Lkuf;->e:I

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->i:I

    .line 210
    invoke-virtual {p1}, Lkuf;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->j:J

    .line 211
    invoke-virtual {p1}, Lkuf;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->k:J

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->g:Lkvr;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lkus;->a(Lkvr;ZZ)Lkus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->n:Lkus;

    .line 214
    invoke-virtual {p1}, Lkuf;->i()Lkoi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->o:Lkoi;

    .line 216
    invoke-virtual {p1}, Lkuf;->a()Lavb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->m:Lavb;

    .line 217
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->m:Lavb;

    sget-object v1, Lkrr;->a:Lkrr;

    if-ne v0, v1, :cond_2

    .line 4909
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->q:Ljava/util/Queue;

    .line 220
    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->l:Ljava/util/Queue;

    .line 222
    invoke-virtual {p1}, Lkuf;->c()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 223
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v1, v2

    move v3, v4

    .line 232
    :goto_1
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap;->d:I

    if-ge v1, v5, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    shl-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->i:I

    if-gt v5, v6, :cond_3

    .line 234
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 235
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    .line 237
    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->b:I

    .line 238
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->a:I

    .line 4983
    new-array v3, v1, [Lkvo;

    .line 240
    iput-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    .line 242
    div-int v3, v0, v1

    .line 243
    mul-int v5, v3, v1

    if-ge v5, v0, :cond_8

    .line 244
    add-int/lit8 v0, v3, 0x1

    .line 248
    :goto_2
    if-ge v2, v0, :cond_4

    .line 249
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 252
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->i:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 255
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->i:I

    rem-int v1, v3, v1

    .line 256
    :goto_3
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    array-length v3, v3

    if-ge v4, v3, :cond_7

    .line 257
    if-ne v4, v1, :cond_5

    .line 258
    add-int/lit8 v0, v0, -0x1

    .line 260
    :cond_5
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(II)Lkvo;

    move-result-object v5

    aput-object v5, v3, v4

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 263
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    array-length v0, v0

    if-ge v4, v0, :cond_7

    .line 264
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(II)Lkvo;

    move-result-object v1

    aput-object v1, v0, v4

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 267
    :cond_7
    return-void

    :cond_8
    move v0, v3

    goto :goto_2
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
    .line 3931
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3932
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lkty;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 3933
    return-object v0
.end method

.method public static a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1938
    invoke-interface {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1939
    invoke-interface {p1, p0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1940
    return-void
.end method

.method public static b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1970
    invoke-interface {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1971
    invoke-interface {p1, p0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1972
    return-void
.end method

.method public static d(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 5873
    sget-object v0, Lkvm;->a:Lkvm;

    .line 1945
    invoke-interface {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1946
    invoke-interface {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1947
    return-void
.end method

.method public static e(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 6873
    sget-object v0, Lkvm;->a:Lkvm;

    .line 1977
    invoke-interface {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1978
    invoke-interface {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1979
    return-void
.end method

.method public static g()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 873
    sget-object v0, Lkvm;->a:Lkvm;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->e:Lkng;

    invoke-virtual {v0, p1}, Lkng;->a(Ljava/lang/Object;)I

    move-result v0

    .line 5822
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v0, v1

    .line 5823
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 5824
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 5825
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 5826
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 5827
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 1861
    return v0
.end method

.method a(I)Lkvo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkvo",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->b:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->a:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method a(II)Lkvo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkvo",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1896
    new-instance v0, Lkvo;

    invoke-direct {v0, p0, p1, p2}, Lkvo;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1871
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v0

    .line 1872
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lkvo;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;I)Z

    .line 1873
    return-void
.end method

.method public a(Lkwb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkwb",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1865
    invoke-interface {p1}, Lkwb;->a()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 1866
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    .line 1867
    invoke-virtual {p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lkvo;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lkvo;->a(Ljava/lang/Object;ILkwb;)Z

    .line 1868
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1933
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    sub-long v0, p2, v0

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

.method public b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;
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

    .line 1905
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1916
    :cond_0
    :goto_0
    return-object v0

    .line 1908
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lkwb;

    move-result-object v1

    invoke-interface {v1}, Lkwb;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1909
    if-eqz v1, :cond_0

    .line 1913
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->c(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 1916
    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->d()Z

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

.method c()Z
    .locals 4

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->k:J

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

.method public c(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 3575
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3576
    invoke-virtual {v3}, Lkvo;->a()V

    .line 3575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3578
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3468
    if-nez p1, :cond_0

    .line 3469
    const/4 v0, 0x0

    .line 3472
    :goto_0
    return v0

    .line 3471
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3472
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lkvo;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lkvo;->b(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    .line 3477
    if-nez p1, :cond_0

    .line 3478
    const/4 v0, 0x0

    .line 3510
    :goto_0
    return v0

    .line 3486
    :cond_0
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    .line 3487
    const-wide/16 v4, -0x1

    .line 3488
    const/4 v0, 0x0

    move v6, v0

    move-wide v8, v4

    :goto_1
    const/4 v0, 0x3

    if-ge v6, v0, :cond_5

    .line 3489
    const-wide/16 v2, 0x0

    .line 3490
    array-length v10, v7

    const/4 v0, 0x0

    move-wide v4, v2

    move v2, v0

    :goto_2
    if-ge v2, v10, :cond_4

    aget-object v3, v7, v2

    .line 3492
    iget v0, v3, Lkvo;->b:I

    .line 3494
    iget-object v11, v3, Lkvo;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3495
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3496
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    :goto_4
    if-eqz v0, :cond_2

    .line 3497
    invoke-virtual {v3, v0}, Lkvo;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v12

    .line 3498
    if-eqz v12, :cond_1

    iget-object v13, p0, Lcom/google/common/collect/MapMakerInternalMap;->f:Lkng;

    invoke-virtual {v13, p1, v12}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3499
    const/4 v0, 0x1

    goto :goto_0

    .line 3496
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_4

    .line 3495
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 3503
    :cond_3
    iget v0, v3, Lkvo;->c:I

    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 3490
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 3505
    :cond_4
    cmp-long v0, v4, v8

    if-eqz v0, :cond_5

    .line 3488
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v8, v4

    goto :goto_1

    .line 3510
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->j:J

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
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->g:Lkvr;

    sget-object v1, Lkvr;->a:Lkvr;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
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
    .line 3600
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->t:Ljava/util/Set;

    .line 3601
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkvc;

    invoke-direct {v0, p0}, Lkvc;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->t:Ljava/util/Set;

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->h:Lkvr;

    sget-object v1, Lkvr;->a:Lkvr;

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
    .line 3447
    if-nez p1, :cond_0

    .line 3448
    const/4 v0, 0x0

    .line 3451
    :goto_0
    return-object v0

    .line 3450
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3451
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lkvo;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lkvo;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkun;

    if-nez v0, :cond_0

    .line 1965
    return-void
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3413
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    move v0, v1

    move-wide v2, v4

    .line 3414
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3415
    aget-object v7, v6, v0

    iget v7, v7, Lkvo;->b:I

    if-eqz v7, :cond_1

    .line 3432
    :cond_0
    :goto_1
    return v1

    .line 3418
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lkvo;->c:I

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 3414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3421
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3422
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3423
    aget-object v7, v6, v0

    iget v7, v7, Lkvo;->b:I

    if-nez v7, :cond_0

    .line 3426
    aget-object v7, v6, v0

    iget v7, v7, Lkvo;->c:I

    int-to-long v8, v7

    sub-long/2addr v2, v8

    .line 3422
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3428
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3432
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
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
    .line 3584
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->r:Ljava/util/Set;

    .line 3585
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkvl;

    invoke-direct {v0, p0}, Lkvl;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->r:Ljava/util/Set;

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
    .line 3515
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3516
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3517
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3518
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lkvo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lkvo;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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
    .line 3531
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

    .line 3532
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3534
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
    .line 3523
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3524
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3525
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3526
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lkvo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lkvo;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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
    .line 3538
    if-nez p1, :cond_0

    .line 3539
    const/4 v0, 0x0

    .line 3542
    :goto_0
    return-object v0

    .line 3541
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3542
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lkvo;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lkvo;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3547
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3548
    :cond_0
    const/4 v0, 0x0

    .line 3551
    :goto_0
    return v0

    .line 3550
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3551
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lkvo;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lkvo;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

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
    .line 3567
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3568
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3569
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3570
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lkvo;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lkvo;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

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
    .line 3556
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3557
    invoke-static {p3}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3558
    if-nez p2, :cond_0

    .line 3559
    const/4 v0, 0x0

    .line 3562
    :goto_0
    return v0

    .line 3561
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3562
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lkvo;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lkvo;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 3437
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lkvo;

    .line 3438
    const-wide/16 v2, 0x0

    .line 3439
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 3440
    aget-object v4, v1, v0

    iget v4, v4, Lkvo;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 3439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3442
    :cond_0
    invoke-static {v2, v3}, Laal;->e(J)I

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
    .line 3592
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->s:Ljava/util/Collection;

    .line 3593
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkwc;

    invoke-direct {v0, p0}, Lkwc;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->s:Ljava/util/Collection;

    goto :goto_0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 3941
    new-instance v1, Lkvp;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->g:Lkvr;

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->h:Lkvr;

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap;->e:Lkng;

    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap;->f:Lkng;

    iget-wide v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->k:J

    iget-wide v8, p0, Lcom/google/common/collect/MapMakerInternalMap;->j:J

    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap;->i:I

    iget v11, p0, Lcom/google/common/collect/MapMakerInternalMap;->d:I

    iget-object v12, p0, Lcom/google/common/collect/MapMakerInternalMap;->m:Lavb;

    move-object v13, p0

    invoke-direct/range {v1 .. v13}, Lkvp;-><init>(Lkvr;Lkvr;Lkng;Lkng;JJIILavb;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v1
.end method
