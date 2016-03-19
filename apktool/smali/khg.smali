.class public final Lkhg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkhf;

.field public b:Lkii;

.field public c:[Lkhf;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2101
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3106
    iput-object v1, p0, Lkhg;->requestHeader:Lkdo;

    .line 3107
    iput-object v1, p0, Lkhg;->a:Lkhf;

    .line 3108
    iput-object v1, p0, Lkhg;->b:Lkii;

    .line 3109
    invoke-static {}, Lkhf;->d()[Lkhf;

    move-result-object v0

    iput-object v0, p0, Lkhg;->c:[Lkhf;

    .line 3110
    iput-object v1, p0, Lkhg;->eD:Llyd;

    .line 3111
    const/4 v0, -0x1

    iput v0, p0, Lkhg;->eE:I

    .line 2103
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3170
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3171
    sparse-switch v0, :sswitch_data_0

    .line 3175
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3176
    :sswitch_0
    return-object p0

    .line 3181
    :sswitch_1
    iget-object v0, p0, Lkhg;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 3182
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkhg;->requestHeader:Lkdo;

    .line 3184
    :cond_1
    iget-object v0, p0, Lkhg;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3188
    :sswitch_2
    iget-object v0, p0, Lkhg;->a:Lkhf;

    if-nez v0, :cond_2

    .line 3189
    new-instance v0, Lkhf;

    invoke-direct {v0}, Lkhf;-><init>()V

    iput-object v0, p0, Lkhg;->a:Lkhf;

    .line 3191
    :cond_2
    iget-object v0, p0, Lkhg;->a:Lkhf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3195
    :sswitch_3
    iget-object v0, p0, Lkhg;->b:Lkii;

    if-nez v0, :cond_3

    .line 3196
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhg;->b:Lkii;

    .line 3198
    :cond_3
    iget-object v0, p0, Lkhg;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3202
    :sswitch_4
    const/16 v0, 0x22

    .line 3203
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3204
    iget-object v0, p0, Lkhg;->c:[Lkhf;

    if-nez v0, :cond_5

    move v0, v1

    .line 3205
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkhf;

    .line 3207
    if-eqz v0, :cond_4

    .line 3208
    iget-object v3, p0, Lkhg;->c:[Lkhf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3210
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 3211
    new-instance v3, Lkhf;

    invoke-direct {v3}, Lkhf;-><init>()V

    aput-object v3, v2, v0

    .line 3212
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3213
    invoke-virtual {p1}, Llxy;->a()I

    .line 3210
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3204
    :cond_5
    iget-object v0, p0, Lkhg;->c:[Lkhf;

    array-length v0, v0

    goto :goto_1

    .line 3216
    :cond_6
    new-instance v3, Lkhf;

    invoke-direct {v3}, Lkhf;-><init>()V

    aput-object v3, v2, v0

    .line 3217
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3218
    iput-object v2, p0, Lkhg;->c:[Lkhf;

    goto :goto_0

    .line 3171
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 2118
    iget-object v0, p0, Lkhg;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 2119
    const/4 v0, 0x1

    iget-object v1, p0, Lkhg;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2121
    :cond_0
    iget-object v0, p0, Lkhg;->a:Lkhf;

    if-eqz v0, :cond_1

    .line 2122
    const/4 v0, 0x2

    iget-object v1, p0, Lkhg;->a:Lkhf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2124
    :cond_1
    iget-object v0, p0, Lkhg;->b:Lkii;

    if-eqz v0, :cond_2

    .line 2125
    const/4 v0, 0x3

    iget-object v1, p0, Lkhg;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2127
    :cond_2
    iget-object v0, p0, Lkhg;->c:[Lkhf;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkhg;->c:[Lkhf;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 2128
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkhg;->c:[Lkhf;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2129
    iget-object v1, p0, Lkhg;->c:[Lkhf;

    aget-object v1, v1, v0

    .line 2130
    if-eqz v1, :cond_3

    .line 2131
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 2128
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2135
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2136
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 2140
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2141
    iget-object v1, p0, Lkhg;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 2142
    const/4 v1, 0x1

    iget-object v2, p0, Lkhg;->requestHeader:Lkdo;

    .line 2143
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2145
    :cond_0
    iget-object v1, p0, Lkhg;->a:Lkhf;

    if-eqz v1, :cond_1

    .line 2146
    const/4 v1, 0x2

    iget-object v2, p0, Lkhg;->a:Lkhf;

    .line 2147
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2149
    :cond_1
    iget-object v1, p0, Lkhg;->b:Lkii;

    if-eqz v1, :cond_2

    .line 2150
    const/4 v1, 0x3

    iget-object v2, p0, Lkhg;->b:Lkii;

    .line 2151
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2153
    :cond_2
    iget-object v1, p0, Lkhg;->c:[Lkhf;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkhg;->c:[Lkhf;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 2154
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkhg;->c:[Lkhf;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 2155
    iget-object v2, p0, Lkhg;->c:[Lkhf;

    aget-object v2, v2, v0

    .line 2156
    if-eqz v2, :cond_3

    .line 2157
    const/4 v3, 0x4

    .line 2158
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2154
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2162
    :cond_5
    return v0
.end method
