.class public final Lacr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    const-string v0, "^(?:.*;)?base64,.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lacr;->a:Ljava/util/regex/Pattern;

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 66
    sget v0, Lact;->c:I

    sput v0, Lacr;->b:I

    .line 79
    :goto_0
    return-void

    .line 68
    :cond_0
    sget v0, Labn;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 70
    sget v0, Lact;->c:I

    sput v0, Lacr;->b:I

    goto :goto_0

    .line 71
    :cond_1
    sget v0, Labn;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0x18

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 73
    sget v0, Lact;->b:I

    sput v0, Lacr;->b:I

    goto :goto_0

    .line 76
    :cond_2
    sget v0, Lact;->a:I

    sput v0, Lacr;->b:I

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Laco;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 98
    new-instance v1, Laco;

    invoke-direct {v1}, Laco;-><init>()V

    .line 1207
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1208
    const-string v2, "data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    new-instance v0, Lacs;

    invoke-direct {v0, p0, p1}, Lacs;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2198
    :goto_0
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2199
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2200
    invoke-static {v0, v2}, Lacr;->a(Lacu;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2202
    new-instance v3, Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 107
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 108
    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, p2

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v3, p2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 109
    invoke-static {v0, v2}, Lacr;->a(Lacu;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Laco;->b:Landroid/graphics/Bitmap;

    .line 110
    const/4 v0, 0x0

    iput v0, v1, Laco;->c:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 122
    :goto_1
    return-object v0

    .line 1211
    :cond_0
    new-instance v0, Lacu;

    invoke-direct {v0, p0, p1}, Lacu;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    iput v5, v1, Laco;->c:I

    :goto_2
    move-object v0, v1

    .line 122
    goto :goto_1

    .line 120
    :catch_1
    move-exception v0

    iput v5, v1, Laco;->c:I

    goto :goto_2

    .line 121
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private static a(Lacu;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lacu;->a()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 148
    const-wide/16 v2, -0x1

    :try_start_1
    invoke-static {v1, v2, v3}, Laal;->a(Ljava/io/InputStream;J)I

    move-result v2

    .line 149
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lacu;->a()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 155
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v8, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    if-eqz v8, :cond_3

    if-nez v0, :cond_3

    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_3

    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Image bytes cannot be decoded into a Bitmap."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 172
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 173
    :goto_0
    :try_start_3
    const-string v2, "ImageUtils"

    const-string v3, "ImageUtils#decodeStream(InputStream, Rect, Options) threw an OOME"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    if-eqz v1, :cond_1

    .line 181
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_1
    move-object v0, v7

    .line 184
    :cond_2
    :goto_2
    return-object v0

    .line 165
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 166
    :try_start_5
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 167
    int-to-float v1, v2

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 168
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 169
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 168
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 179
    if-eqz v8, :cond_2

    .line 181
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    .line 179
    :cond_4
    if-eqz v8, :cond_2

    .line 181
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    .line 175
    :catch_3
    move-exception v0

    move-object v8, v7

    .line 176
    :goto_3
    :try_start_8
    const-string v1, "ImageUtils"

    const-string v2, "ImageUtils#decodeStream(InputStream, Rect, Options) threw an IOE"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 179
    if-eqz v8, :cond_5

    .line 181
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5
    :goto_4
    move-object v0, v7

    .line 184
    goto :goto_2

    .line 179
    :catchall_0
    move-exception v0

    move-object v8, v7

    :goto_5
    if-eqz v8, :cond_6

    .line 181
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 184
    :cond_6
    :goto_6
    throw v0

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_6

    .line 179
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 175
    :catch_7
    move-exception v0

    move-object v8, v1

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_3

    .line 172
    :catch_9
    move-exception v0

    move-object v1, v7

    goto :goto_0

    :catch_a
    move-exception v0

    goto :goto_0
.end method
