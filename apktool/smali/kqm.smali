.class abstract Lkqm;
.super Lkrc;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkrc",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field transient b:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lkrc;-><init>()V

    .line 124
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lfii;->a(Z)V

    .line 125
    iput-object p1, p0, Lkqm;->a:Ljava/util/Map;

    .line 126
    return-void
.end method

.method static synthetic a(Lkqm;)I
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lkqm;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lkqm;->b:I

    return v0
.end method

.method static synthetic b(Lkqm;)I
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lkqm;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkqm;->b:I

    return v0
.end method


# virtual methods
.method a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 320
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Lkra;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lkra;-><init>(Lkqm;Ljava/lang/Object;Ljava/util/SortedSet;Lkqv;)V

    .line 327
    :goto_0
    return-object v0

    .line 322
    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 323
    new-instance v0, Lkqz;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lkqz;-><init>(Lkqm;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    .line 324
    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 325
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2, v1}, Lkqm;->a(Ljava/lang/Object;Ljava/util/List;Lkqv;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_2
    new-instance v0, Lkqv;

    invoke-direct {v0, p0, p1, p2, v1}, Lkqv;-><init>(Lkqm;Ljava/lang/Object;Ljava/util/Collection;Lkqv;)V

    goto :goto_0
.end method

.method a(Ljava/lang/Object;Ljava/util/List;Lkqv;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lkqv;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 332
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Lkqs;

    invoke-direct {v0, p0, p1, p2, p3}, Lkqs;-><init>(Lkqm;Ljava/lang/Object;Ljava/util/List;Lkqv;)V

    .line 334
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkqx;

    invoke-direct {v0, p0, p1, p2, p3}, Lkqx;-><init>(Lkqm;Ljava/lang/Object;Ljava/util/List;Lkqv;)V

    goto :goto_0
.end method

.method final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    iput-object p1, p0, Lkqm;->a:Ljava/util/Map;

    .line 131
    iput v2, p0, Lkqm;->b:I

    .line 132
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 133
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lfii;->a(Z)V

    .line 134
    iget v1, p0, Lkqm;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lkqm;->b:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 133
    goto :goto_1

    .line 136
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v0, p0, Lkqm;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 194
    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lkqm;->d()Ljava/util/Collection;

    move-result-object v0

    .line 196
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget v2, p0, Lkqm;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkqm;->b:I

    .line 198
    iget-object v2, p0, Lkqm;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 207
    :goto_0
    return v0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "New Collection violated the Collection spec"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 203
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget v0, p0, Lkqm;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkqm;->b:I

    move v0, v1

    .line 205
    goto :goto_0

    .line 207
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lkqm;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 306
    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lkqm;->d()Ljava/util/Collection;

    move-result-object v0

    .line 309
    :cond_0
    invoke-virtual {p0, p1, v0}, Lkqm;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method abstract c()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lkqm;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lkqm;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lkqm;->a:Ljava/util/Map;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lkqm;->b:I

    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lkqm;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 290
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lkqm;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lkqm;->b:I

    .line 294
    return-void
.end method

.method h()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 930
    iget-object v0, p0, Lkqm;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 931
    new-instance v1, Lkqu;

    iget-object v0, p0, Lkqm;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lkqu;-><init>(Lkqm;Ljava/util/SortedMap;)V

    move-object v0, v1

    .line 932
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkqq;

    iget-object v1, p0, Lkqm;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lkqq;-><init>(Lkqm;Ljava/util/Map;)V

    goto :goto_0
.end method

.method i()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v0, p0, Lkqm;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1253
    new-instance v1, Lkqt;

    iget-object v0, p0, Lkqm;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lkqt;-><init>(Lkqm;Ljava/util/SortedMap;)V

    move-object v0, v1

    .line 1254
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkqn;

    iget-object v1, p0, Lkqm;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lkqn;-><init>(Lkqm;Ljava/util/Map;)V

    goto :goto_0
.end method
