.class public abstract enum Lkus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkus;

.field public static final enum b:Lkus;

.field public static final enum c:Lkus;

.field public static final enum d:Lkus;

.field public static final enum e:Lkus;

.field public static final enum f:Lkus;

.field public static final enum g:Lkus;

.field public static final enum h:Lkus;

.field static final i:[[Lkus;

.field private static final synthetic j:[Lkus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 356
    new-instance v0, Lkut;

    const-string v1, "STRONG"

    invoke-direct {v0, v1}, Lkut;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkus;->a:Lkus;

    .line 363
    new-instance v0, Lkuu;

    const-string v1, "STRONG_EXPIRABLE"

    invoke-direct {v0, v1}, Lkuu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkus;->b:Lkus;

    .line 378
    new-instance v0, Lkuv;

    const-string v1, "STRONG_EVICTABLE"

    invoke-direct {v0, v1}, Lkuv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkus;->c:Lkus;

    .line 393
    new-instance v0, Lkuw;

    const-string v1, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1}, Lkuw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkus;->d:Lkus;

    .line 410
    new-instance v0, Lkux;

    const-string v1, "WEAK"

    invoke-direct {v0, v1}, Lkux;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkus;->e:Lkus;

    .line 417
    new-instance v0, Lkuy;

    const-string v1, "WEAK_EXPIRABLE"

    invoke-direct {v0, v1}, Lkuy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkus;->f:Lkus;

    .line 432
    new-instance v0, Lkuz;

    const-string v1, "WEAK_EVICTABLE"

    invoke-direct {v0, v1}, Lkuz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkus;->g:Lkus;

    .line 447
    new-instance v0, Lkva;

    const-string v1, "WEAK_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1}, Lkva;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkus;->h:Lkus;

    .line 355
    const/16 v0, 0x8

    new-array v0, v0, [Lkus;

    sget-object v1, Lkus;->a:Lkus;

    aput-object v1, v0, v3

    sget-object v1, Lkus;->b:Lkus;

    aput-object v1, v0, v4

    sget-object v1, Lkus;->c:Lkus;

    aput-object v1, v0, v5

    sget-object v1, Lkus;->d:Lkus;

    aput-object v1, v0, v6

    sget-object v1, Lkus;->e:Lkus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lkus;->f:Lkus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkus;->g:Lkus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkus;->h:Lkus;

    aput-object v2, v0, v1

    sput-object v0, Lkus;->j:[Lkus;

    .line 475
    new-array v0, v6, [[Lkus;

    new-array v1, v7, [Lkus;

    sget-object v2, Lkus;->a:Lkus;

    aput-object v2, v1, v3

    sget-object v2, Lkus;->b:Lkus;

    aput-object v2, v1, v4

    sget-object v2, Lkus;->c:Lkus;

    aput-object v2, v1, v5

    sget-object v2, Lkus;->d:Lkus;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v3, [Lkus;

    aput-object v1, v0, v4

    new-array v1, v7, [Lkus;

    sget-object v2, Lkus;->e:Lkus;

    aput-object v2, v1, v3

    sget-object v2, Lkus;->f:Lkus;

    aput-object v2, v1, v4

    sget-object v2, Lkus;->g:Lkus;

    aput-object v2, v1, v5

    sget-object v2, Lkus;->h:Lkus;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lkus;->i:[[Lkus;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lkvr;ZZ)Lkus;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 483
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 484
    sget-object v1, Lkus;->i:[[Lkus;

    invoke-virtual {p0}, Lkvr;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    move v1, v0

    .line 483
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lkus;
    .locals 1

    .prologue
    .line 355
    const-class v0, Lkus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkus;

    return-object v0
.end method

.method public static values()[Lkus;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lkus;->j:[Lkus;

    invoke-virtual {v0}, [Lkus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkus;

    return-object v0
.end method


# virtual methods
.method a(Lkvo;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkvo",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 507
    invoke-interface {p2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lkus;->a(Lkvo;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Lkvo;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkvo",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
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
    .line 514
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setExpirationTime(J)V

    .line 516
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 517
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 519
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 520
    return-void
.end method

.method b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
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
    .line 526
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 527
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 529
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->e(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 530
    return-void
.end method
