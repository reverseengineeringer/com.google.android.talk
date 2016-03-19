.class final Lktn;
.super Lkxl;
.source "SourceFile"

# interfaces
.implements Lkyc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkxl",
        "<TE;>;",
        "Lkyc",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lktu;Lksf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lktu",
            "<TE;>;",
            "Lksf",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lkxl;-><init>(Lkrz;Lksf;)V

    .line 36
    return-void
.end method


# virtual methods
.method synthetic b()Lkrz;
    .locals 1

    .prologue
    .line 3040
    invoke-super {p0}, Lkxl;->b()Lkrz;

    move-result-object v0

    check-cast v0, Lktu;

    .line 30
    return-object v0
.end method

.method b(II)Lksf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lksf",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lkxl;->b(II)Lksf;

    move-result-object v0

    .line 85
    new-instance v1, Lkxu;

    invoke-virtual {p0}, Lktn;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lkxu;-><init>(Lksf;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Lkxu;->f()Lksf;

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
    .line 1040
    invoke-super {p0}, Lkxl;->b()Lkrz;

    move-result-object v0

    check-cast v0, Lktu;

    .line 45
    invoke-virtual {v0}, Lktu;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lktn;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 2040
    invoke-super {p0}, Lkxl;->b()Lkrz;

    move-result-object v0

    check-cast v0, Lktu;

    .line 54
    invoke-virtual {v0, p1}, Lktu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 61
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lktn;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lktn;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
