.class abstract Lgcf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field b:Lgch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgch;"
        }
    .end annotation
.end field

.field c:Lgci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgci;"
        }
    .end annotation
.end field

.field d:Lgck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgck;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_3

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Ljava/lang/Object;)I
.end method

.method protected abstract a(II)Ljava/lang/Object;
.end method

.method protected abstract a(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method protected abstract a(I)V
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lgcf;->a()I

    move-result v2

    array-length v0, p1

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1, p2}, Lgcf;->a(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    array-length v1, v0

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    aput-object v1, v0, v2

    :cond_1
    return-object v0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method protected abstract b(Ljava/lang/Object;)I
.end method

.method protected abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public b(I)[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lgcf;->a()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lgcf;->a(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected abstract c()V
.end method

.method public d()Ljava/util/Set;
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

    iget-object v0, p0, Lgcf;->b:Lgch;

    if-nez v0, :cond_0

    new-instance v0, Lgch;

    invoke-direct {v0, p0}, Lgch;-><init>(Lgcf;)V

    iput-object v0, p0, Lgcf;->b:Lgch;

    :cond_0
    iget-object v0, p0, Lgcf;->b:Lgch;

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lgcf;->c:Lgci;

    if-nez v0, :cond_0

    new-instance v0, Lgci;

    invoke-direct {v0, p0}, Lgci;-><init>(Lgcf;)V

    iput-object v0, p0, Lgcf;->c:Lgci;

    :cond_0
    iget-object v0, p0, Lgcf;->c:Lgci;

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lgcf;->d:Lgck;

    if-nez v0, :cond_0

    new-instance v0, Lgck;

    invoke-direct {v0, p0}, Lgck;-><init>(Lgcf;)V

    iput-object v0, p0, Lgcf;->d:Lgck;

    :cond_0
    iget-object v0, p0, Lgcf;->d:Lgck;

    return-object v0
.end method
