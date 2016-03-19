.class final Lkrl;
.super Lktu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lktu",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final c:Lktu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lktu",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lktu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lktu",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1}, Lktu;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lkxj;->a(Ljava/util/Comparator;)Lkxj;

    move-result-object v0

    invoke-virtual {v0}, Lkxj;->c()Lkxj;

    move-result-object v0

    invoke-direct {p0, v0}, Lktu;-><init>(Ljava/util/Comparator;)V

    .line 34
    iput-object p1, p0, Lkrl;->c:Lktu;

    .line 35
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0, p1}, Lktu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 109
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 112
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lkrl;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method a(Ljava/lang/Object;Z)Lktu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0, p1, p2}, Lktu;->d(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    invoke-virtual {v0}, Lktu;->b()Lktu;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lktu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0, p3, p4, p1, p2}, Lktu;->b(Ljava/lang/Object;ZLjava/lang/Object;Z)Lktu;

    move-result-object v0

    invoke-virtual {v0}, Lktu;->b()Lktu;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkyp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0}, Lktu;->c()Lkyp;

    move-result-object v0

    return-object v0
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
    .line 71
    iget-object v0, p0, Lkrl;->c:Lktu;

    return-object v0
.end method

.method b(Ljava/lang/Object;Z)Lktu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0, p1, p2}, Lktu;->c(Ljava/lang/Object;Z)Lktu;

    move-result-object v0

    invoke-virtual {v0}, Lktu;->b()Lktu;

    move-result-object v0

    return-object v0
.end method

.method public c()Lkyp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0}, Lktu;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0, p1}, Lktu;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0, p1}, Lktu;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method d()Lktu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lktu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lkrl;->c()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method public synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lkrl;->b()Lktu;

    move-result-object v0

    return-object v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0}, Lktu;->e()Z

    move-result v0

    return v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0, p1}, Lktu;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 103
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0, p1}, Lktu;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lkrl;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0, p1}, Lktu;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lkrl;->c:Lktu;

    invoke-virtual {v0}, Lktu;->size()I

    move-result v0

    return v0
.end method
