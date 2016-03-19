.class public final Ljca;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljca;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Ljava/lang/String;

.field public c:Ljcc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6981
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7986
    iput-object v1, p0, Ljca;->a:Ljava/lang/Integer;

    .line 7987
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljca;->b:[Ljava/lang/String;

    .line 7988
    iput-object v1, p0, Ljca;->c:Ljcc;

    .line 7989
    iput-object v1, p0, Ljca;->eD:Llyd;

    .line 7990
    const/4 v0, -0x1

    iput v0, p0, Ljca;->eE:I

    .line 6983
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8047
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8048
    sparse-switch v0, :sswitch_data_0

    .line 8052
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8053
    :sswitch_0
    return-object p0

    .line 8058
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 8059
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 8063
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljca;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 8069
    :sswitch_2
    const/16 v0, 0x12

    .line 8070
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 8071
    iget-object v0, p0, Ljca;->b:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 8072
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 8073
    if-eqz v0, :cond_1

    .line 8074
    iget-object v3, p0, Ljca;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8076
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 8077
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 8078
    invoke-virtual {p1}, Llxy;->a()I

    .line 8076
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8071
    :cond_2
    iget-object v0, p0, Ljca;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 8081
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 8082
    iput-object v2, p0, Ljca;->b:[Ljava/lang/String;

    goto :goto_0

    .line 8086
    :sswitch_3
    iget-object v0, p0, Ljca;->c:Ljcc;

    if-nez v0, :cond_4

    .line 8087
    new-instance v0, Ljcc;

    invoke-direct {v0}, Ljcc;-><init>()V

    iput-object v0, p0, Ljca;->c:Ljcc;

    .line 8089
    :cond_4
    iget-object v0, p0, Ljca;->c:Ljcc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8048
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 8059
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 6997
    iget-object v0, p0, Ljca;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 6998
    const/4 v0, 0x1

    iget-object v1, p0, Ljca;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 7000
    :cond_0
    iget-object v0, p0, Ljca;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljca;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 7001
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljca;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 7002
    iget-object v1, p0, Ljca;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 7003
    if-eqz v1, :cond_1

    .line 7004
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7001
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7008
    :cond_2
    iget-object v0, p0, Ljca;->c:Ljcc;

    if-eqz v0, :cond_3

    .line 7009
    const/4 v0, 0x3

    iget-object v1, p0, Ljca;->c:Ljcc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7011
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7012
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 7016
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7017
    iget-object v2, p0, Ljca;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 7018
    const/4 v2, 0x1

    iget-object v3, p0, Ljca;->a:Ljava/lang/Integer;

    .line 7019
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7021
    :cond_0
    iget-object v2, p0, Ljca;->b:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljca;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 7024
    :goto_0
    iget-object v4, p0, Ljca;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 7025
    iget-object v4, p0, Ljca;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 7026
    if-eqz v4, :cond_1

    .line 7027
    add-int/lit8 v3, v3, 0x1

    .line 7029
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7024
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7032
    :cond_2
    add-int/2addr v0, v2

    .line 7033
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 7035
    :cond_3
    iget-object v1, p0, Ljca;->c:Ljcc;

    if-eqz v1, :cond_4

    .line 7036
    const/4 v1, 0x3

    iget-object v2, p0, Ljca;->c:Ljcc;

    .line 7037
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7039
    :cond_4
    return v0
.end method
