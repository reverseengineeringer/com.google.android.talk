.class public final Lmaj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmaj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmad;

.field public b:[Llzu;

.field public c:Llzu;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2079
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3084
    iput-object v1, p0, Lmaj;->a:Lmad;

    .line 4025
    sget-object v0, Llzu;->b:[Llzu;

    .line 3085
    iput-object v0, p0, Lmaj;->b:[Llzu;

    .line 3086
    iput-object v1, p0, Lmaj;->c:Llzu;

    .line 3087
    iput-object v1, p0, Lmaj;->d:Ljava/lang/Integer;

    .line 3088
    iput-object v1, p0, Lmaj;->eD:Llyd;

    .line 3089
    const/4 v0, -0x1

    iput v0, p0, Lmaj;->eE:I

    .line 2081
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4148
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4149
    sparse-switch v0, :sswitch_data_0

    .line 4153
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4154
    :sswitch_0
    return-object p0

    .line 4159
    :sswitch_1
    iget-object v0, p0, Lmaj;->a:Lmad;

    if-nez v0, :cond_1

    .line 4160
    new-instance v0, Lmad;

    invoke-direct {v0}, Lmad;-><init>()V

    iput-object v0, p0, Lmaj;->a:Lmad;

    .line 4162
    :cond_1
    iget-object v0, p0, Lmaj;->a:Lmad;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4166
    :sswitch_2
    const/16 v0, 0x12

    .line 4167
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4168
    iget-object v0, p0, Lmaj;->b:[Llzu;

    if-nez v0, :cond_3

    move v0, v1

    .line 4169
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llzu;

    .line 4171
    if-eqz v0, :cond_2

    .line 4172
    iget-object v3, p0, Lmaj;->b:[Llzu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4174
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 4175
    new-instance v3, Llzu;

    invoke-direct {v3}, Llzu;-><init>()V

    aput-object v3, v2, v0

    .line 4176
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4177
    invoke-virtual {p1}, Llxy;->a()I

    .line 4174
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4168
    :cond_3
    iget-object v0, p0, Lmaj;->b:[Llzu;

    array-length v0, v0

    goto :goto_1

    .line 4180
    :cond_4
    new-instance v3, Llzu;

    invoke-direct {v3}, Llzu;-><init>()V

    aput-object v3, v2, v0

    .line 4181
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4182
    iput-object v2, p0, Lmaj;->b:[Llzu;

    goto :goto_0

    .line 4186
    :sswitch_3
    iget-object v0, p0, Lmaj;->c:Llzu;

    if-nez v0, :cond_5

    .line 4187
    new-instance v0, Llzu;

    invoke-direct {v0}, Llzu;-><init>()V

    iput-object v0, p0, Lmaj;->c:Llzu;

    .line 4189
    :cond_5
    iget-object v0, p0, Lmaj;->c:Llzu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4193
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4194
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4200
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmaj;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 4149
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 4194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 2096
    iget-object v0, p0, Lmaj;->a:Lmad;

    if-eqz v0, :cond_0

    .line 2097
    const/4 v0, 0x1

    iget-object v1, p0, Lmaj;->a:Lmad;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2099
    :cond_0
    iget-object v0, p0, Lmaj;->b:[Llzu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmaj;->b:[Llzu;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 2100
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmaj;->b:[Llzu;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2101
    iget-object v1, p0, Lmaj;->b:[Llzu;

    aget-object v1, v1, v0

    .line 2102
    if-eqz v1, :cond_1

    .line 2103
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 2100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2107
    :cond_2
    iget-object v0, p0, Lmaj;->c:Llzu;

    if-eqz v0, :cond_3

    .line 2108
    const/4 v0, 0x3

    iget-object v1, p0, Lmaj;->c:Llzu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2110
    :cond_3
    iget-object v0, p0, Lmaj;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 2111
    const/4 v0, 0x4

    iget-object v1, p0, Lmaj;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2113
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2114
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 2118
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2119
    iget-object v1, p0, Lmaj;->a:Lmad;

    if-eqz v1, :cond_0

    .line 2120
    const/4 v1, 0x1

    iget-object v2, p0, Lmaj;->a:Lmad;

    .line 2121
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2123
    :cond_0
    iget-object v1, p0, Lmaj;->b:[Llzu;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmaj;->b:[Llzu;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 2124
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmaj;->b:[Llzu;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2125
    iget-object v2, p0, Lmaj;->b:[Llzu;

    aget-object v2, v2, v0

    .line 2126
    if-eqz v2, :cond_1

    .line 2127
    const/4 v3, 0x2

    .line 2128
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2124
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2132
    :cond_3
    iget-object v1, p0, Lmaj;->c:Llzu;

    if-eqz v1, :cond_4

    .line 2133
    const/4 v1, 0x3

    iget-object v2, p0, Lmaj;->c:Llzu;

    .line 2134
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2136
    :cond_4
    iget-object v1, p0, Lmaj;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 2137
    const/4 v1, 0x4

    iget-object v2, p0, Lmaj;->d:Ljava/lang/Integer;

    .line 2138
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2140
    :cond_5
    return v0
.end method
