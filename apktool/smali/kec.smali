.class public final Lkec;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkec;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljxe;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37105
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38110
    iput-object v1, p0, Lkec;->requestHeader:Lkdo;

    .line 38111
    invoke-static {}, Ljxe;->d()[Ljxe;

    move-result-object v0

    iput-object v0, p0, Lkec;->a:[Ljxe;

    .line 38112
    iput-object v1, p0, Lkec;->eD:Llyd;

    .line 38113
    const/4 v0, -0x1

    iput v0, p0, Lkec;->eE:I

    .line 37107
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 38158
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 38159
    sparse-switch v0, :sswitch_data_0

    .line 38163
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38164
    :sswitch_0
    return-object p0

    .line 38169
    :sswitch_1
    iget-object v0, p0, Lkec;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 38170
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkec;->requestHeader:Lkdo;

    .line 38172
    :cond_1
    iget-object v0, p0, Lkec;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 38176
    :sswitch_2
    const/16 v0, 0x12

    .line 38177
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 38178
    iget-object v0, p0, Lkec;->a:[Ljxe;

    if-nez v0, :cond_3

    move v0, v1

    .line 38179
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljxe;

    .line 38181
    if-eqz v0, :cond_2

    .line 38182
    iget-object v3, p0, Lkec;->a:[Ljxe;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38184
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 38185
    new-instance v3, Ljxe;

    invoke-direct {v3}, Ljxe;-><init>()V

    aput-object v3, v2, v0

    .line 38186
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 38187
    invoke-virtual {p1}, Llxy;->a()I

    .line 38184
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 38178
    :cond_3
    iget-object v0, p0, Lkec;->a:[Ljxe;

    array-length v0, v0

    goto :goto_1

    .line 38190
    :cond_4
    new-instance v3, Ljxe;

    invoke-direct {v3}, Ljxe;-><init>()V

    aput-object v3, v2, v0

    .line 38191
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 38192
    iput-object v2, p0, Lkec;->a:[Ljxe;

    goto :goto_0

    .line 38159
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 37120
    iget-object v0, p0, Lkec;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 37121
    const/4 v0, 0x1

    iget-object v1, p0, Lkec;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 37123
    :cond_0
    iget-object v0, p0, Lkec;->a:[Ljxe;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkec;->a:[Ljxe;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 37124
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkec;->a:[Ljxe;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 37125
    iget-object v1, p0, Lkec;->a:[Ljxe;

    aget-object v1, v1, v0

    .line 37126
    if-eqz v1, :cond_1

    .line 37127
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 37124
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37131
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 37132
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 37136
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 37137
    iget-object v1, p0, Lkec;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 37138
    const/4 v1, 0x1

    iget-object v2, p0, Lkec;->requestHeader:Lkdo;

    .line 37139
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37141
    :cond_0
    iget-object v1, p0, Lkec;->a:[Ljxe;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkec;->a:[Ljxe;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 37142
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkec;->a:[Ljxe;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 37143
    iget-object v2, p0, Lkec;->a:[Ljxe;

    aget-object v2, v2, v0

    .line 37144
    if-eqz v2, :cond_1

    .line 37145
    const/4 v3, 0x2

    .line 37146
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 37142
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 37150
    :cond_3
    return v0
.end method
