.class final Llxg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;

.field static final b:Llxh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Llxg;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llxg;->a:Ljava/util/logging/Logger;

    .line 3981
    sget-boolean v0, Llxk;->a:Z

    .line 61
    if-eqz v0, :cond_0

    new-instance v0, Llxk;

    invoke-direct {v0}, Llxk;-><init>()V

    :goto_0
    sput-object v0, Llxg;->b:Llxh;

    .line 60
    return-void

    .line 61
    :cond_0
    new-instance v0, Llxi;

    invoke-direct {v0}, Llxi;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 165
    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    .line 166
    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method static a(II)I
    .locals 1

    .prologue
    .line 170
    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    const/16 v0, -0x41

    if-le p1, v0, :cond_1

    .line 172
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    goto :goto_0
.end method

.method static a(III)I
    .locals 2

    .prologue
    const/16 v1, -0x41

    .line 176
    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-le p2, v1, :cond_1

    .line 179
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method static a(Ljava/lang/CharSequence;)I
    .locals 8

    .prologue
    const/16 v7, 0x800

    const/4 v1, 0x0

    .line 226
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v0, v1

    .line 231
    :goto_0
    if-ge v0, v3, :cond_7

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x80

    if-ge v2, v4, :cond_7

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :goto_1
    if-ge v0, v3, :cond_6

    .line 237
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 238
    if-ge v4, v7, :cond_0

    .line 239
    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v2, v4

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2255
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 2257
    :goto_2
    if-ge v0, v4, :cond_4

    .line 2258
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 2259
    if-ge v5, v7, :cond_2

    .line 2260
    rsub-int/lit8 v5, v5, 0x7f

    ushr-int/lit8 v5, v5, 0x1f

    add-int/2addr v1, v5

    .line 2257
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2262
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 2264
    const v6, 0xd800

    if-gt v6, v5, :cond_1

    const v6, 0xdfff

    if-gt v5, v6, :cond_1

    .line 2266
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2267
    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_3

    .line 2268
    new-instance v1, Llxj;

    .line 3210
    invoke-direct {v1, v0, v4}, Llxj;-><init>(II)V

    .line 2268
    throw v1

    .line 2270
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 241
    :cond_4
    add-int v0, v2, v1

    .line 246
    :goto_4
    if-ge v0, v3, :cond_5

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    int-to-long v2, v0

    const-wide v4, 0x100000000L

    add-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x36

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_5
    return v0

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method static a(Ljava/lang/CharSequence;[BII)I
    .locals 1

    .prologue
    .line 278
    sget-object v0, Llxg;->b:Llxh;

    invoke-virtual {v0, p0, p1, p2, p3}, Llxh;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    return v0
.end method

.method static a([BII)I
    .locals 3

    .prologue
    .line 183
    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    .line 184
    sub-int v1, p2, p1

    packed-switch v1, :pswitch_data_0

    .line 188
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 185
    :pswitch_0
    invoke-static {v0}, Llxg;->a(I)I

    move-result v0

    .line 187
    :goto_0
    return v0

    .line 186
    :pswitch_1
    aget-byte v1, p0, p1

    invoke-static {v0, v1}, Llxg;->a(II)I

    move-result v0

    goto :goto_0

    .line 187
    :pswitch_2
    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v1, v2}, Llxg;->a(III)I

    move-result v0

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
