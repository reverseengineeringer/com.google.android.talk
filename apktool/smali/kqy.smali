.class final Lkqy;
.super Lkqw;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkqw;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lkqx;


# direct methods
.method constructor <init>(Lkqx;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lkqy;->d:Lkqx;

    invoke-direct {p0, p1}, Lkqw;-><init>(Lkqv;)V

    return-void
.end method

.method public constructor <init>(Lkqx;I)V
    .locals 1

    .prologue
    .line 870
    iput-object p1, p0, Lkqy;->d:Lkqx;

    .line 871
    invoke-virtual {p1}, Lkqx;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkqw;-><init>(Lkqv;Ljava/util/Iterator;)V

    .line 872
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 905
    iget-object v0, p0, Lkqy;->d:Lkqx;

    invoke-virtual {v0}, Lkqx;->isEmpty()Z

    move-result v1

    .line 6875
    invoke-virtual {p0}, Lkqy;->b()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    .line 906
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 907
    iget-object v0, p0, Lkqy;->d:Lkqx;

    iget-object v0, v0, Lkqx;->g:Lkqm;

    invoke-static {v0}, Lkqm;->b(Lkqm;)I

    .line 908
    if-eqz v1, :cond_0

    .line 909
    iget-object v0, p0, Lkqy;->d:Lkqx;

    invoke-virtual {v0}, Lkqx;->d()V

    .line 911
    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 1875
    invoke-virtual {p0}, Lkqy;->b()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    .line 880
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 3875
    invoke-virtual {p0}, Lkqy;->b()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    .line 890
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 2875
    invoke-virtual {p0}, Lkqy;->b()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    .line 885
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 4875
    invoke-virtual {p0}, Lkqy;->b()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    .line 895
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 5875
    invoke-virtual {p0}, Lkqy;->b()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    .line 900
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 901
    return-void
.end method
