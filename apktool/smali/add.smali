.class public final Ladd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 37
    new-array v0, v3, [B

    sput-object v0, Ladd;->a:[B

    .line 41
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 42
    sget-object v1, Ladd;->a:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    .line 45
    sget-object v1, Ladd;->a:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 47
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    .line 48
    sget-object v1, Ladd;->a:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 50
    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    .line 51
    sget-object v1, Ladd;->a:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 54
    :cond_3
    sget-object v0, Ladd;->a:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 55
    sget-object v0, Ladd;->a:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 56
    return-void
.end method

.method public static a([B)[B
    .locals 11

    .prologue
    const/16 v10, 0x3d

    const/4 v1, 0x0

    .line 1152
    array-length v0, p0

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    .line 1155
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 1156
    aget-byte v3, p0, v0

    .line 2133
    if-eq v3, v10, :cond_1

    .line 2135
    sget-object v5, Ladd;->a:[B

    aget-byte v3, v5, v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    move v3, v1

    .line 1156
    :goto_1
    if-eqz v3, :cond_0

    .line 1157
    add-int/lit8 v3, v2, 0x1

    aget-byte v5, p0, v0

    aput-byte v5, v4, v2

    move v2, v3

    .line 1155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2138
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 1161
    :cond_2
    new-array v3, v2, [B

    .line 1163
    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    array-length v0, v3

    if-nez v0, :cond_4

    .line 70
    new-array v0, v1, [B

    .line 123
    :cond_3
    :goto_2
    return-object v0

    .line 73
    :cond_4
    array-length v0, v3

    div-int/lit8 v4, v0, 0x4

    .line 83
    array-length v0, v3

    .line 85
    :cond_5
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, v3, v2

    if-ne v2, v10, :cond_6

    .line 86
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_5

    .line 87
    new-array v0, v1, [B

    goto :goto_2

    .line 90
    :cond_6
    sub-int/2addr v0, v4

    new-array v0, v0, [B

    move v2, v1

    .line 93
    :goto_3
    if-ge v1, v4, :cond_3

    .line 94
    shl-int/lit8 v5, v1, 0x2

    .line 95
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, v3, v6

    .line 96
    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v3, v7

    .line 98
    sget-object v8, Ladd;->a:[B

    aget-byte v9, v3, v5

    aget-byte v8, v8, v9

    .line 99
    sget-object v9, Ladd;->a:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v3, v5

    aget-byte v5, v9, v5

    .line 101
    if-eq v6, v10, :cond_8

    if-eq v7, v10, :cond_8

    .line 103
    sget-object v9, Ladd;->a:[B

    aget-byte v6, v9, v6

    .line 104
    sget-object v9, Ladd;->a:[B

    aget-byte v7, v9, v7

    .line 106
    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v9, v5, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 107
    add-int/lit8 v8, v2, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v9, v6, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v0, v8

    .line 109
    add-int/lit8 v5, v2, 0x2

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 121
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x3

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 110
    :cond_8
    if-ne v6, v10, :cond_9

    .line 112
    shl-int/lit8 v6, v8, 0x2

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    goto :goto_4

    .line 113
    :cond_9
    if-ne v7, v10, :cond_7

    .line 115
    sget-object v7, Ladd;->a:[B

    aget-byte v6, v7, v6

    .line 117
    shl-int/lit8 v7, v8, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 118
    add-int/lit8 v7, v2, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    goto :goto_4
.end method
