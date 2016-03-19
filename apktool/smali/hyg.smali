.class public final Lhyg;
.super Ligt;
.source "SourceFile"

# interfaces
.implements Lhwi;
.implements Lhye;


# instance fields
.field b:Lhyq;

.field private final d:Lhzj;

.field private final e:I

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ligq;",
            "Ligp;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lhya;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lhv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhv",
            "<",
            "Ligq;",
            "Lhya;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lhyw;

.field private j:J

.field private final k:Lhxm;

.field private final l:Lhxm;

.field private final m:I

.field private final n:[Lhxy;

.field private final o:Lifn;

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lhzh;)V
    .locals 10

    .prologue
    .line 106
    invoke-direct {p0, p1}, Ligt;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhyg;->f:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhyg;->g:Ljava/util/HashSet;

    .line 108
    invoke-static {p1}, Laal;->O(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lhyg;->m:I

    .line 110
    invoke-virtual {p2}, Lhzh;->b()Lhzf;

    move-result-object v0

    .line 111
    new-instance v1, Lhxm;

    iget-object v3, v0, Lhzf;->a:Ljava/lang/String;

    iget-wide v4, v0, Lhzf;->b:J

    iget-wide v6, v0, Lhzf;->c:J

    iget v8, v0, Lhzf;->d:F

    iget v9, v0, Lhzf;->e:F

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lhxm;-><init>(Landroid/content/Context;Ljava/lang/String;JJFF)V

    iput-object v1, p0, Lhyg;->k:Lhxm;

    .line 115
    invoke-virtual {p2}, Lhzh;->c()Lhzf;

    move-result-object v0

    .line 116
    new-instance v1, Lhxm;

    iget-object v3, v0, Lhzf;->a:Ljava/lang/String;

    iget-wide v4, v0, Lhzf;->b:J

    iget-wide v6, v0, Lhzf;->c:J

    iget v8, v0, Lhzf;->d:F

    iget v9, v0, Lhzf;->e:F

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lhxm;-><init>(Landroid/content/Context;Ljava/lang/String;JJFF)V

    iput-object v1, p0, Lhyg;->l:Lhxm;

    .line 120
    invoke-virtual {p2}, Lhzh;->a()Lhzj;

    move-result-object v0

    iput-object v0, p0, Lhyg;->d:Lhzj;

    .line 122
    iget-object v0, p0, Lhyg;->d:Lhzj;

    iget v0, v0, Lhzj;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lhyg;->e:I

    .line 1187
    new-instance v0, Lhyi;

    iget-object v1, p0, Lhyg;->d:Lhzj;

    iget v1, v1, Lhzj;->a:I

    invoke-direct {v0, p0, v1}, Lhyi;-><init>(Lhyg;I)V

    .line 124
    iput-object v0, p0, Lhyg;->h:Lhv;

    .line 126
    invoke-static {p1}, Laal;->M(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 127
    const/high16 v1, 0x43700000    # 240.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lhyg;->p:F

    .line 128
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lhyg;->q:I

    .line 129
    iget v0, p0, Lhyg;->q:I

    if-nez v0, :cond_0

    .line 130
    const/16 v0, 0x280

    iput v0, p0, Lhyg;->q:I

    .line 133
    :cond_0
    iget v0, p0, Lhyg;->q:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    iget v1, p0, Lhyg;->p:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lhyg;->r:I

    .line 135
    iget v0, p0, Lhyg;->q:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lhyg;->s:I

    .line 1219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_5

    .line 1220
    const/4 v0, 0x0

    .line 137
    :cond_1
    :goto_0
    iput-object v0, p0, Lhyg;->i:Lhyw;

    .line 138
    const-class v0, Lhxy;

    invoke-static {p1, v0}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lhxy;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhxy;

    iput-object v0, p0, Lhyg;->n:[Lhxy;

    .line 140
    iget-object v0, p0, Lhyg;->n:[Lhxy;

    new-instance v1, Lhyh;

    invoke-direct {v1, p0}, Lhyh;-><init>(Lhyg;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    sget v1, Laal;->uc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1678
    iget v1, p0, Lhyg;->m:I

    const/16 v2, 0x100

    if-lt v1, v2, :cond_2

    .line 1679
    const/high16 v0, 0x1000000

    .line 149
    :cond_2
    iput v0, p0, Lhyg;->t:I

    .line 151
    const-class v0, Lifn;

    invoke-static {p1, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lifn;

    iput-object v0, p0, Lhyg;->o:Lifn;

    .line 153
    const-string v0, "ImageResourceManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2574
    new-instance v0, Lhyk;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v0, p0, v1}, Lhyk;-><init>(Lhyg;Ljava/io/Writer;)V

    .line 2580
    invoke-virtual {p0, v0}, Lhyg;->a(Ljava/io/PrintWriter;)V

    .line 2581
    const/4 v1, 0x4

    const-string v2, "ImageResourceManager"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Laal;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_3
    invoke-static {p1}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    .line 158
    const-class v1, Lhwi;

    invoke-virtual {v0, v1, p0}, Lilh;->b(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 159
    iget-object v1, p0, Lhyg;->i:Lhyw;

    if-eqz v1, :cond_4

    .line 160
    const-class v1, Lhwi;

    iget-object v2, p0, Lhyg;->i:Lhyw;

    invoke-virtual {v0, v1, v2}, Lilh;->b(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 165
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v1, Lhxw;

    invoke-direct {v1}, Lhxw;-><init>()V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    new-instance v0, Lhyf;

    invoke-direct {v0, p1}, Lhyf;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 173
    return-void

    .line 1223
    :cond_5
    new-instance v0, Lhyw;

    iget-object v1, p0, Lhyg;->d:Lhzj;

    iget v1, v1, Lhzj;->c:I

    invoke-direct {v0, v1}, Lhyw;-><init>(I)V

    .line 1225
    iget-object v1, p0, Lhyg;->d:Lhzj;

    iget-boolean v1, v1, Lhzj;->f:Z

    if-eqz v1, :cond_1

    .line 1226
    new-instance v1, Lhyq;

    iget-object v2, p0, Lhyg;->d:Lhzj;

    .line 1227
    invoke-virtual {p0}, Lhyg;->f()I

    move-result v3

    invoke-virtual {p0}, Lhyg;->e()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lhyq;-><init>(Lhzj;Lhyw;II)V

    iput-object v1, p0, Lhyg;->b:Lhyq;

    .line 1230
    new-instance v1, Lhyj;

    invoke-direct {v1, p0}, Lhyj;-><init>(Lhyg;)V

    invoke-static {v1}, Laal;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lhyg;->t:I

    return v0
.end method

.method public a(II)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    iget-object v1, p0, Lhyg;->i:Lhyw;

    if-eqz v1, :cond_0

    .line 468
    iget-object v0, p0, Lhyg;->i:Lhyw;

    invoke-virtual {v0, p1, p2}, Lhyw;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 471
    :cond_0
    if-nez v0, :cond_1

    .line 472
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 475
    :cond_1
    return-object v0
.end method

.method public a(Ligq;)Ligp;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lhyg;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhya;

    .line 286
    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhyg;->h:Lhv;

    invoke-virtual {v0, p1}, Lhv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligp;

    goto :goto_0
.end method

.method public a(Lhya;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lhyg;->n:[Lhxy;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 178
    iget-object v1, p0, Lhyg;->n:[Lhxy;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lhxy;->a(Lhya;Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 183
    :goto_1
    return-object v0

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lhyg;->i:Lhyw;

    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lhyg;->b:Lhyq;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lhyg;->b:Lhyq;

    invoke-virtual {v0}, Lhyq;->a()V

    .line 494
    :cond_1
    iget-object v0, p0, Lhyg;->i:Lhyw;

    invoke-virtual {v0, p1}, Lhyw;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 496
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public a(Lhya;)V
    .locals 2

    .prologue
    .line 518
    iget-object v1, p0, Lhyg;->g:Ljava/util/HashSet;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lhyg;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ligp;)V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lhyg;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ligp;->l()Ligq;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ligp;->l()Ligq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Resource is not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 339
    check-cast v0, Lhya;

    .line 340
    invoke-virtual {v0}, Lhya;->m()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 365
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Illegal resource state: "

    .line 366
    invoke-virtual {p1}, Ligp;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :pswitch_1
    invoke-virtual {v0}, Lhya;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {v0}, Lhya;->l()Ligq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Requesting image load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lhya;->c(I)V

    .line 353
    invoke-virtual {p0, p1}, Lhyg;->c(Ligp;)V

    .line 362
    :pswitch_2
    return-void

    .line 366
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ligp;II)V
    .locals 3

    .prologue
    const/4 v1, 0x5

    .line 403
    instance-of v0, p1, Lhya;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    .line 404
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ligt;->a(Ligp;II)V

    .line 421
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 408
    check-cast v0, Lhya;

    .line 4227
    iget-object v0, v0, Lhya;->b:Lhyo;

    invoke-virtual {v0}, Lhyo;->a()Z

    move-result v0

    .line 408
    if-eqz v0, :cond_3

    .line 409
    invoke-virtual {p1}, Ligp;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {p1}, Ligp;->l()Ligq;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Retrying image load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ligp;->c(I)V

    .line 415
    invoke-virtual {p0, p1}, Lhyg;->c(Ligp;)V

    goto :goto_0

    .line 418
    :cond_3
    invoke-virtual {p1, v1}, Ligp;->c(I)V

    .line 419
    invoke-super {p0, p1, v1, p3}, Ligt;->a(Ligp;II)V

    goto :goto_0
.end method

.method public a(Ligp;Ligr;)V
    .locals 4

    .prologue
    .line 295
    invoke-static {}, Laal;->w()V

    .line 297
    invoke-virtual {p1}, Ligp;->l()Ligq;

    move-result-object v1

    .line 298
    iget-object v0, p0, Lhyg;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligp;

    .line 299
    if-eqz v0, :cond_2

    .line 300
    if-eq v0, p1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Duplicate resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Check getManagedResource() prior to calling loadResource. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    invoke-virtual {p1}, Ligp;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Adding another consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_1
    invoke-virtual {p1, p2}, Ligp;->a(Ligr;)V

    .line 331
    :goto_0
    return-void

    .line 311
    :cond_2
    iget-object v0, p0, Lhyg;->h:Lhv;

    invoke-virtual {v0, v1}, Lhv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligp;

    .line 312
    if-eqz v0, :cond_5

    .line 313
    if-eq v0, p1, :cond_3

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Duplicate resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Check getManagedResource() prior to calling loadResource. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_3
    invoke-virtual {p1}, Ligp;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Activating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_4
    iget-object v0, p0, Lhyg;->h:Lhv;

    invoke-virtual {v0, v1}, Lhv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lhyg;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p1, p2}, Ligp;->a(Ligr;)V

    goto :goto_0

    .line 326
    :cond_5
    iget-object v0, p0, Lhyg;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p1}, Ligp;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 328
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "loadResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_6
    invoke-virtual {p1, p2}, Ligp;->a(Ligr;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 10

    .prologue
    .line 589
    iget-object v0, p0, Lhyg;->h:Lhv;

    invoke-virtual {v0}, Lhv;->g()Ljava/util/Map;

    move-result-object v2

    .line 590
    iget-object v0, p0, Lhyg;->d:Lhzj;

    iget v0, v0, Lhzj;->a:I

    iget-object v1, p0, Lhyg;->h:Lhv;

    .line 591
    invoke-virtual {v1}, Lhv;->a()I

    move-result v1

    .line 592
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lhyg;->h:Lhv;

    .line 593
    invoke-virtual {v4}, Lhv;->e()I

    move-result v4

    iget-object v5, p0, Lhyg;->h:Lhv;

    .line 594
    invoke-virtual {v5}, Lhv;->c()I

    move-result v5

    iget-object v6, p0, Lhyg;->h:Lhv;

    .line 595
    invoke-virtual {v6}, Lhv;->d()I

    move-result v6

    iget-object v7, p0, Lhyg;->h:Lhv;

    .line 596
    invoke-virtual {v7}, Lhv;->f()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0xba

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Image cache size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "; cached size: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; cached bitmaps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; put count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; hit count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; miss count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; eviction count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    const-string v0, "Image cache is empty"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    :cond_0
    iget-object v1, p0, Lhyg;->g:Ljava/util/HashSet;

    monitor-enter v1

    .line 607
    :try_start_0
    iget-object v0, p0, Lhyg;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 608
    iget-object v0, p0, Lhyg;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhya;

    .line 609
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Downloading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 601
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligq;

    .line 602
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhya;

    invoke-virtual {v1}, Lhya;->j()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Cached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 612
    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    iget-object v0, p0, Lhyg;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 615
    const-string v0, "No active resources"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    :cond_3
    invoke-static {}, Laal;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 625
    new-instance v0, Lhyl;

    invoke-direct {v0, p0}, Lhyl;-><init>(Lhyg;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 633
    invoke-virtual {v0, v1}, Lhyl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 637
    :goto_2
    return-void

    .line 617
    :cond_4
    const-string v0, "Active resources"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lhyg;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligp;

    .line 619
    const/4 v2, 0x4

    const-string v3, "ImageResourceManager"

    invoke-virtual {v0}, Ligp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Laal;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 635
    :cond_5
    invoke-virtual {p0, p1}, Lhyg;->b(Ljava/io/PrintWriter;)V

    goto :goto_2
.end method

.method public b()Lhxm;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lhyg;->k:Lhxm;

    return-object v0
.end method

.method public b(Lhya;)V
    .locals 2

    .prologue
    .line 525
    iget-object v1, p0, Lhyg;->g:Ljava/util/HashSet;

    monitor-enter v1

    .line 526
    :try_start_0
    iget-object v0, p0, Lhyg;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 527
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ligp;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 372
    check-cast p1, Lhya;

    .line 373
    invoke-virtual {p1}, Lhya;->l()Ligq;

    move-result-object v0

    check-cast v0, Ligq;

    .line 374
    invoke-virtual {p1}, Lhya;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Deactivating image resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_0
    invoke-virtual {p1}, Lhya;->m()I

    move-result v1

    .line 379
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 380
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lhya;->c(I)V

    .line 3334
    iget-object v1, p1, Lhya;->b:Lhyo;

    invoke-virtual {v1}, Lhyo;->e()V

    .line 384
    :cond_1
    iget-object v1, p0, Lhyg;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {p0, p1}, Lhyg;->b(Lhya;)V

    .line 3395
    iget v1, p1, Lhya;->i:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    move v1, v2

    .line 388
    :goto_0
    if-eqz v1, :cond_6

    .line 389
    invoke-virtual {p1}, Lhya;->j()I

    move-result v1

    iget v2, p0, Lhyg;->e:I

    if-ge v1, v2, :cond_6

    .line 391
    iget-wide v2, p0, Lhyg;->j:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lhyg;->j:J

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 393
    :cond_2
    iput-wide v6, p0, Lhyg;->j:J

    .line 394
    iget-object v1, p0, Lhyg;->h:Lhv;

    invoke-virtual {v1, v0, p1}, Lhv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_3
    :goto_1
    return-void

    .line 3399
    :cond_4
    iget-object v1, p1, Lhya;->g:Ligq;

    check-cast v1, Ligq;

    iget v1, v1, Ligq;->i:I

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_5

    move v1, v2

    .line 3401
    goto :goto_0

    .line 3404
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 397
    :cond_6
    invoke-virtual {p1}, Lhya;->i()V

    goto :goto_1
.end method

.method b(Ljava/io/PrintWriter;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 648
    iget-object v0, p0, Lhyg;->k:Lhxm;

    invoke-virtual {v0}, Lhxm;->a()J

    move-result-wide v0

    .line 649
    iget-object v2, p0, Lhyg;->k:Lhxm;

    invoke-virtual {v2}, Lhxm;->c()J

    move-result-wide v2

    .line 650
    sub-long v4, v0, v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 651
    invoke-static {v0, v1}, Lipr;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-static {v2, v3}, Lipr;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {v4, v5}, Lipr;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Disk cache total size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; used: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; free: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lhyg;->l:Lhxm;

    invoke-virtual {v0}, Lhxm;->b()J

    move-result-wide v0

    .line 656
    iget-object v2, p0, Lhyg;->l:Lhxm;

    invoke-virtual {v2}, Lhxm;->c()J

    move-result-wide v2

    .line 657
    sub-long v4, v0, v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 659
    invoke-static {v0, v1}, Lipr;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-static {v2, v3}, Lipr;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 661
    invoke-static {v4, v5}, Lipr;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Long-term cache total size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; used: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; free: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public c()Lhxm;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lhyg;->l:Lhxm;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lhyg;->q:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lhyg;->r:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lhyg;->s:I

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lhyg;->d:Lhzj;

    iget-wide v0, v0, Lhzj;->d:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lhyg;->d:Lhzj;

    iget-wide v0, v0, Lhzj;->e:J

    return-wide v0
.end method

.method public i()V
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Lhyg;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    :cond_0
    return-void

    .line 506
    :cond_1
    invoke-virtual {p0}, Lhyg;->l()Landroid/content/Context;

    move-result-object v0

    .line 5013
    const-string v1, "connectivity"

    .line 5014
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5015
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5016
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 506
    :goto_0
    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lhyg;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligp;

    .line 508
    invoke-virtual {v0}, Ligp;->m()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 509
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lhyg;->a(Ligp;I)V

    .line 510
    invoke-virtual {p0, v0}, Lhyg;->c(Ligp;)V

    goto :goto_1

    .line 5016
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lhyg;->p:F

    return v0
.end method

.method public k()V
    .locals 4

    .prologue
    .line 548
    iget-object v0, p0, Lhyg;->h:Lhv;

    .line 5271
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lhv;->a(I)V

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lhyg;->j:J

    .line 554
    iget-object v0, p0, Lhyg;->i:Lhyw;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lhyg;->i:Lhyw;

    invoke-virtual {v0}, Lhyw;->a()V

    .line 557
    :cond_0
    return-void
.end method
