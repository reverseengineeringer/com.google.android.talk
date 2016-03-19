.class public Lkti;
.super Lksa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lksa",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkti;-><init>(B)V

    .line 424
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lksa;-><init>(I)V

    .line 428
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Lksa;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lkti;->c(Ljava/lang/Object;)Lkti;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a([Ljava/lang/Object;)Lksb;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lkti;->b([Ljava/lang/Object;)Lkti;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkth;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkth",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 496
    iget v0, p0, Lkti;->b:I

    iget-object v1, p0, Lkti;->a:[Ljava/lang/Object;

    .line 1044
    invoke-static {v0, v1}, Lkth;->a(I[Ljava/lang/Object;)Lkth;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lkth;->size()I

    move-result v1

    iput v1, p0, Lkti;->b:I

    .line 500
    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lksb;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lkti;->c(Ljava/lang/Object;)Lkti;

    move-result-object v0

    return-object v0
.end method

.method public varargs b([Ljava/lang/Object;)Lkti;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lkti",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 456
    invoke-super {p0, p1}, Lksa;->a([Ljava/lang/Object;)Lksb;

    .line 457
    return-object p0
.end method

.method public c(Ljava/lang/Object;)Lkti;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkti",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 441
    invoke-super {p0, p1}, Lksa;->a(Ljava/lang/Object;)Lksa;

    .line 442
    return-object p0
.end method
