.class public final Ljoi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljoi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljoj;

.field public b:[Ljod;

.field public c:[Ljoo;

.field public d:Ljof;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2040
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3045
    invoke-static {}, Ljoj;->d()[Ljoj;

    move-result-object v0

    iput-object v0, p0, Ljoi;->a:[Ljoj;

    .line 3046
    invoke-static {}, Ljod;->d()[Ljod;

    move-result-object v0

    iput-object v0, p0, Ljoi;->b:[Ljod;

    .line 3047
    invoke-static {}, Ljoo;->d()[Ljoo;

    move-result-object v0

    iput-object v0, p0, Ljoi;->c:[Ljoo;

    .line 3048
    iput-object v1, p0, Ljoi;->d:Ljof;

    .line 3049
    iput-object v1, p0, Ljoi;->eD:Llyd;

    .line 3050
    const/4 v0, -0x1

    iput v0, p0, Ljoi;->eE:I

    .line 2042
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3130
    sparse-switch v0, :sswitch_data_0

    .line 3134
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3135
    :sswitch_0
    return-object p0

    .line 3140
    :sswitch_1
    const/16 v0, 0xa

    .line 3141
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3142
    iget-object v0, p0, Ljoi;->a:[Ljoj;

    if-nez v0, :cond_2

    move v0, v1

    .line 3143
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljoj;

    .line 3145
    if-eqz v0, :cond_1

    .line 3146
    iget-object v3, p0, Ljoi;->a:[Ljoj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3148
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3149
    new-instance v3, Ljoj;

    invoke-direct {v3}, Ljoj;-><init>()V

    aput-object v3, v2, v0

    .line 3150
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3151
    invoke-virtual {p1}, Llxy;->a()I

    .line 3148
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3142
    :cond_2
    iget-object v0, p0, Ljoi;->a:[Ljoj;

    array-length v0, v0

    goto :goto_1

    .line 3154
    :cond_3
    new-instance v3, Ljoj;

    invoke-direct {v3}, Ljoj;-><init>()V

    aput-object v3, v2, v0

    .line 3155
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3156
    iput-object v2, p0, Ljoi;->a:[Ljoj;

    goto :goto_0

    .line 3160
    :sswitch_2
    const/16 v0, 0x12

    .line 3161
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3162
    iget-object v0, p0, Ljoi;->b:[Ljod;

    if-nez v0, :cond_5

    move v0, v1

    .line 3163
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljod;

    .line 3165
    if-eqz v0, :cond_4

    .line 3166
    iget-object v3, p0, Ljoi;->b:[Ljod;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3168
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 3169
    new-instance v3, Ljod;

    invoke-direct {v3}, Ljod;-><init>()V

    aput-object v3, v2, v0

    .line 3170
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3171
    invoke-virtual {p1}, Llxy;->a()I

    .line 3168
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3162
    :cond_5
    iget-object v0, p0, Ljoi;->b:[Ljod;

    array-length v0, v0

    goto :goto_3

    .line 3174
    :cond_6
    new-instance v3, Ljod;

    invoke-direct {v3}, Ljod;-><init>()V

    aput-object v3, v2, v0

    .line 3175
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3176
    iput-object v2, p0, Ljoi;->b:[Ljod;

    goto/16 :goto_0

    .line 3180
    :sswitch_3
    const/16 v0, 0x1a

    .line 3181
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3182
    iget-object v0, p0, Ljoi;->c:[Ljoo;

    if-nez v0, :cond_8

    move v0, v1

    .line 3183
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljoo;

    .line 3185
    if-eqz v0, :cond_7

    .line 3186
    iget-object v3, p0, Ljoi;->c:[Ljoo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3188
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 3189
    new-instance v3, Ljoo;

    invoke-direct {v3}, Ljoo;-><init>()V

    aput-object v3, v2, v0

    .line 3190
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3191
    invoke-virtual {p1}, Llxy;->a()I

    .line 3188
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3182
    :cond_8
    iget-object v0, p0, Ljoi;->c:[Ljoo;

    array-length v0, v0

    goto :goto_5

    .line 3194
    :cond_9
    new-instance v3, Ljoo;

    invoke-direct {v3}, Ljoo;-><init>()V

    aput-object v3, v2, v0

    .line 3195
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3196
    iput-object v2, p0, Ljoi;->c:[Ljoo;

    goto/16 :goto_0

    .line 3200
    :sswitch_4
    iget-object v0, p0, Ljoi;->d:Ljof;

    if-nez v0, :cond_a

    .line 3201
    new-instance v0, Ljof;

    invoke-direct {v0}, Ljof;-><init>()V

    iput-object v0, p0, Ljoi;->d:Ljof;

    .line 3203
    :cond_a
    iget-object v0, p0, Ljoi;->d:Ljof;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3130
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2057
    iget-object v0, p0, Ljoi;->a:[Ljoj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljoi;->a:[Ljoj;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 2058
    :goto_0
    iget-object v2, p0, Ljoi;->a:[Ljoj;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2059
    iget-object v2, p0, Ljoi;->a:[Ljoj;

    aget-object v2, v2, v0

    .line 2060
    if-eqz v2, :cond_0

    .line 2061
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 2058
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2065
    :cond_1
    iget-object v0, p0, Ljoi;->b:[Ljod;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljoi;->b:[Ljod;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 2066
    :goto_1
    iget-object v2, p0, Ljoi;->b:[Ljod;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2067
    iget-object v2, p0, Ljoi;->b:[Ljod;

    aget-object v2, v2, v0

    .line 2068
    if-eqz v2, :cond_2

    .line 2069
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 2066
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2073
    :cond_3
    iget-object v0, p0, Ljoi;->c:[Ljoo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljoi;->c:[Ljoo;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 2074
    :goto_2
    iget-object v0, p0, Ljoi;->c:[Ljoo;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 2075
    iget-object v0, p0, Ljoi;->c:[Ljoo;

    aget-object v0, v0, v1

    .line 2076
    if-eqz v0, :cond_4

    .line 2077
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 2074
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2081
    :cond_5
    iget-object v0, p0, Ljoi;->d:Ljof;

    if-eqz v0, :cond_6

    .line 2082
    const/4 v0, 0x4

    iget-object v1, p0, Ljoi;->d:Ljof;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2084
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2085
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2089
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2090
    iget-object v2, p0, Ljoi;->a:[Ljoj;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljoi;->a:[Ljoj;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 2091
    :goto_0
    iget-object v3, p0, Ljoi;->a:[Ljoj;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 2092
    iget-object v3, p0, Ljoi;->a:[Ljoj;

    aget-object v3, v3, v0

    .line 2093
    if-eqz v3, :cond_0

    .line 2094
    const/4 v4, 0x1

    .line 2095
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2091
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2099
    :cond_2
    iget-object v2, p0, Ljoi;->b:[Ljod;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljoi;->b:[Ljod;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 2100
    :goto_1
    iget-object v3, p0, Ljoi;->b:[Ljod;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 2101
    iget-object v3, p0, Ljoi;->b:[Ljod;

    aget-object v3, v3, v0

    .line 2102
    if-eqz v3, :cond_3

    .line 2103
    const/4 v4, 0x2

    .line 2104
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2100
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 2108
    :cond_5
    iget-object v2, p0, Ljoi;->c:[Ljoo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ljoi;->c:[Ljoo;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 2109
    :goto_2
    iget-object v2, p0, Ljoi;->c:[Ljoo;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 2110
    iget-object v2, p0, Ljoi;->c:[Ljoo;

    aget-object v2, v2, v1

    .line 2111
    if-eqz v2, :cond_6

    .line 2112
    const/4 v3, 0x3

    .line 2113
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2109
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2117
    :cond_7
    iget-object v1, p0, Ljoi;->d:Ljof;

    if-eqz v1, :cond_8

    .line 2118
    const/4 v1, 0x4

    iget-object v2, p0, Ljoi;->d:Ljof;

    .line 2119
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2121
    :cond_8
    return v0
.end method
