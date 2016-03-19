.class public final Lbfq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static b:I

.field public static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Landroid/graphics/Bitmap;

.field private static h:Landroid/graphics/Bitmap;

.field private static i:Landroid/graphics/Bitmap;

.field private static j:Landroid/graphics/Bitmap;

.field private static k:Landroid/graphics/Bitmap;

.field private static l:Landroid/graphics/Bitmap;

.field private static m:Landroid/graphics/Bitmap;

.field private static n:Landroid/graphics/Bitmap;

.field private static o:Landroid/graphics/Bitmap;

.field private static p:Landroid/graphics/Bitmap;

.field private static q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbeo;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lezi;->d:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lbfq;->a:Z

    .line 55
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    sput-object v0, Lbfq;->q:Ljava/util/Map;

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 71
    sget v0, Lbfq;->e:I

    if-nez v0, :cond_0

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ek:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lbfq;->e:I

    .line 75
    :cond_0
    sget v0, Lbfq;->e:I

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 61
    sget v0, Lbfq;->d:I

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->eB:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lbfq;->d:I

    .line 64
    :cond_0
    sget v0, Lbfq;->d:I

    return v0
.end method

.method public static a(Lbeo;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 111
    sget-object v0, Lbfq;->q:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    sget-object v2, Lbfq;->q:Ljava/util/Map;

    .line 113
    invoke-static {}, Lbfq;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2123
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2124
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2125
    sget-object v0, Lbfr;->a:[I

    invoke-virtual {p0}, Lbeo;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 2145
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown badge type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3036
    :pswitch_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2131
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/google/android/apps/hangouts/R$drawable;->aI:I

    .line 2132
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2133
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2127
    invoke-static {v3, v0}, Lbfq;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 112
    :goto_0
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    sget-object v0, Lbfq;->q:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 4036
    :pswitch_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2139
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/google/android/apps/hangouts/R$drawable;->bc:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2140
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2136
    invoke-static {v3, v0}, Lbfq;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 2141
    goto :goto_0

    :pswitch_2
    move-object v0, v1

    .line 2143
    goto :goto_0

    .line 2125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 5036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 153
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->eJ:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v0, v2, v0

    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    return-void
.end method

.method public static a(Lbfd;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfd;",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 288
    if-nez p1, :cond_1

    .line 316
    :cond_0
    return-void

    .line 292
    :cond_1
    if-eqz p2, :cond_3

    invoke-static {}, Lbfq;->d()I

    move-result v0

    move v1, v0

    .line 294
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 295
    iget-object v3, v0, Lcyx;->h:Ljava/lang/String;

    .line 296
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 297
    sget-boolean v3, Lbfq;->a:Z

    if-eqz v3, :cond_2

    .line 298
    const-string v3, "Avatar url for contact is empty: "

    iget-object v0, v0, Lcyx;->e:Ljava/lang/String;

    .line 300
    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 292
    :cond_3
    invoke-static {}, Lbfq;->a()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 300
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_5
    new-instance v4, Lbhs;

    new-instance v0, Leyd;

    .line 307
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Leyd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, v1}, Leyd;->a(I)Leyd;

    move-result-object v0

    .line 309
    invoke-virtual {v0, v6}, Leyd;->d(Z)Leyd;

    move-result-object v0

    invoke-direct {v4, v0, v7, v6, v7}, Lbhs;-><init>(Leyd;Lbhv;ZLjava/lang/Object;)V

    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 314
    const-class v3, Leit;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    invoke-virtual {v0, v4}, Leit;->c(Lehx;)V

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 319
    if-eqz p0, :cond_1

    sget-object v0, Lbfq;->g:Landroid/graphics/Bitmap;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbfq;->h:Landroid/graphics/Bitmap;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbfq;->i:Landroid/graphics/Bitmap;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbfq;->j:Landroid/graphics/Bitmap;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbfq;->k:Landroid/graphics/Bitmap;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbfq;->l:Landroid/graphics/Bitmap;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbfq;->m:Landroid/graphics/Bitmap;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbfq;->n:Landroid/graphics/Bitmap;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbfq;->o:Landroid/graphics/Bitmap;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbfq;->p:Landroid/graphics/Bitmap;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 80
    sget-object v0, Lbfq;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 82
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->d:I

    .line 84
    invoke-static {v0}, Leye;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    invoke-static {}, Lbfq;->a()I

    move-result v1

    .line 86
    invoke-static {}, Lbfq;->a()I

    move-result v2

    const/4 v3, 0x0

    .line 83
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lbfq;->g:Landroid/graphics/Bitmap;

    .line 89
    :cond_0
    sget-object v0, Lbfq;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static c()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 94
    sget-object v0, Lbfq;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->d:I

    .line 97
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    invoke-static {}, Lbfq;->a()I

    move-result v1

    .line 100
    invoke-static {}, Lbfq;->a()I

    move-result v2

    const/4 v3, 0x0

    .line 96
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lbfq;->h:Landroid/graphics/Bitmap;

    .line 103
    :cond_0
    sget-object v0, Lbfq;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static d()I
    .locals 2

    .prologue
    .line 163
    sget v0, Lbfq;->f:I

    if-nez v0, :cond_0

    .line 6036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 165
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ej:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lbfq;->f:I

    .line 167
    :cond_0
    sget v0, Lbfq;->f:I

    return v0
.end method

.method public static e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lbfq;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 195
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->f:I

    invoke-static {v0}, Leye;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lbfq;->i:Landroid/graphics/Bitmap;

    .line 197
    :cond_0
    sget-object v0, Lbfq;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static f()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lbfq;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 7036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 205
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->f:I

    .line 204
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lbfq;->j:Landroid/graphics/Bitmap;

    .line 207
    :cond_0
    sget-object v0, Lbfq;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static g()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lbfq;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 223
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->g:I

    invoke-static {v0}, Leye;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lbfq;->k:Landroid/graphics/Bitmap;

    .line 225
    :cond_0
    sget-object v0, Lbfq;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static h()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lbfq;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 8036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 233
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->g:I

    .line 232
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lbfq;->l:Landroid/graphics/Bitmap;

    .line 235
    :cond_0
    sget-object v0, Lbfq;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static i()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lbfq;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 241
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->h:I

    .line 242
    invoke-static {v0}, Leye;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lbfq;->m:Landroid/graphics/Bitmap;

    .line 244
    :cond_0
    sget-object v0, Lbfq;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static j()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lbfq;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 9036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 252
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->h:I

    .line 251
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lbfq;->n:Landroid/graphics/Bitmap;

    .line 254
    :cond_0
    sget-object v0, Lbfq;->n:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static k()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lbfq;->o:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 260
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->e:I

    invoke-static {v0}, Leye;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lbfq;->o:Landroid/graphics/Bitmap;

    .line 262
    :cond_0
    sget-object v0, Lbfq;->o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static l()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lbfq;->p:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 268
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->ck:I

    invoke-static {v0}, Leye;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lbfq;->p:Landroid/graphics/Bitmap;

    .line 270
    :cond_0
    sget-object v0, Lbfq;->p:Landroid/graphics/Bitmap;

    return-object v0
.end method
