.class public final Lade;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lif",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[I

.field private static final c:[Ljava/lang/String;

.field private static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v2, 0x18

    const/4 v0, 0x0

    .line 311
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    sput-object v1, Lade;->b:[I

    .line 371
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "*"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "us-ascii"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "iso-8859-1"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "iso-8859-2"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "iso-8859-3"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "iso-8859-4"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "iso-8859-5"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "iso-8859-6"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "iso-8859-7"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "iso-8859-8"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "iso-8859-9"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "shift_JIS"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "euc-jp"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "euc-kr"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "iso-2022-jp"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "iso-2022-jp-2"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "utf-8"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "gbk"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "gb18030"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "gb2312"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "big5"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "iso-10646-ucs-2"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "utf-16"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "hz-gb-2312"

    aput-object v3, v1, v2

    sput-object v1, Lade;->c:[Ljava/lang/String;

    .line 403
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lade;->d:Landroid/util/SparseArray;

    .line 404
    new-instance v1, Lif;

    invoke-direct {v1}, Lif;-><init>()V

    sput-object v1, Lade;->a:Lif;

    .line 406
    sget-object v1, Lade;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 407
    :goto_0
    if-gt v0, v1, :cond_0

    .line 408
    sget-object v2, Lade;->d:Landroid/util/SparseArray;

    sget-object v3, Lade;->b:[I

    aget v3, v3, v0

    sget-object v4, Lade;->c:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    sget-object v2, Lade;->a:Lif;

    sget-object v3, Lade;->c:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lade;->b:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    return-void

    .line 311
    :array_0
    .array-data 4
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0x11
        0x12
        0x26
        0x27
        0x28
        0x6a
        0x71
        0x72
        0x7e9
        0x7ea
        0x3e8
        0x3f7
        0x825
    .end array-data
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lade;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 426
    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v0

    .line 429
    :cond_0
    return-object v0
.end method
