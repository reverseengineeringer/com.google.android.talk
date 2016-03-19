.class final Lkra;
.super Lkqv;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkqv;",
        "Ljava/util/SortedSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkqm;


# direct methods
.method constructor <init>(Lkqm;Ljava/lang/Object;Ljava/util/SortedSet;Lkqv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/SortedSet",
            "<TV;>;",
            "Lkqv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 645
    iput-object p1, p0, Lkra;->a:Lkqm;

    .line 646
    invoke-direct {p0, p1, p2, p3, p4}, Lkqv;-><init>(Lkqm;Ljava/lang/Object;Ljava/util/Collection;Lkqv;)V

    .line 647
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 1650
    invoke-virtual {p0}, Lkra;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 655
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 660
    invoke-virtual {p0}, Lkra;->a()V

    .line 2650
    invoke-virtual {p0}, Lkra;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 661
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 672
    invoke-virtual {p0}, Lkra;->a()V

    .line 673
    new-instance v1, Lkra;

    iget-object v2, p0, Lkra;->a:Lkqm;

    .line 674
    invoke-virtual {p0}, Lkra;->c()Ljava/lang/Object;

    move-result-object v3

    .line 4650
    invoke-virtual {p0}, Lkra;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 675
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 676
    invoke-virtual {p0}, Lkra;->f()Lkqv;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lkra;-><init>(Lkqm;Ljava/lang/Object;Ljava/util/SortedSet;Lkqv;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lkra;->f()Lkqv;

    move-result-object p0

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 666
    invoke-virtual {p0}, Lkra;->a()V

    .line 3650
    invoke-virtual {p0}, Lkra;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 667
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p0}, Lkra;->a()V

    .line 682
    new-instance v1, Lkra;

    iget-object v2, p0, Lkra;->a:Lkqm;

    .line 683
    invoke-virtual {p0}, Lkra;->c()Ljava/lang/Object;

    move-result-object v3

    .line 5650
    invoke-virtual {p0}, Lkra;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 684
    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 685
    invoke-virtual {p0}, Lkra;->f()Lkqv;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lkra;-><init>(Lkqm;Ljava/lang/Object;Ljava/util/SortedSet;Lkqv;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lkra;->f()Lkqv;

    move-result-object p0

    goto :goto_0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 690
    invoke-virtual {p0}, Lkra;->a()V

    .line 691
    new-instance v1, Lkra;

    iget-object v2, p0, Lkra;->a:Lkqm;

    .line 692
    invoke-virtual {p0}, Lkra;->c()Ljava/lang/Object;

    move-result-object v3

    .line 6650
    invoke-virtual {p0}, Lkra;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 693
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 694
    invoke-virtual {p0}, Lkra;->f()Lkqv;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lkra;-><init>(Lkqm;Ljava/lang/Object;Ljava/util/SortedSet;Lkqv;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lkra;->f()Lkqv;

    move-result-object p0

    goto :goto_0
.end method
