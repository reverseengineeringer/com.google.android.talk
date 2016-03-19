.class public final Lgbs;
.super Lgbh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbh",
        "<",
        "Lgbs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[[B

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Lgbh;-><init>()V

    .line 1000
    sget-object v0, Lgbp;->h:[B

    iput-object v0, p0, Lgbs;->a:[B

    sget-object v0, Lgbp;->g:[[B

    iput-object v0, p0, Lgbs;->b:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbs;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lgbs;->o:Lgbj;

    const/4 v0, -0x1

    iput v0, p0, Lgbs;->p:I

    .line 0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-super {p0}, Lgbh;->a()I

    move-result v0

    iget-object v2, p0, Lgbs;->a:[B

    sget-object v3, Lgbp;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lgbs;->a:[B

    invoke-static {v2, v3}, Lgbg;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lgbs;->b:[[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lgbs;->b:[[B

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v4, p0, Lgbs;->b:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lgbs;->b:[[B

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lgbg;->a([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lgbs;->c:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    .line 2000
    invoke-static {v1}, Lgbg;->c(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 0
    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public synthetic a(Lgbf;)Lgbn;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lgbf;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lgbs;->a(Lgbf;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lgbf;->h()[B

    move-result-object v0

    iput-object v0, p0, Lgbs;->a:[B

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lgbp;->a(Lgbf;I)I

    move-result v2

    iget-object v0, p0, Lgbs;->b:[[B

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_1

    iget-object v3, p0, Lgbs;->b:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lgbf;->h()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lgbf;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lgbs;->b:[[B

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lgbf;->h()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lgbs;->b:[[B

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lgbf;->f()Z

    move-result v0

    iput-boolean v0, p0, Lgbs;->c:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Lgbg;)V
    .locals 3

    iget-object v0, p0, Lgbs;->a:[B

    sget-object v1, Lgbp;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lgbs;->a:[B

    invoke-virtual {p1, v0, v1}, Lgbg;->a(I[B)V

    :cond_0
    iget-object v0, p0, Lgbs;->b:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgbs;->b:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgbs;->b:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lgbs;->b:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lgbg;->a(I[B)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lgbs;->c:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-boolean v1, p0, Lgbs;->c:Z

    invoke-virtual {p1, v0, v1}, Lgbg;->a(IZ)V

    :cond_3
    invoke-super {p0, p1}, Lgbh;->a(Lgbg;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lgbs;

    if-eqz v1, :cond_0

    check-cast p1, Lgbs;

    iget-object v1, p0, Lgbs;->a:[B

    iget-object v2, p1, Lgbs;->a:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbs;->b:[[B

    iget-object v2, p1, Lgbs;->b:[[B

    invoke-static {v1, v2}, Lgbl;->a([[B[[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lgbs;->c:Z

    iget-boolean v2, p1, Lgbs;->c:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lgbs;->a(Lgbh;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lgbs;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lgbs;->b:[[B

    invoke-static {v1}, Lgbl;->a([[B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lgbs;->c:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lgbs;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method
