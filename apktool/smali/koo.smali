.class public abstract enum Lkoo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkoo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkoo;

.field public static final enum b:Lkoo;

.field public static final enum c:Lkoo;

.field public static final enum d:Lkoo;

.field public static final enum e:Lkoo;

.field public static final enum f:Lkoo;

.field public static final enum g:Lkoo;

.field public static final enum h:Lkoo;

.field static final i:[Lkoo;

.field private static final synthetic j:[Lkoo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 446
    new-instance v0, Lkop;

    const-string v1, "STRONG"

    invoke-direct {v0, v1}, Lkop;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkoo;->a:Lkoo;

    .line 453
    new-instance v0, Lkoq;

    const-string v1, "STRONG_ACCESS"

    invoke-direct {v0, v1}, Lkoq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkoo;->b:Lkoo;

    .line 468
    new-instance v0, Lkor;

    const-string v1, "STRONG_WRITE"

    invoke-direct {v0, v1}, Lkor;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkoo;->c:Lkoo;

    .line 483
    new-instance v0, Lkos;

    const-string v1, "STRONG_ACCESS_WRITE"

    invoke-direct {v0, v1}, Lkos;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkoo;->d:Lkoo;

    .line 500
    new-instance v0, Lkot;

    const-string v1, "WEAK"

    invoke-direct {v0, v1}, Lkot;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkoo;->e:Lkoo;

    .line 507
    new-instance v0, Lkou;

    const-string v1, "WEAK_ACCESS"

    invoke-direct {v0, v1}, Lkou;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkoo;->f:Lkoo;

    .line 522
    new-instance v0, Lkov;

    const-string v1, "WEAK_WRITE"

    invoke-direct {v0, v1}, Lkov;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkoo;->g:Lkoo;

    .line 537
    new-instance v0, Lkow;

    const-string v1, "WEAK_ACCESS_WRITE"

    invoke-direct {v0, v1}, Lkow;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkoo;->h:Lkoo;

    .line 445
    const/16 v0, 0x8

    new-array v0, v0, [Lkoo;

    sget-object v1, Lkoo;->a:Lkoo;

    aput-object v1, v0, v3

    sget-object v1, Lkoo;->b:Lkoo;

    aput-object v1, v0, v4

    sget-object v1, Lkoo;->c:Lkoo;

    aput-object v1, v0, v5

    sget-object v1, Lkoo;->d:Lkoo;

    aput-object v1, v0, v6

    sget-object v1, Lkoo;->e:Lkoo;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lkoo;->f:Lkoo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkoo;->g:Lkoo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkoo;->h:Lkoo;

    aput-object v2, v0, v1

    sput-object v0, Lkoo;->j:[Lkoo;

    .line 564
    const/16 v0, 0x8

    new-array v0, v0, [Lkoo;

    sget-object v1, Lkoo;->a:Lkoo;

    aput-object v1, v0, v3

    sget-object v1, Lkoo;->b:Lkoo;

    aput-object v1, v0, v4

    sget-object v1, Lkoo;->c:Lkoo;

    aput-object v1, v0, v5

    sget-object v1, Lkoo;->d:Lkoo;

    aput-object v1, v0, v6

    sget-object v1, Lkoo;->e:Lkoo;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lkoo;->f:Lkoo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkoo;->g:Lkoo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkoo;->h:Lkoo;

    aput-object v2, v0, v1

    sput-object v0, Lkoo;->i:[Lkoo;

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
    .line 445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkoo;
    .locals 1

    .prologue
    .line 445
    const-class v0, Lkoo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkoo;

    return-object v0
.end method

.method public static values()[Lkoo;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lkoo;->j:[Lkoo;

    invoke-virtual {v0}, [Lkoo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkoo;

    return-object v0
.end method


# virtual methods
.method a(Lkpf;Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkpf",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 597
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lkoo;->a(Lkpf;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Lkpf;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkpf",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 2
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
    .line 604
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getAccessTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 606
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 607
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3018
    sget-object v0, Lkpe;->a:Lkpe;

    .line 2933
    invoke-interface {p1, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setNextInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 2934
    invoke-interface {p1, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setPreviousInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 610
    return-void
.end method

.method b(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 2
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
    .line 616
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setWriteTime(J)V

    .line 618
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getPreviousInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 619
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 4018
    sget-object v0, Lkpe;->a:Lkpe;

    .line 3946
    invoke-interface {p1, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setNextInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3947
    invoke-interface {p1, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setPreviousInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 622
    return-void
.end method
