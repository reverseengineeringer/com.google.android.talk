.class public Lgmk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Ljava/util/concurrent/Executor;

.field private static k:Z


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lfic;

.field final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:F

.field g:F

.field private h:Z

.field private i:Lgml;

.field private final j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lgml;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lgmk;->a:Ljava/util/concurrent/Executor;

    .line 4057
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 4058
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lgmk;->a:Ljava/util/concurrent/Executor;

    .line 53
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lfic;Z)V
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgmk;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgmk;->j:Ljava/util/LinkedList;

    .line 101
    iput-object p1, p0, Lgmk;->b:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lgmk;->c:Lfic;

    .line 103
    iput-boolean p3, p0, Lgmk;->e:Z

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    sget v1, Laal;->th:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lgmk;->g:F

    .line 106
    sget v1, Laal;->tg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lgmk;->f:F

    .line 107
    const-string v0, "activity"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1039
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 2023
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 109
    :goto_0
    sput-boolean v0, Lgmk;->k:Z

    .line 110
    return-void

    .line 1042
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(IIII)I
    .locals 4

    .prologue
    .line 309
    sget-boolean v0, Lgmk;->k:Z

    if-eqz v0, :cond_1

    .line 310
    const/4 v0, 0x2

    .line 328
    :cond_0
    return v0

    .line 312
    :cond_1
    const/4 v0, 0x1

    .line 314
    if-gt p0, p3, :cond_2

    if-le p1, p2, :cond_0

    .line 316
    :cond_2
    div-int/lit8 v1, p0, 0x2

    .line 317
    div-int/lit8 v2, p1, 0x2

    .line 322
    :goto_0
    div-int v3, v1, v0

    if-lt v3, p3, :cond_0

    div-int v3, v2, v0

    if-lt v3, p2, :cond_0

    .line 324
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 377
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 3419
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 3420
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 3423
    if-ne p1, v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 3424
    :goto_0
    return-object p0

    .line 3427
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3428
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v0

    int-to-float v6, v2

    div-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 3431
    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3436
    int-to-float v3, p1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 3437
    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3438
    int-to-float v0, v1

    mul-float/2addr v0, v7

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    sub-float/2addr v0, v6

    float-to-int v0, v0

    .line 3439
    int-to-float v6, v2

    mul-float/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 3442
    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3443
    sub-int v0, v2, v4

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3445
    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;IIII)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 333
    if-nez p0, :cond_0

    .line 354
    :goto_0
    return-object v0

    .line 336
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 337
    invoke-static {p1, p2, p3, p4}, Lgmk;->a(IIII)I

    move-result v1

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 339
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 340
    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 341
    sget-boolean v1, Lgmk;->k:Z

    if-eqz v1, :cond_1

    .line 342
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 347
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 2359
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v1

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_2

    .line 3359
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 351
    :cond_2
    :goto_2
    throw v0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 350
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lgmk;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lgmk;->i:Lgml;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgmk;->i:Lgml;

    iget-boolean v0, v0, Lgml;->e:Z

    if-eqz v0, :cond_0

    .line 183
    :cond_2
    iget-object v0, p0, Lgmk;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgml;

    iput-object v0, p0, Lgmk;->i:Lgml;

    .line 184
    iget-object v0, p0, Lgmk;->i:Lgml;

    invoke-virtual {v0}, Lgml;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 159
    const/4 v0, 0x0

    move v1, v0

    .line 161
    :goto_0
    iget-object v0, p0, Lgmk;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 162
    iget-object v0, p0, Lgmk;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgml;

    iget-object v0, v0, Lgml;->f:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    .line 163
    iget-object v0, p0, Lgmk;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lgmk;->i:Lgml;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgmk;->i:Lgml;

    iget-object v0, v0, Lgml;->f:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_2

    .line 170
    iget-object v0, p0, Lgmk;->i:Lgml;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgml;->e:Z

    .line 171
    invoke-direct {p0}, Lgmk;->a()V

    .line 173
    :cond_2
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;IIILgml;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 196
    :try_start_0
    iget-object v0, p0, Lgmk;->i:Lgml;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p6, :cond_2

    .line 224
    iget-boolean v0, p0, Lgmk;->h:Z

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0}, Lgmk;->a()V

    .line 227
    :cond_0
    if-eqz p2, :cond_1

    .line 229
    :try_start_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lgmk;->i:Lgml;

    .line 203
    iget-boolean v0, p0, Lgmk;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 224
    iget-boolean v0, p0, Lgmk;->h:Z

    if-nez v0, :cond_3

    .line 225
    invoke-direct {p0}, Lgmk;->a()V

    .line 227
    :cond_3
    if-eqz p2, :cond_1

    .line 229
    :try_start_3
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 206
    :cond_4
    :try_start_4
    iget-object v0, p6, Lgml;->f:Landroid/widget/ImageView;

    .line 207
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p6, :cond_5

    iget-boolean v0, p6, Lgml;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_7

    .line 224
    :cond_5
    iget-boolean v0, p0, Lgmk;->h:Z

    if-nez v0, :cond_6

    .line 225
    invoke-direct {p0}, Lgmk;->a()V

    .line 227
    :cond_6
    if-eqz p2, :cond_1

    .line 229
    :try_start_5
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 212
    :cond_7
    :try_start_6
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p2, :cond_9

    .line 213
    :cond_8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Avatar loaded: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  pfd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_9
    if-eqz p2, :cond_e

    .line 217
    new-instance v0, Lgmm;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lgmm;-><init>(Lgmk;Lgml;Landroid/os/ParcelFileDescriptor;III)V

    .line 2239
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_b

    .line 2240
    sget-object v1, Lgmk;->a:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lgmm;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    move-object p2, v7

    .line 224
    :goto_2
    iget-boolean v0, p0, Lgmk;->h:Z

    if-nez v0, :cond_a

    .line 225
    invoke-direct {p0}, Lgmk;->a()V

    .line 227
    :cond_a
    if-eqz p2, :cond_1

    .line 229
    :try_start_7
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 232
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 2242
    :cond_b
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0, v1}, Lgmm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 224
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lgmk;->h:Z

    if-nez v1, :cond_c

    .line 225
    invoke-direct {p0}, Lgmk;->a()V

    .line 227
    :cond_c
    if-eqz p2, :cond_d

    .line 229
    :try_start_9
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 232
    :cond_d
    :goto_3
    throw v0

    .line 221
    :cond_e
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0, p6, v0}, Lgmk;->a(Lgml;Landroid/graphics/Bitmap;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;Lgml;I)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 189
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgmk;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;IIILgml;)V

    .line 190
    return-void
.end method

.method public a(Lgml;)V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lgmk;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lgml;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v1, p1, Lgml;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lgmk;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lgml;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v0, p1, Lgml;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lgmk;->a(Landroid/widget/ImageView;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p1, Lgml;->f:Landroid/widget/ImageView;

    .line 2141
    invoke-virtual {p0, v0}, Lgmk;->a(Landroid/widget/ImageView;)V

    .line 2143
    iget-object v1, p0, Lgmk;->c:Lfic;

    invoke-interface {v1}, Lfic;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2148
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2149
    iget-object v0, p0, Lgmk;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2151
    invoke-direct {p0}, Lgmk;->a()V

    goto :goto_0
.end method

.method protected a(Lgml;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 452
    if-eqz p2, :cond_0

    .line 453
    iget-object v0, p1, Lgml;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 455
    :cond_0
    return-void
.end method
