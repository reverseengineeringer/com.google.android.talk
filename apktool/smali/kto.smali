.class public final Lkto;
.super Lktt;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lktt",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lkto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkto",
            "<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final transient b:Lkxu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkxu",
            "<TK;>;"
        }
    .end annotation
.end field

.field final transient c:Lksf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksf",
            "<TV;>;"
        }
    .end annotation
.end field

.field private transient f:Lkto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkto",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12147
    sget-object v0, Lkxf;->a:Lkxf;

    .line 64
    sput-object v0, Lkto;->d:Ljava/util/Comparator;

    .line 66
    new-instance v0, Lkto;

    .line 13147
    sget-object v1, Lkxf;->a:Lkxf;

    .line 68
    invoke-static {v1}, Lktu;->a(Ljava/util/Comparator;)Lkxu;

    move-result-object v1

    .line 14064
    sget-object v2, Lkxr;->a:Lksf;

    .line 68
    invoke-direct {v0, v1, v2}, Lkto;-><init>(Lkxu;Lksf;)V

    sput-object v0, Lkto;->e:Lkto;

    .line 66
    return-void
.end method

.method private constructor <init>(Lkxu;Lksf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkxu",
            "<TK;>;",
            "Lksf",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 510
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkto;-><init>(Lkxu;Lksf;Lkto;)V

    .line 511
    return-void
.end method

.method private constructor <init>(Lkxu;Lksf;Lkto;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkxu",
            "<TK;>;",
            "Lksf",
            "<TV;>;",
            "Lkto",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 516
    invoke-direct {p0}, Lktt;-><init>()V

    .line 517
    iput-object p1, p0, Lkto;->b:Lkxu;

    .line 518
    iput-object p2, p0, Lkto;->c:Lksf;

    .line 519
    iput-object p3, p0, Lkto;->f:Lkto;

    .line 520
    return-void
.end method

.method private a(II)Lkto;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkto",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 618
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lkto;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 624
    :goto_0
    return-object p0

    .line 620
    :cond_0
    if-ne p1, p2, :cond_1

    .line 621
    invoke-virtual {p0}, Lkto;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lkto;->a(Ljava/util/Comparator;)Lkto;

    move-result-object p0

    goto :goto_0

    .line 623
    :cond_1
    new-instance v0, Lkto;

    iget-object v1, p0, Lkto;->b:Lkxu;

    .line 624
    invoke-virtual {v1, p1, p2}, Lkxu;->a(II)Lkxu;

    move-result-object v1

    iget-object v2, p0, Lkto;->c:Lksf;

    invoke-virtual {v2, p1, p2}, Lksf;->a(II)Lksf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkto;-><init>(Lkxu;Lksf;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Z)Lkto;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lkto",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 657
    const/4 v0, 0x0

    iget-object v1, p0, Lkto;->b:Lkxu;

    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lkxu;->e(Ljava/lang/Object;Z)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lkto;->a(II)Lkto;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lkto;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lkto",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 696
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-static {p3}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-virtual {p0}, Lkto;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expected fromKey <= toKey but %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p3, v4, v1

    .line 698
    invoke-static {v0, v3, v4}, Lfii;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 703
    invoke-direct {p0, p3, p4}, Lkto;->a(Ljava/lang/Object;Z)Lkto;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lkto;->b(Ljava/lang/Object;Z)Lkto;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 699
    goto :goto_0
.end method

.method static a(Ljava/util/Comparator;)Lkto;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lkto",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1147
    sget-object v0, Lkxf;->a:Lkxf;

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2086
    sget-object v0, Lkto;->e:Lkto;

    .line 75
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v0, Lkto;

    .line 75
    invoke-static {p0}, Lktu;->a(Ljava/util/Comparator;)Lkxu;

    move-result-object v1

    .line 3064
    sget-object v2, Lkxr;->a:Lksf;

    .line 75
    invoke-direct {v0, v1, v2}, Lkto;-><init>(Lkxu;Lksf;)V

    goto :goto_0
.end method

.method static a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lkto;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;TK;TV;)",
            "Lkto",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v1, Lkto;

    new-instance v2, Lkxu;

    .line 101
    invoke-static {p1}, Lksf;->a(Ljava/lang/Object;)Lksf;

    move-result-object v3

    invoke-static {p0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-direct {v2, v3, v0}, Lkxu;-><init>(Lksf;Ljava/util/Comparator;)V

    .line 102
    invoke-static {p2}, Lksf;->a(Ljava/lang/Object;)Lksf;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lkto;-><init>(Lkxu;Lksf;)V

    return-object v1
.end method

.method static a(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lkto;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;Z[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;I)",
            "Lkto",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 318
    packed-switch p3, :pswitch_data_0

    .line 325
    new-array v5, p3, [Ljava/lang/Object;

    .line 326
    new-array v6, p3, [Ljava/lang/Object;

    .line 338
    invoke-static {p0}, Lkxj;->a(Ljava/util/Comparator;)Lkxj;

    move-result-object v0

    invoke-virtual {v0}, Lkxj;->d()Lkxj;

    move-result-object v0

    invoke-static {p2, v2, p3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 339
    aget-object v0, p2, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 340
    aput-object v0, v5, v2

    .line 341
    aget-object v3, p2, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v2

    move v3, v1

    .line 342
    :goto_0
    if-ge v3, p3, :cond_1

    .line 343
    aget-object v4, p2, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 344
    aget-object v7, p2, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 345
    invoke-static {v4, v7}, Laal;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    aput-object v4, v5, v3

    .line 347
    aput-object v7, v6, v3

    .line 349
    invoke-interface {p0, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    const-string v7, "key"

    add-int/lit8 v8, v3, -0x1

    aget-object v8, p2, v8

    aget-object v9, p2, v3

    .line 348
    invoke-static {v0, v7, v8, v9}, Lkto;->a(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 342
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v4

    goto :goto_0

    .line 320
    :pswitch_0
    invoke-static {p0}, Lkto;->a(Ljava/util/Comparator;)Lkto;

    move-result-object v0

    .line 353
    :goto_2
    return-object v0

    .line 322
    :pswitch_1
    aget-object v0, p2, v2

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aget-object v1, p2, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 322
    invoke-static {p0, v0, v1}, Lkto;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lkto;

    move-result-object v0

    goto :goto_2

    :cond_0
    move v0, v2

    .line 349
    goto :goto_1

    .line 353
    :cond_1
    new-instance v0, Lkto;

    new-instance v1, Lkxu;

    new-instance v2, Lkxr;

    invoke-direct {v2, v5}, Lkxr;-><init>([Ljava/lang/Object;)V

    invoke-direct {v1, v2, p0}, Lkxu;-><init>(Lksf;Ljava/util/Comparator;)V

    new-instance v2, Lkxr;

    invoke-direct {v2, v6}, Lkxr;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lkto;-><init>(Lkxu;Lksf;)V

    goto :goto_2

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Ljava/lang/Object;Z)Lkto;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lkto",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lkto;->b:Lkxu;

    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lkxu;->f(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lkto;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lkto;->a(II)Lkto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c()Lkrz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkrz",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lkto;->c:Lksf;

    return-object v0
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 761
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkto;->b(Ljava/lang/Object;Z)Lkto;

    move-result-object v0

    invoke-virtual {v0}, Lkto;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lkto;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lkwj;->b(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 4584
    iget-object v0, p0, Lkto;->b:Lkxu;

    .line 604
    invoke-virtual {v0}, Lktu;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lkto;->b:Lkxu;

    invoke-virtual {v0}, Lkxu;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkto;->c:Lksf;

    invoke-virtual {v0}, Lksf;->e()Z

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

.method public synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 9837
    iget-object v0, p0, Lkto;->b:Lkxu;

    invoke-virtual {v0}, Lkxu;->b()Lktu;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 3

    .prologue
    .line 11817
    iget-object v0, p0, Lkto;->f:Lkto;

    .line 11818
    if-nez v0, :cond_0

    .line 11819
    invoke-virtual {p0}, Lkto;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11820
    invoke-virtual {p0}, Lkto;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lkxj;->a(Ljava/util/Comparator;)Lkxj;

    move-result-object v0

    invoke-virtual {v0}, Lkxj;->c()Lkxj;

    move-result-object v0

    invoke-static {v0}, Lkto;->a(Ljava/util/Comparator;)Lkto;

    move-result-object v0

    .line 11824
    :cond_0
    :goto_0
    return-object v0

    .line 11822
    :cond_1
    new-instance v1, Lkto;

    iget-object v0, p0, Lkto;->b:Lkxu;

    .line 11824
    invoke-virtual {v0}, Lkxu;->b()Lktu;

    move-result-object v0

    check-cast v0, Lkxu;

    iget-object v2, p0, Lkto;->c:Lksf;

    invoke-virtual {v2}, Lksf;->d()Lksf;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lkto;-><init>(Lkxu;Lksf;Lkto;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public e()Lkth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkth",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 544
    invoke-super {p0}, Lktt;->e()Lkth;

    move-result-object v0

    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lkto;->e()Lkth;

    move-result-object v0

    return-object v0
.end method

.method f()Lkth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkth",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p0}, Lkto;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4051
    sget-object v0, Lkxt;->a:Lkxt;

    .line 576
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lktp;

    invoke-direct {v0, p0}, Lktp;-><init>(Lkto;)V

    goto :goto_0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 781
    invoke-virtual {p0}, Lkto;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkto;->e()Lkth;

    move-result-object v0

    invoke-virtual {v0}, Lkth;->f()Lksf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 5584
    iget-object v0, p0, Lkto;->b:Lkxu;

    .line 609
    invoke-virtual {v0}, Lktu;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 751
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkto;->a(Ljava/lang/Object;Z)Lkto;

    move-result-object v0

    invoke-virtual {v0}, Lkto;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 756
    invoke-virtual {p0, p1}, Lkto;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lkwj;->b(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lkth;
    .locals 1

    .prologue
    .line 7584
    iget-object v0, p0, Lkto;->b:Lkxu;

    .line 56
    return-object v0
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
    .line 529
    iget-object v0, p0, Lkto;->b:Lkxu;

    invoke-virtual {v0, p1}, Lkxu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 530
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lkto;->c:Lksf;

    invoke-virtual {v1, v0}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lkto;->a(Ljava/lang/Object;Z)Lkto;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 9640
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkto;->a(Ljava/lang/Object;Z)Lkto;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 771
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkto;->b(Ljava/lang/Object;Z)Lkto;

    move-result-object v0

    invoke-virtual {v0}, Lkto;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 776
    invoke-virtual {p0, p1}, Lkto;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lkwj;->b(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 8584
    iget-object v0, p0, Lkto;->b:Lkxu;

    .line 56
    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 786
    invoke-virtual {p0}, Lkto;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkto;->e()Lkth;

    move-result-object v0

    invoke-virtual {v0}, Lkth;->f()Lksf;

    move-result-object v0

    invoke-virtual {p0}, Lkto;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 6584
    iget-object v0, p0, Lkto;->b:Lkxu;

    .line 614
    invoke-virtual {v0}, Lktu;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 741
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkto;->a(Ljava/lang/Object;Z)Lkto;

    move-result-object v0

    invoke-virtual {v0}, Lkto;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Lkto;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lkwj;->b(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 10832
    iget-object v0, p0, Lkto;->b:Lkxu;

    .line 56
    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 798
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 810
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lkto;->c:Lksf;

    invoke-virtual {v0}, Lksf;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lkto;->a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lkto;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .prologue
    .line 9675
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lkto;->a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lkto;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lkto;->b(Ljava/lang/Object;Z)Lkto;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 8718
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkto;->b(Ljava/lang/Object;Z)Lkto;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lkto;->c()Lkrz;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 866
    new-instance v0, Lkts;

    invoke-direct {v0, p0}, Lkts;-><init>(Lkto;)V

    return-object v0
.end method
