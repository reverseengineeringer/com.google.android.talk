.class public abstract Lktu;
.super Lktx;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lkyc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lktx",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;",
        "Lkyc",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field transient b:Lktu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lktu",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0}, Lktx;-><init>()V

    .line 530
    iput-object p1, p0, Lktu;->a:Ljava/util/Comparator;

    .line 531
    return-void
.end method

.method static a(Ljava/util/Comparator;)Lkxu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lkxu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1147
    sget-object v0, Lkxf;->a:Lkxf;

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lkxu;->c:Lkxu;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkxu;

    .line 2064
    sget-object v1, Lkxr;->a:Lksf;

    .line 65
    invoke-direct {v0, v1, p0}, Lkxu;-><init>(Lksf;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 773
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)I
.end method

.method a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lktu;->a:Ljava/util/Comparator;

    .line 2524
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 515
    return v0
.end method

.method abstract a(Ljava/lang/Object;Z)Lktu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lktu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation
.end method

.method public abstract a()Lkyp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<TE;>;"
        }
    .end annotation
.end method

.method public b()Lktu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lktu;->b:Lktu;

    .line 725
    if-nez v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lktu;->d()Lktu;

    move-result-object v0

    iput-object v0, p0, Lktu;->b:Lktu;

    .line 727
    iput-object p0, v0, Lktu;->b:Lktu;

    .line 729
    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Lktu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 588
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lktu;->b(Ljava/lang/Object;ZLjava/lang/Object;Z)Lktu;

    move-result-object v0

    return-object v0
.end method

.method abstract b(Ljava/lang/Object;Z)Lktu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/Object;ZLjava/lang/Object;Z)Lktu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 598
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-static {p3}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lktu;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lfii;->a(Z)V

    .line 601
    invoke-virtual {p0, p1, p2, p3, p4}, Lktu;->a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lktu;

    move-result-object v0

    return-object v0

    .line 600
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)Lktu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 561
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lktu;->c(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;Z)Lktu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 570
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lktu;->a(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lkyp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<TE;>;"
        }
    .end annotation
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 664
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lktu;->d(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    invoke-static {v0}, Laal;->c(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lktu;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method d()Lktu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 734
    new-instance v0, Lkrl;

    invoke-direct {v0, p0}, Lkrl;-><init>(Lktu;)V

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Lktu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 617
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lktu;->d(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;Z)Lktu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 626
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lktu;->b(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lktu;->c()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method public synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lktu;->b()Lktu;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p0}, Lktu;->a()Lkyp;

    move-result-object v0

    invoke-virtual {v0}, Lkyp;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 655
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lktu;->c(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    invoke-virtual {v0}, Lktu;->c()Lkyp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkty;->b(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lktu;->c(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lktu;->c(Ljava/lang/Object;)Lktu;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 673
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lktu;->d(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    invoke-static {v0}, Laal;->c(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lktu;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 683
    invoke-virtual {p0}, Lktu;->c()Lkyp;

    move-result-object v0

    invoke-virtual {v0}, Lkyp;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lktu;->c(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    invoke-virtual {v0}, Lktu;->c()Lkyp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkty;->b(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 697
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 711
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2, p3, p4}, Lktu;->b(Ljava/lang/Object;ZLjava/lang/Object;Z)Lktu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lktu;->b(Ljava/lang/Object;Ljava/lang/Object;)Lktu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lktu;->d(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lktu;->d(Ljava/lang/Object;)Lktu;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 778
    new-instance v0, Lktw;

    iget-object v1, p0, Lktu;->a:Ljava/util/Comparator;

    invoke-virtual {p0}, Lktu;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lktw;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method
