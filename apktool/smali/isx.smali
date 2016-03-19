.class public final Lisx;
.super Lita;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[C


# instance fields
.field private final c:Z

.field private final d:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lisx;->a:[C

    .line 99
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lisx;->b:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lita;-><init>()V

    .line 124
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'%\' character cannot be specified as \'safe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    iput-boolean p2, p0, Lisx;->c:Z

    .line 138
    invoke-static {p1}, Lisx;->b(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lisx;->d:[Z

    .line 139
    return-void
.end method

.method private static b(Ljava/lang/String;)[Z
    .locals 8

    .prologue
    const/16 v3, 0x7a

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 149
    array-length v5, v4

    move v1, v0

    move v2, v3

    :goto_0
    if-ge v1, v5, :cond_0

    aget-char v6, v4, v1

    .line 150
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    add-int/lit8 v1, v2, 0x1

    new-array v2, v1, [Z

    .line 153
    const/16 v1, 0x30

    :goto_1
    const/16 v5, 0x39

    if-gt v1, v5, :cond_1

    .line 154
    aput-boolean v7, v2, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_1
    const/16 v1, 0x41

    :goto_2
    const/16 v5, 0x5a

    if-gt v1, v5, :cond_2

    .line 157
    aput-boolean v7, v2, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 159
    :cond_2
    const/16 v1, 0x61

    :goto_3
    if-gt v1, v3, :cond_3

    .line 160
    aput-boolean v7, v2, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 162
    :cond_3
    array-length v1, v4

    :goto_4
    if-ge v0, v1, :cond_4

    aget-char v3, v4, v0

    .line 163
    aput-boolean v7, v2, v3

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 165
    :cond_4
    return-object v2
.end method


# virtual methods
.method protected a(Ljava/lang/CharSequence;II)I
    .locals 2

    .prologue
    .line 174
    :goto_0
    if-ge p2, p3, :cond_0

    .line 175
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 176
    iget-object v1, p0, Lisx;->d:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lisx;->d:[Z

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_0

    .line 174
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v4

    .line 190
    :goto_0
    if-ge v1, v0, :cond_f

    .line 191
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 192
    iget-object v3, p0, Lisx;->d:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lisx;->d:[Z

    aget-boolean v2, v3, v2

    if-nez v2, :cond_10

    .line 1132
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 2028
    sget-object v0, Lisy;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    move v2, v4

    move-object v3, v0

    move v5, v1

    move v0, v4

    .line 1139
    :goto_1
    if-ge v5, v6, :cond_c

    .line 2221
    if-ge v5, v6, :cond_6

    .line 2222
    add-int/lit8 v7, v5, 0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2223
    const v8, 0xd800

    if-lt v1, v8, :cond_1

    const v8, 0xdfff

    if-le v1, v8, :cond_2

    .line 1141
    :cond_1
    :goto_2
    if-gez v1, :cond_7

    .line 1142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trailing high surrogate at end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2226
    :cond_2
    const v8, 0xdbff

    if-gt v1, v8, :cond_5

    .line 2228
    if-ne v7, v6, :cond_3

    .line 2229
    neg-int v1, v1

    goto :goto_2

    .line 2232
    :cond_3
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 2233
    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2234
    invoke-static {v1, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    goto :goto_2

    .line 2236
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x53

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected low surrogate but got char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2240
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v2, v7, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x52

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected low surrogate character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2245
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index exceeds specified range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_7
    invoke-virtual {p0, v1}, Lita;->a(I)[C

    move-result-object v7

    .line 1148
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    :goto_3
    add-int/2addr v1, v5

    .line 1149
    if-eqz v7, :cond_11

    .line 1150
    sub-int v8, v5, v2

    .line 1154
    add-int v9, v0, v8

    array-length v10, v7

    add-int/2addr v9, v10

    .line 1155
    array-length v10, v3

    if-ge v10, v9, :cond_8

    .line 1156
    add-int/2addr v9, v6

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x20

    .line 1157
    invoke-static {v3, v0, v9}, Lita;->a([CII)[C

    move-result-object v3

    .line 1160
    :cond_8
    if-lez v8, :cond_9

    .line 1161
    invoke-virtual {p1, v2, v5, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 1162
    add-int/2addr v0, v8

    .line 1164
    :cond_9
    array-length v2, v7

    if-lez v2, :cond_a

    .line 1165
    array-length v2, v7

    invoke-static {v7, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1166
    array-length v2, v7

    add-int/2addr v0, v2

    :cond_a
    move v2, v0

    move v0, v1

    .line 1171
    :goto_4
    invoke-virtual {p0, p1, v1, v6}, Lita;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    move v5, v1

    move v11, v2

    move v2, v0

    move v0, v11

    .line 1172
    goto/16 :goto_1

    .line 1148
    :cond_b
    const/4 v1, 0x1

    goto :goto_3

    .line 1176
    :cond_c
    sub-int v1, v6, v2

    .line 1177
    if-lez v1, :cond_e

    .line 1178
    add-int/2addr v1, v0

    .line 1179
    array-length v5, v3

    if-ge v5, v1, :cond_d

    .line 1180
    invoke-static {v3, v0, v1}, Lita;->a([CII)[C

    move-result-object v3

    .line 1182
    :cond_d
    invoke-virtual {p1, v2, v6, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v1

    .line 1185
    :cond_e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    .line 196
    :cond_f
    return-object p1

    .line 190
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    move v11, v2

    move v2, v0

    move v0, v11

    goto :goto_4
.end method

.method protected a(I)[C
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x25

    .line 206
    iget-object v0, p0, Lisx;->d:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lisx;->d:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 208
    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lisx;->c:Z

    if-eqz v0, :cond_1

    .line 209
    sget-object v0, Lisx;->a:[C

    goto :goto_0

    .line 210
    :cond_1
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_2

    .line 213
    new-array v0, v3, [C

    .line 214
    aput-char v2, v0, v1

    .line 215
    sget-object v1, Lisx;->b:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 216
    sget-object v1, Lisx;->b:[C

    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    goto :goto_0

    .line 218
    :cond_2
    const/16 v0, 0x7ff

    if-gt p1, v0, :cond_3

    .line 221
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 222
    aput-char v2, v0, v1

    .line 223
    aput-char v2, v0, v3

    .line 224
    const/4 v1, 0x5

    sget-object v2, Lisx;->b:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 225
    ushr-int/lit8 v1, p1, 0x4

    .line 226
    const/4 v2, 0x4

    sget-object v3, Lisx;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 227
    ushr-int/lit8 v1, v1, 0x2

    .line 228
    sget-object v2, Lisx;->b:[C

    and-int/lit8 v3, v1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v6

    .line 229
    ushr-int/lit8 v1, v1, 0x4

    .line 230
    sget-object v2, Lisx;->b:[C

    or-int/lit8 v1, v1, 0xc

    aget-char v1, v2, v1

    aput-char v1, v0, v5

    goto :goto_0

    .line 232
    :cond_3
    const v0, 0xffff

    if-gt p1, v0, :cond_4

    .line 235
    const/16 v0, 0x9

    new-array v0, v0, [C

    .line 236
    aput-char v2, v0, v1

    .line 237
    const/16 v1, 0x45

    aput-char v1, v0, v5

    .line 238
    aput-char v2, v0, v3

    .line 239
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 240
    const/16 v1, 0x8

    sget-object v2, Lisx;->b:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 241
    ushr-int/lit8 v1, p1, 0x4

    .line 242
    const/4 v2, 0x7

    sget-object v3, Lisx;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 243
    ushr-int/lit8 v1, v1, 0x2

    .line 244
    const/4 v2, 0x5

    sget-object v3, Lisx;->b:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 245
    ushr-int/lit8 v1, v1, 0x4

    .line 246
    const/4 v2, 0x4

    sget-object v3, Lisx;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 247
    ushr-int/lit8 v1, v1, 0x2

    .line 248
    sget-object v2, Lisx;->b:[C

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    goto/16 :goto_0

    .line 250
    :cond_4
    const v0, 0x10ffff

    if-gt p1, v0, :cond_5

    .line 251
    const/16 v0, 0xc

    new-array v0, v0, [C

    .line 254
    aput-char v2, v0, v1

    .line 255
    const/16 v1, 0x46

    aput-char v1, v0, v5

    .line 256
    aput-char v2, v0, v3

    .line 257
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 258
    const/16 v1, 0x9

    aput-char v2, v0, v1

    .line 259
    const/16 v1, 0xb

    sget-object v2, Lisx;->b:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 260
    ushr-int/lit8 v1, p1, 0x4

    .line 261
    const/16 v2, 0xa

    sget-object v3, Lisx;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 262
    ushr-int/lit8 v1, v1, 0x2

    .line 263
    const/16 v2, 0x8

    sget-object v3, Lisx;->b:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 264
    ushr-int/lit8 v1, v1, 0x4

    .line 265
    const/4 v2, 0x7

    sget-object v3, Lisx;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 266
    ushr-int/lit8 v1, v1, 0x2

    .line 267
    const/4 v2, 0x5

    sget-object v3, Lisx;->b:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 268
    ushr-int/lit8 v1, v1, 0x4

    .line 269
    const/4 v2, 0x4

    sget-object v3, Lisx;->b:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 270
    ushr-int/lit8 v1, v1, 0x2

    .line 271
    sget-object v2, Lisx;->b:[C

    and-int/lit8 v1, v1, 0x7

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    goto/16 :goto_0

    .line 275
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid unicode character value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
