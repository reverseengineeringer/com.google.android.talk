.class public final Llyd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:Llye;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Llye;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Llye;

    invoke-direct {v0}, Llye;-><init>()V

    sput-object v0, Llyd;->a:Llye;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Llyd;-><init>(I)V

    .line 56
    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v2, p0, Llyd;->b:Z

    .line 64
    invoke-static {p1}, Llyd;->c(I)I

    move-result v0

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Llyd;->c:[I

    .line 66
    new-array v0, v0, [Llye;

    iput-object v0, p0, Llyd;->d:[Llye;

    .line 67
    iput v2, p0, Llyd;->e:I

    .line 68
    return-void
.end method

.method private static c(I)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 229
    shl-int/lit8 v0, p0, 0x2

    .line 2233
    const/4 v1, 0x4

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 2234
    shl-int v2, v3, v1

    add-int/lit8 v2, v2, -0xc

    if-gt v0, v2, :cond_1

    .line 2235
    shl-int v0, v3, v1

    add-int/lit8 v0, v0, -0xc

    .line 229
    :cond_0
    div-int/lit8 v0, v0, 0x4

    return v0

    .line 2233
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private d(I)I
    .locals 4

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    iget v0, p0, Llyd;->e:I

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    .line 244
    :goto_0
    if-gt v2, v1, :cond_1

    .line 245
    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    .line 246
    iget-object v3, p0, Llyd;->c:[I

    aget v3, v3, v0

    .line 248
    if-ge v3, p1, :cond_0

    .line 249
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    .line 250
    :cond_0
    if-le v3, p1, :cond_2

    .line 251
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_0

    .line 256
    :cond_1
    xor-int/lit8 v0, v2, -0x1

    :cond_2
    return v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 97
    iget v3, p0, Llyd;->e:I

    .line 99
    iget-object v4, p0, Llyd;->c:[I

    .line 100
    iget-object v5, p0, Llyd;->d:[Llye;

    move v1, v2

    move v0, v2

    .line 102
    :goto_0
    if-ge v1, v3, :cond_2

    .line 103
    aget-object v6, v5, v1

    .line 105
    sget-object v7, Llyd;->a:Llye;

    if-eq v6, v7, :cond_1

    .line 106
    if-eq v1, v0, :cond_0

    .line 107
    aget v7, v4, v1

    aput v7, v4, v0

    .line 108
    aput-object v6, v5, v0

    .line 109
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 102
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    iput-boolean v2, p0, Llyd;->b:Z

    .line 117
    iput v0, p0, Llyd;->e:I

    .line 118
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Llyd;->b:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Llyd;->d()V

    .line 178
    :cond_0
    iget v0, p0, Llyd;->e:I

    return v0
.end method

.method a(I)Llye;
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0, p1}, Llyd;->d(I)I

    move-result v0

    .line 77
    if-ltz v0, :cond_0

    iget-object v1, p0, Llyd;->d:[Llye;

    aget-object v1, v1, v0

    sget-object v2, Llyd;->a:Llye;

    if-ne v1, v2, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Llyd;->d:[Llye;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method a(ILlye;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 125
    invoke-direct {p0, p1}, Llyd;->d(I)I

    move-result v0

    .line 127
    if-ltz v0, :cond_0

    .line 128
    iget-object v1, p0, Llyd;->d:[Llye;

    aput-object p2, v1, v0

    .line 167
    :goto_0
    return-void

    .line 130
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 132
    iget v1, p0, Llyd;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Llyd;->d:[Llye;

    aget-object v1, v1, v0

    sget-object v2, Llyd;->a:Llye;

    if-ne v1, v2, :cond_1

    .line 133
    iget-object v1, p0, Llyd;->c:[I

    aput p1, v1, v0

    .line 134
    iget-object v1, p0, Llyd;->d:[Llye;

    aput-object p2, v1, v0

    goto :goto_0

    .line 138
    :cond_1
    iget-boolean v1, p0, Llyd;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Llyd;->e:I

    iget-object v2, p0, Llyd;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 139
    invoke-direct {p0}, Llyd;->d()V

    .line 142
    invoke-direct {p0, p1}, Llyd;->d(I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 145
    :cond_2
    iget v1, p0, Llyd;->e:I

    iget-object v2, p0, Llyd;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 146
    iget v1, p0, Llyd;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Llyd;->c(I)I

    move-result v1

    .line 148
    new-array v2, v1, [I

    .line 149
    new-array v1, v1, [Llye;

    .line 151
    iget-object v3, p0, Llyd;->c:[I

    iget-object v4, p0, Llyd;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v3, p0, Llyd;->d:[Llye;

    iget-object v4, p0, Llyd;->d:[Llye;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object v2, p0, Llyd;->c:[I

    .line 155
    iput-object v1, p0, Llyd;->d:[Llye;

    .line 158
    :cond_3
    iget v1, p0, Llyd;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 159
    iget-object v1, p0, Llyd;->c:[I

    iget-object v2, p0, Llyd;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Llyd;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v1, p0, Llyd;->d:[Llye;

    iget-object v2, p0, Llyd;->d:[Llye;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Llyd;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    :cond_4
    iget-object v1, p0, Llyd;->c:[I

    aput p1, v1, v0

    .line 164
    iget-object v1, p0, Llyd;->d:[Llye;

    aput-object p2, v1, v0

    .line 165
    iget v0, p0, Llyd;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llyd;->e:I

    goto :goto_0
.end method

.method b(I)Llye;
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Llyd;->b:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Llyd;->d()V

    .line 195
    :cond_0
    iget-object v0, p0, Llyd;->d:[Llye;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Llyd;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Llyd;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0}, Llyd;->a()I

    move-result v1

    .line 281
    new-instance v2, Llyd;

    invoke-direct {v2, v1}, Llyd;-><init>(I)V

    .line 282
    iget-object v3, p0, Llyd;->c:[I

    iget-object v4, v2, Llyd;->c:[I

    invoke-static {v3, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    :goto_0
    if-ge v0, v1, :cond_1

    .line 284
    iget-object v3, p0, Llyd;->d:[Llye;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, v2, Llyd;->d:[Llye;

    iget-object v4, p0, Llyd;->d:[Llye;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Llye;->b()Llye;

    move-result-object v4

    aput-object v4, v3, v0

    .line 283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    iput v1, v2, Llyd;->e:I

    .line 289
    return-object v2
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Llyd;->c()Llyd;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    if-ne p1, p0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    instance-of v2, p1, Llyd;

    if-nez v2, :cond_2

    move v0, v1

    .line 204
    goto :goto_0

    .line 207
    :cond_2
    check-cast p1, Llyd;

    .line 208
    invoke-virtual {p0}, Llyd;->a()I

    move-result v2

    invoke-virtual {p1}, Llyd;->a()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 209
    goto :goto_0

    .line 211
    :cond_3
    iget-object v3, p0, Llyd;->c:[I

    iget-object v4, p1, Llyd;->c:[I

    iget v5, p0, Llyd;->e:I

    move v2, v1

    .line 1260
    :goto_1
    if-ge v2, v5, :cond_6

    .line 1261
    aget v6, v3, v2

    aget v7, v4, v2

    if-eq v6, v7, :cond_5

    move v2, v1

    .line 211
    :goto_2
    if-eqz v2, :cond_4

    iget-object v3, p0, Llyd;->d:[Llye;

    iget-object v4, p1, Llyd;->d:[Llye;

    iget v5, p0, Llyd;->e:I

    move v2, v1

    .line 1269
    :goto_3
    if-ge v2, v5, :cond_8

    .line 1270
    aget-object v6, v3, v2

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Llye;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    move v2, v1

    .line 212
    :goto_4
    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 1260
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v2, v0

    .line 1265
    goto :goto_2

    .line 1269
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move v2, v0

    .line 1274
    goto :goto_4
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 217
    iget-boolean v0, p0, Llyd;->b:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Llyd;->d()V

    .line 220
    :cond_0
    const/16 v1, 0x11

    .line 221
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Llyd;->e:I

    if-ge v0, v2, :cond_1

    .line 222
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Llyd;->c:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 223
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Llyd;->d:[Llye;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Llye;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    return v1
.end method
