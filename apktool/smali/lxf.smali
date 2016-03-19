.class public final Llxf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Llxf;


# instance fields
.field private b:I

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    new-instance v0, Llxf;

    new-array v1, v3, [I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2, v3}, Llxf;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Llxf;->a:Llxf;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 86
    const/4 v0, 0x0

    new-array v1, v2, [I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Llxf;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 87
    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Llxf;->e:I

    .line 93
    iput p1, p0, Llxf;->b:I

    .line 94
    iput-object p2, p0, Llxf;->c:[I

    .line 95
    iput-object p3, p0, Llxf;->d:[Ljava/lang/Object;

    .line 96
    iput-boolean p4, p0, Llxf;->f:Z

    .line 97
    return-void
.end method

.method static a(Llxf;Llxf;)Llxf;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 49
    iget v0, p0, Llxf;->b:I

    iget v1, p1, Llxf;->b:I

    add-int/2addr v0, v1

    .line 50
    iget-object v1, p0, Llxf;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 51
    iget-object v2, p1, Llxf;->c:[I

    iget v3, p0, Llxf;->b:I

    iget v4, p1, Llxf;->b:I

    invoke-static {v2, v6, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object v2, p0, Llxf;->d:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 53
    iget-object v3, p1, Llxf;->d:[Ljava/lang/Object;

    iget v4, p0, Llxf;->b:I

    iget v5, p1, Llxf;->b:I

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    new-instance v3, Llxf;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, Llxf;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v3
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 3255
    iget v0, p0, Llxf;->b:I

    iget-object v1, p0, Llxf;->c:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 3256
    iget v0, p0, Llxf;->b:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    const/16 v0, 0x8

    .line 3257
    :goto_0
    iget v1, p0, Llxf;->b:I

    add-int/2addr v0, v1

    .line 3259
    iget-object v1, p0, Llxf;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Llxf;->c:[I

    .line 3260
    iget-object v1, p0, Llxf;->d:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    .line 246
    :cond_0
    iget-object v0, p0, Llxf;->c:[I

    iget v1, p0, Llxf;->b:I

    aput p1, v0, v1

    .line 247
    iget-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    iget v1, p0, Llxf;->b:I

    aput-object p2, v0, v1

    .line 248
    iget v0, p0, Llxf;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llxf;->b:I

    .line 249
    return-void

    .line 3256
    :cond_1
    iget v0, p0, Llxf;->b:I

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Llxf;->f:Z

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method a(II)Llxf;
    .locals 4

    .prologue
    .line 310
    invoke-direct {p0}, Llxf;->c()V

    .line 311
    if-nez p1, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7044
    :cond_0
    shl-int/lit8 v0, p1, 0x3

    .line 315
    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Llxf;->a(ILjava/lang/Object;)V

    .line 317
    return-object p0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Llxf;->f:Z

    .line 106
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Llxf;->b:I

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Llxf;->c:[I

    aget v1, v1, v0

    .line 3039
    ushr-int/lit8 v1, v1, 0x3

    .line 239
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Llxf;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Laal;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public a(Llvq;)V
    .locals 6

    .prologue
    .line 123
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Llxf;->b:I

    if-ge v1, v0, :cond_0

    .line 124
    iget-object v0, p0, Llxf;->c:[I

    aget v0, v0, v1

    .line 1039
    ushr-int/lit8 v2, v0, 0x3

    .line 2034
    and-int/lit8 v0, v0, 0x7

    .line 126
    packed-switch v0, :pswitch_data_0

    .line 145
    :pswitch_0
    invoke-static {}, Llwk;->d()Llwk;

    move-result-object v0

    throw v0

    .line 128
    :pswitch_1
    iget-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Llvq;->b(IJ)V

    .line 123
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Llvq;->c(II)V

    goto :goto_1

    .line 134
    :pswitch_3
    iget-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Llvq;->c(IJ)V

    goto :goto_1

    .line 137
    :pswitch_4
    iget-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Llvk;

    invoke-virtual {p1, v2, v0}, Llvq;->a(ILlvk;)V

    goto :goto_1

    .line 140
    :pswitch_5
    const/4 v0, 0x3

    invoke-virtual {p1, v2, v0}, Llvq;->a(II)V

    .line 141
    iget-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Llxf;

    invoke-virtual {v0, p1}, Llxf;->a(Llvq;)V

    .line 142
    const/4 v0, 0x4

    invoke-virtual {p1, v2, v0}, Llvq;->a(II)V

    goto :goto_1

    .line 148
    :cond_0
    return-void

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method a(ILlvp;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 273
    invoke-direct {p0}, Llxf;->c()V

    .line 4039
    ushr-int/lit8 v1, p1, 0x3

    .line 5034
    and-int/lit8 v2, p1, 0x7

    .line 275
    packed-switch v2, :pswitch_data_0

    .line 298
    invoke-static {}, Llwk;->d()Llwk;

    move-result-object v0

    throw v0

    .line 277
    :pswitch_0
    invoke-virtual {p2}, Llvp;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Llxf;->a(ILjava/lang/Object;)V

    .line 296
    :goto_0
    return v0

    .line 280
    :pswitch_1
    invoke-virtual {p2}, Llvp;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Llxf;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 283
    :pswitch_2
    invoke-virtual {p2}, Llvp;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Llxf;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 286
    :pswitch_3
    invoke-virtual {p2}, Llvp;->l()Llvk;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Llxf;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 289
    :pswitch_4
    new-instance v2, Llxf;

    invoke-direct {v2}, Llxf;-><init>()V

    .line 5343
    :cond_0
    invoke-virtual {p2}, Llvp;->a()I

    move-result v3

    .line 5344
    if-eqz v3, :cond_1

    invoke-virtual {v2, v3, p2}, Llxf;->a(ILlvp;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6044
    :cond_1
    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 291
    invoke-virtual {p2, v1}, Llvp;->a(I)V

    .line 293
    invoke-direct {p0, p1, v2}, Llxf;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 296
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public b()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 156
    iget v2, p0, Llxf;->e:I

    .line 157
    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    .line 189
    :goto_0
    return v2

    :cond_0
    move v1, v0

    move v2, v0

    .line 162
    :goto_1
    iget v0, p0, Llxf;->b:I

    if-ge v1, v0, :cond_1

    .line 163
    iget-object v0, p0, Llxf;->c:[I

    aget v0, v0, v1

    .line 2039
    ushr-int/lit8 v3, v0, 0x3

    .line 3034
    and-int/lit8 v0, v0, 0x7

    .line 165
    packed-switch v0, :pswitch_data_0

    .line 183
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Llwk;->d()Llwk;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 167
    :pswitch_1
    iget-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Llvq;->e(IJ)I

    move-result v0

    add-int/2addr v2, v0

    .line 162
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 170
    :pswitch_2
    iget-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-static {v3}, Llvq;->h(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 171
    goto :goto_2

    .line 173
    :pswitch_3
    iget-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    invoke-static {v3}, Llvq;->i(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 174
    goto :goto_2

    .line 176
    :pswitch_4
    iget-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Llvk;

    invoke-static {v3, v0}, Llvq;->b(ILlvk;)I

    move-result v0

    add-int/2addr v2, v0

    .line 177
    goto :goto_2

    .line 179
    :pswitch_5
    invoke-static {v3}, Llvq;->m(I)I

    move-result v0

    shl-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Llxf;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Llxf;

    .line 180
    invoke-virtual {v0}, Llxf;->b()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 181
    goto :goto_2

    .line 187
    :cond_1
    iput v2, p0, Llxf;->e:I

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    if-ne p0, p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 199
    goto :goto_0

    .line 202
    :cond_2
    instance-of v2, p1, Llxf;

    if-nez v2, :cond_3

    move v0, v1

    .line 203
    goto :goto_0

    .line 206
    :cond_3
    check-cast p1, Llxf;

    .line 207
    iget v2, p0, Llxf;->b:I

    iget v3, p1, Llxf;->b:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Llxf;->c:[I

    iget-object v3, p1, Llxf;->c:[I

    .line 209
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Llxf;->d:[Ljava/lang/Object;

    iget-object v3, p1, Llxf;->d:[Ljava/lang/Object;

    .line 210
    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 211
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Llxf;->b:I

    add-int/lit16 v0, v0, 0x20f

    .line 222
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llxf;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llxf;->d:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    return v0
.end method
