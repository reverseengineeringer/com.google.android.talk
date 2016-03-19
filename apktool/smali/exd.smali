.class public Lexd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbv;


# static fields
.field public static final b:Z

.field private static final e:Lhbu;


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final c:Ljava/lang/String;

.field public d:Lhv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhv",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lhbu;->a:Lhbu;

    sput-object v0, Lexd;->e:Lhbu;

    .line 31
    sget-object v0, Lezi;->t:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lexd;->b:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lexd;->a:Landroid/content/res/Resources;

    .line 75
    iput-object p1, p0, Lexd;->c:Ljava/lang/String;

    .line 76
    sget-boolean v0, Lexd;->b:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lhv;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lhv;-><init>(I)V

    iput-object v0, p0, Lexd;->d:Lhv;

    .line 79
    :cond_0
    return-void
.end method

.method public static a(II)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2093
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2094
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 2095
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 2096
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 2097
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2098
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2100
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 97
    return-object v0
.end method

.method public static a(Landroid/content/Context;IIIILjava/lang/String;)Lexd;
    .locals 6

    .prologue
    .line 1067
    const-string v0, "babel_enable_bitmap_pool"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lexf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lexf;-><init>(IIIILjava/lang/String;)V

    .line 62
    :goto_0
    sget-object v1, Lexd;->e:Lhbu;

    invoke-virtual {v1, v0}, Lhbu;->a(Lhbv;)V

    .line 63
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lexd;

    invoke-direct {v0, p5}, Lexd;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 67
    const-string v0, "babel_enable_bitmap_pool"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(IILexe;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 155
    if-eqz p3, :cond_0

    .line 157
    invoke-interface {p3, p1, p2}, Lexe;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 163
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILandroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 114
    const/4 v0, 0x0

    .line 116
    :try_start_0
    iget-object v1, p0, Lexd;->a:Landroid/content/res/Resources;

    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v1

    const-string v1, "Babel"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Decoding resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :catch_1
    move-exception v1

    const-string v1, "Babel"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Oom decoding resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    sget-object v1, Lexd;->e:Lhbu;

    invoke-virtual {v1}, Lhbu;->a()V

    goto :goto_0
.end method

.method public a([BLandroid/graphics/BitmapFactory$Options;IILexe;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    const/4 v0, 0x0

    .line 145
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    const-string v1, "Babel"

    const-string v2, "Decoding byte array failed."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 171
    invoke-static {p1}, Lbfq;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 2144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lexd;->c(Landroid/graphics/Bitmap;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v0, "Babel"

    const-string v1, "BitmapPool receiving null bitmap"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lexd;->a()V

    .line 91
    :cond_0
    return-void
.end method

.method public b(II)Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method b(Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method protected final c(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    sget-boolean v0, Lexd;->b:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lexd;->d:Lhv;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, p1, v1}, Lhv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lexd;->a()V

    .line 84
    return-void
.end method
