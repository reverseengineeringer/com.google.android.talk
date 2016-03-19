.class final Lkqt;
.super Lkqn;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkqn;",
        "Ljava/util/SortedMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field c:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lkqm;


# direct methods
.method constructor <init>(Lkqm;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1403
    iput-object p1, p0, Lkqt;->d:Lkqm;

    .line 1404
    invoke-direct {p0, p1, p2}, Lkqn;-><init>(Lkqm;Ljava/util/Map;)V

    .line 1405
    return-void
.end method

.method private d()Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1453
    new-instance v1, Lkqu;

    iget-object v2, p0, Lkqt;->d:Lkqm;

    .line 8408
    iget-object v0, p0, Lkqt;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1453
    invoke-direct {v1, v2, v0}, Lkqu;-><init>(Lkqm;Ljava/util/SortedMap;)V

    return-object v1
.end method


# virtual methods
.method synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1401
    invoke-direct {p0}, Lkqt;->d()Ljava/util/SortedSet;

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
    .line 2408
    iget-object v0, p0, Lkqt;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1413
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3408
    iget-object v0, p0, Lkqt;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1418
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1428
    new-instance v1, Lkqt;

    iget-object v2, p0, Lkqt;->d:Lkqm;

    .line 5408
    iget-object v0, p0, Lkqt;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1428
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lkqt;-><init>(Lkqm;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 8447
    iget-object v0, p0, Lkqt;->c:Ljava/util/SortedSet;

    .line 8448
    if-nez v0, :cond_0

    invoke-direct {p0}, Lkqt;->d()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lkqt;->c:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 4408
    iget-object v0, p0, Lkqt;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1423
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1433
    new-instance v1, Lkqt;

    iget-object v2, p0, Lkqt;->d:Lkqm;

    .line 6408
    iget-object v0, p0, Lkqt;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1433
    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lkqt;-><init>(Lkqm;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1438
    new-instance v1, Lkqt;

    iget-object v2, p0, Lkqt;->d:Lkqm;

    .line 7408
    iget-object v0, p0, Lkqt;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1438
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lkqt;-><init>(Lkqm;Ljava/util/SortedMap;)V

    return-object v1
.end method
