.class public final Lgbt;
.super Lgbh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbh",
        "<",
        "Lgbt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z

.field public g:[Lgbu;

.field public h:Lgbr;

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:Lgbq;

.field public m:Ljava/lang/String;

.field public n:J

.field public q:Lgbs;

.field public r:[B

.field public s:I

.field public t:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Lgbh;-><init>()V

    .line 1000
    iput-wide v0, p0, Lgbt;->a:J

    iput-wide v0, p0, Lgbt;->b:J

    const-string v0, ""

    iput-object v0, p0, Lgbt;->c:Ljava/lang/String;

    iput v2, p0, Lgbt;->d:I

    iput v2, p0, Lgbt;->e:I

    iput-boolean v2, p0, Lgbt;->f:Z

    invoke-static {}, Lgbu;->b()[Lgbu;

    move-result-object v0

    iput-object v0, p0, Lgbt;->g:[Lgbu;

    iput-object v3, p0, Lgbt;->h:Lgbr;

    sget-object v0, Lgbp;->h:[B

    iput-object v0, p0, Lgbt;->i:[B

    sget-object v0, Lgbp;->h:[B

    iput-object v0, p0, Lgbt;->j:[B

    sget-object v0, Lgbp;->h:[B

    iput-object v0, p0, Lgbt;->k:[B

    iput-object v3, p0, Lgbt;->l:Lgbq;

    const-string v0, ""

    iput-object v0, p0, Lgbt;->m:Ljava/lang/String;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lgbt;->n:J

    iput-object v3, p0, Lgbt;->q:Lgbs;

    sget-object v0, Lgbp;->h:[B

    iput-object v0, p0, Lgbt;->r:[B

    iput v2, p0, Lgbt;->s:I

    sget-object v0, Lgbp;->a:[I

    iput-object v0, p0, Lgbt;->t:[I

    iput-object v3, p0, Lgbt;->o:Lgbj;

    const/4 v0, -0x1

    iput v0, p0, Lgbt;->p:I

    .line 0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 0
    invoke-super {p0}, Lgbh;->a()I

    move-result v0

    iget-wide v2, p0, Lgbt;->a:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-wide v4, p0, Lgbt;->a:J

    invoke-static {v2, v4, v5}, Lgbg;->b(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lgbt;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lgbt;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lgbg;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lgbt;->g:[Lgbu;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lgbt;->g:[Lgbu;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lgbt;->g:[Lgbu;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lgbt;->g:[Lgbu;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lgbg;->b(ILgbn;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    iget-object v2, p0, Lgbt;->i:[B

    sget-object v3, Lgbp;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x6

    iget-object v3, p0, Lgbt;->i:[B

    invoke-static {v2, v3}, Lgbg;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lgbt;->l:Lgbq;

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    iget-object v3, p0, Lgbt;->l:Lgbq;

    invoke-static {v2, v3}, Lgbg;->b(ILgbn;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lgbt;->j:[B

    sget-object v3, Lgbp;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x8

    iget-object v3, p0, Lgbt;->j:[B

    invoke-static {v2, v3}, Lgbg;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lgbt;->h:Lgbr;

    if-eqz v2, :cond_8

    const/16 v2, 0x9

    iget-object v3, p0, Lgbt;->h:Lgbr;

    invoke-static {v2, v3}, Lgbg;->b(ILgbn;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-boolean v2, p0, Lgbt;->f:Z

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    .line 2000
    invoke-static {v2}, Lgbg;->c(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 0
    add-int/2addr v0, v2

    :cond_9
    iget v2, p0, Lgbt;->d:I

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    iget v3, p0, Lgbt;->d:I

    invoke-static {v2, v3}, Lgbg;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget v2, p0, Lgbt;->e:I

    if-eqz v2, :cond_b

    const/16 v2, 0xc

    iget v3, p0, Lgbt;->e:I

    invoke-static {v2, v3}, Lgbg;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget-object v2, p0, Lgbt;->k:[B

    sget-object v3, Lgbp;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0xd

    iget-object v3, p0, Lgbt;->k:[B

    invoke-static {v2, v3}, Lgbg;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Lgbt;->m:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0xe

    iget-object v3, p0, Lgbt;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lgbg;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-wide v2, p0, Lgbt;->n:J

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lgbt;->n:J

    .line 3000
    const/16 v4, 0xf

    invoke-static {v4}, Lgbg;->c(I)I

    move-result v4

    .line 4000
    invoke-static {v2, v3}, Lgbg;->c(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lgbg;->b(J)I

    move-result v2

    .line 3000
    add-int/2addr v2, v4

    .line 0
    add-int/2addr v0, v2

    :cond_e
    iget-object v2, p0, Lgbt;->q:Lgbs;

    if-eqz v2, :cond_f

    const/16 v2, 0x10

    iget-object v3, p0, Lgbt;->q:Lgbs;

    invoke-static {v2, v3}, Lgbg;->b(ILgbn;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f
    iget-wide v2, p0, Lgbt;->b:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10

    const/16 v2, 0x11

    iget-wide v4, p0, Lgbt;->b:J

    invoke-static {v2, v4, v5}, Lgbg;->b(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    iget-object v2, p0, Lgbt;->r:[B

    sget-object v3, Lgbp;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0x12

    iget-object v3, p0, Lgbt;->r:[B

    invoke-static {v2, v3}, Lgbg;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    iget v2, p0, Lgbt;->s:I

    if-eqz v2, :cond_12

    const/16 v2, 0x13

    iget v3, p0, Lgbt;->s:I

    invoke-static {v2, v3}, Lgbg;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    iget-object v2, p0, Lgbt;->t:[I

    if-eqz v2, :cond_14

    iget-object v2, p0, Lgbt;->t:[I

    array-length v2, v2

    if-lez v2, :cond_14

    move v2, v1

    :goto_1
    iget-object v3, p0, Lgbt;->t:[I

    array-length v3, v3

    if-ge v1, v3, :cond_13

    iget-object v3, p0, Lgbt;->t:[I

    aget v3, v3, v1

    invoke-static {v3}, Lgbg;->b(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_13
    add-int/2addr v0, v2

    iget-object v1, p0, Lgbt;->t:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_14
    return v0
.end method

.method public synthetic a(Lgbf;)Lgbn;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lgbf;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lgbt;->a(Lgbf;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lgbf;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lgbt;->a:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lgbf;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbt;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lgbp;->a(Lgbf;I)I

    move-result v2

    iget-object v0, p0, Lgbt;->g:[Lgbu;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lgbu;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lgbt;->g:[Lgbu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lgbu;

    invoke-direct {v3}, Lgbu;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lgbf;->a(Lgbn;)V

    invoke-virtual {p1}, Lgbf;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lgbt;->g:[Lgbu;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lgbu;

    invoke-direct {v3}, Lgbu;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lgbf;->a(Lgbn;)V

    iput-object v2, p0, Lgbt;->g:[Lgbu;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lgbf;->h()[B

    move-result-object v0

    iput-object v0, p0, Lgbt;->i:[B

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lgbt;->l:Lgbq;

    if-nez v0, :cond_4

    new-instance v0, Lgbq;

    invoke-direct {v0}, Lgbq;-><init>()V

    iput-object v0, p0, Lgbt;->l:Lgbq;

    :cond_4
    iget-object v0, p0, Lgbt;->l:Lgbq;

    invoke-virtual {p1, v0}, Lgbf;->a(Lgbn;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lgbf;->h()[B

    move-result-object v0

    iput-object v0, p0, Lgbt;->j:[B

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lgbt;->h:Lgbr;

    if-nez v0, :cond_5

    new-instance v0, Lgbr;

    invoke-direct {v0}, Lgbr;-><init>()V

    iput-object v0, p0, Lgbt;->h:Lgbr;

    :cond_5
    iget-object v0, p0, Lgbt;->h:Lgbr;

    invoke-virtual {p1, v0}, Lgbf;->a(Lgbn;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lgbf;->f()Z

    move-result v0

    iput-boolean v0, p0, Lgbt;->f:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lgbf;->e()I

    move-result v0

    iput v0, p0, Lgbt;->d:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lgbf;->e()I

    move-result v0

    iput v0, p0, Lgbt;->e:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lgbf;->h()[B

    move-result-object v0

    iput-object v0, p0, Lgbt;->k:[B

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lgbf;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbt;->m:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lgbf;->j()J

    move-result-wide v2

    iput-wide v2, p0, Lgbt;->n:J

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lgbt;->q:Lgbs;

    if-nez v0, :cond_6

    new-instance v0, Lgbs;

    invoke-direct {v0}, Lgbs;-><init>()V

    iput-object v0, p0, Lgbt;->q:Lgbs;

    :cond_6
    iget-object v0, p0, Lgbt;->q:Lgbs;

    invoke-virtual {p1, v0}, Lgbf;->a(Lgbn;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lgbf;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lgbt;->b:J

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lgbf;->h()[B

    move-result-object v0

    iput-object v0, p0, Lgbt;->r:[B

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lgbf;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput v0, p0, Lgbt;->s:I

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lgbp;->a(Lgbf;I)I

    move-result v2

    iget-object v0, p0, Lgbt;->t:[I

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_7

    iget-object v3, p0, Lgbt;->t:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    invoke-virtual {p1}, Lgbf;->e()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lgbf;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lgbt;->t:[I

    array-length v0, v0

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lgbf;->e()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lgbt;->t:[I

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lgbf;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lgbf;->c(I)I

    move-result v3

    invoke-virtual {p1}, Lgbf;->m()I

    move-result v2

    move v0, v1

    :goto_5
    invoke-virtual {p1}, Lgbf;->l()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {p1}, Lgbf;->e()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v2}, Lgbf;->e(I)V

    iget-object v2, p0, Lgbt;->t:[I

    if-nez v2, :cond_c

    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_b

    iget-object v4, p0, Lgbt;->t:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_d

    invoke-virtual {p1}, Lgbf;->e()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lgbt;->t:[I

    array-length v2, v2

    goto :goto_6

    :cond_d
    iput-object v0, p0, Lgbt;->t:[I

    invoke-virtual {p1, v3}, Lgbf;->d(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x60 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x78 -> :sswitch_d
        0x82 -> :sswitch_e
        0x88 -> :sswitch_f
        0x92 -> :sswitch_10
        0x98 -> :sswitch_11
        0xa0 -> :sswitch_12
        0xa2 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lgbg;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    iget-wide v2, p0, Lgbt;->a:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lgbt;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lgbg;->a(IJ)V

    :cond_0
    iget-object v0, p0, Lgbt;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lgbt;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lgbg;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lgbt;->g:[Lgbu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgbt;->g:[Lgbu;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lgbt;->g:[Lgbu;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lgbt;->g:[Lgbu;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lgbg;->a(ILgbn;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgbt;->i:[B

    sget-object v2, Lgbp;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v2, p0, Lgbt;->i:[B

    invoke-virtual {p1, v0, v2}, Lgbg;->a(I[B)V

    :cond_4
    iget-object v0, p0, Lgbt;->l:Lgbq;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v2, p0, Lgbt;->l:Lgbq;

    invoke-virtual {p1, v0, v2}, Lgbg;->a(ILgbn;)V

    :cond_5
    iget-object v0, p0, Lgbt;->j:[B

    sget-object v2, Lgbp;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v2, p0, Lgbt;->j:[B

    invoke-virtual {p1, v0, v2}, Lgbg;->a(I[B)V

    :cond_6
    iget-object v0, p0, Lgbt;->h:Lgbr;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v2, p0, Lgbt;->h:Lgbr;

    invoke-virtual {p1, v0, v2}, Lgbg;->a(ILgbn;)V

    :cond_7
    iget-boolean v0, p0, Lgbt;->f:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget-boolean v2, p0, Lgbt;->f:Z

    invoke-virtual {p1, v0, v2}, Lgbg;->a(IZ)V

    :cond_8
    iget v0, p0, Lgbt;->d:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v2, p0, Lgbt;->d:I

    invoke-virtual {p1, v0, v2}, Lgbg;->a(II)V

    :cond_9
    iget v0, p0, Lgbt;->e:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v2, p0, Lgbt;->e:I

    invoke-virtual {p1, v0, v2}, Lgbg;->a(II)V

    :cond_a
    iget-object v0, p0, Lgbt;->k:[B

    sget-object v2, Lgbp;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v2, p0, Lgbt;->k:[B

    invoke-virtual {p1, v0, v2}, Lgbg;->a(I[B)V

    :cond_b
    iget-object v0, p0, Lgbt;->m:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    iget-object v2, p0, Lgbt;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lgbg;->a(ILjava/lang/String;)V

    :cond_c
    iget-wide v2, p0, Lgbt;->n:J

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d

    iget-wide v2, p0, Lgbt;->n:J

    invoke-virtual {p1, v2, v3}, Lgbg;->a(J)V

    :cond_d
    iget-object v0, p0, Lgbt;->q:Lgbs;

    if-eqz v0, :cond_e

    const/16 v0, 0x10

    iget-object v2, p0, Lgbt;->q:Lgbs;

    invoke-virtual {p1, v0, v2}, Lgbg;->a(ILgbn;)V

    :cond_e
    iget-wide v2, p0, Lgbt;->b:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    iget-wide v2, p0, Lgbt;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lgbg;->a(IJ)V

    :cond_f
    iget-object v0, p0, Lgbt;->r:[B

    sget-object v2, Lgbp;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x12

    iget-object v2, p0, Lgbt;->r:[B

    invoke-virtual {p1, v0, v2}, Lgbg;->a(I[B)V

    :cond_10
    iget v0, p0, Lgbt;->s:I

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    iget v2, p0, Lgbt;->s:I

    invoke-virtual {p1, v0, v2}, Lgbg;->a(II)V

    :cond_11
    iget-object v0, p0, Lgbt;->t:[I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lgbt;->t:[I

    array-length v0, v0

    if-lez v0, :cond_12

    :goto_1
    iget-object v0, p0, Lgbt;->t:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    const/16 v0, 0x14

    iget-object v2, p0, Lgbt;->t:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lgbg;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_12
    invoke-super {p0, p1}, Lgbh;->a(Lgbg;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lgbt;

    if-eqz v1, :cond_0

    check-cast p1, Lgbt;

    iget-wide v2, p0, Lgbt;->a:J

    iget-wide v4, p1, Lgbt;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lgbt;->b:J

    iget-wide v4, p1, Lgbt;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lgbt;->c:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lgbt;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget v1, p0, Lgbt;->d:I

    iget v2, p1, Lgbt;->d:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lgbt;->e:I

    iget v2, p1, Lgbt;->e:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lgbt;->f:Z

    iget-boolean v2, p1, Lgbt;->f:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lgbt;->g:[Lgbu;

    iget-object v2, p1, Lgbt;->g:[Lgbu;

    invoke-static {v1, v2}, Lgbl;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbt;->h:Lgbr;

    if-nez v1, :cond_8

    iget-object v1, p1, Lgbt;->h:Lgbr;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lgbt;->i:[B

    iget-object v2, p1, Lgbt;->i:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbt;->j:[B

    iget-object v2, p1, Lgbt;->j:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbt;->k:[B

    iget-object v2, p1, Lgbt;->k:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbt;->l:Lgbq;

    if-nez v1, :cond_9

    iget-object v1, p1, Lgbt;->l:Lgbq;

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lgbt;->m:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, p1, Lgbt;->m:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_5
    iget-wide v2, p0, Lgbt;->n:J

    iget-wide v4, p1, Lgbt;->n:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lgbt;->q:Lgbs;

    if-nez v1, :cond_b

    iget-object v1, p1, Lgbt;->q:Lgbs;

    if-nez v1, :cond_0

    :cond_6
    iget-object v1, p0, Lgbt;->r:[B

    iget-object v2, p1, Lgbt;->r:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lgbt;->s:I

    iget v2, p1, Lgbt;->s:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lgbt;->t:[I

    iget-object v2, p1, Lgbt;->t:[I

    invoke-static {v1, v2}, Lgbl;->a([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lgbt;->a(Lgbh;)Z

    move-result v0

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lgbt;->c:Ljava/lang/String;

    iget-object v2, p1, Lgbt;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lgbt;->h:Lgbr;

    iget-object v2, p1, Lgbt;->h:Lgbr;

    invoke-virtual {v1, v2}, Lgbr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lgbt;->l:Lgbq;

    iget-object v2, p1, Lgbt;->l:Lgbq;

    invoke-virtual {v1, v2}, Lgbq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lgbt;->m:Ljava/lang/String;

    iget-object v2, p1, Lgbt;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lgbt;->q:Lgbs;

    iget-object v2, p1, Lgbt;->q:Lgbs;

    invoke-virtual {v1, v2}, Lgbs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-wide v2, p0, Lgbt;->a:J

    iget-wide v4, p0, Lgbt;->a:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lgbt;->b:J

    iget-wide v4, p0, Lgbt;->b:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgbt;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lgbt;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lgbt;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lgbt;->f:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lgbt;->g:[Lgbu;

    invoke-static {v2}, Lgbl;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgbt;->h:Lgbr;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lgbt;->i:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lgbt;->j:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lgbt;->k:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgbt;->l:Lgbq;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgbt;->m:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lgbt;->n:J

    iget-wide v4, p0, Lgbt;->n:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lgbt;->q:Lgbs;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lgbt;->r:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lgbt;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lgbt;->t:[I

    invoke-static {v1}, Lgbl;->a([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lgbt;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lgbt;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lgbt;->h:Lgbr;

    invoke-virtual {v0}, Lgbr;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lgbt;->l:Lgbq;

    invoke-virtual {v0}, Lgbq;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lgbt;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lgbt;->q:Lgbs;

    invoke-virtual {v1}, Lgbs;->hashCode()I

    move-result v1

    goto :goto_5
.end method
