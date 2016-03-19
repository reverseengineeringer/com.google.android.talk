.class Lksa;
.super Lksb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lksb",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 429
    invoke-direct {p0}, Lksb;-><init>()V

    .line 430
    const-string v0, "initialCapacity"

    invoke-static {v1, v0}, Laal;->c(ILjava/lang/String;)I

    .line 431
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lksa;->a:[Ljava/lang/Object;

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lksa;->b:I

    .line 433
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lksa;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 441
    iget-object v0, p0, Lksa;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lksa;->a:[Ljava/lang/Object;

    array-length v1, v1

    .line 443
    invoke-static {v1, p1}, Lksa;->a(II)I

    move-result v1

    .line 442
    invoke-static {v0, v1}, Lkxi;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lksa;->a:[Ljava/lang/Object;

    .line 445
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lksa;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lksa",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget v0, p0, Lksa;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lksa;->a(I)V

    .line 451
    iget-object v0, p0, Lksa;->a:[Ljava/lang/Object;

    iget v1, p0, Lksa;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lksa;->b:I

    aput-object p1, v0, v1

    .line 452
    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lksb;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lksb",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1225
    array-length v0, p1

    invoke-static {p1, v0}, Lkxi;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 458
    iget v0, p0, Lksa;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lksa;->a(I)V

    .line 459
    const/4 v0, 0x0

    iget-object v1, p0, Lksa;->a:[Ljava/lang/Object;

    iget v2, p0, Lksa;->b:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    iget v0, p0, Lksa;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lksa;->b:I

    .line 461
    return-object p0
.end method

.method public synthetic b(Ljava/lang/Object;)Lksb;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lksa;->a(Ljava/lang/Object;)Lksa;

    move-result-object v0

    return-object v0
.end method
