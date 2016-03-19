.class public Labn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Labr;
.implements Lacf;
.implements Lck;
.implements Llt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ex/photo/PhotoViewCallbacks;",
        "Lcom/android/ex/photo/PhotoViewPager$OnInterceptTouchListener;",
        "Lck;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;"
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field A:Z

.field public B:Z

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:Z

.field public H:Z

.field public I:Z

.field final J:Landroid/view/accessibility/AccessibilityManager;

.field public K:Lacd;

.field public final L:Landroid/os/Handler;

.field M:J

.field final N:Ljava/lang/Runnable;

.field final c:Lacc;

.field d:I

.field final e:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:Ljava/lang/String;

.field j:[Ljava/lang/String;

.field public k:I

.field public l:Z

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Lcom/android/ex/photo/PhotoViewPager;

.field public p:Landroid/widget/ImageView;

.field public q:Lacj;

.field public r:Z

.field final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Labt;",
            ">;"
        }
    .end annotation
.end field

.field final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labs;",
            ">;"
        }
    .end annotation
.end field

.field u:Z

.field v:Z

.field public w:Z

.field public x:F

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lacc;)V
    .locals 2

    .prologue
    .line 2200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2140
    const/4 v0, -0x1

    iput v0, p0, Labn;->k:I

    .line 2157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labn;->s:Ljava/util/Map;

    .line 2160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labn;->t:Ljava/util/Set;

    .line 2167
    const/4 v0, 0x1

    iput-boolean v0, p0, Labn;->w:Z

    .line 2190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Labn;->L:Landroid/os/Handler;

    .line 2731
    new-instance v0, Labv;

    invoke-direct {v0, p0}, Labv;-><init>(Labn;)V

    iput-object v0, p0, Labn;->N:Ljava/lang/Runnable;

    .line 2201
    iput-object p1, p0, Labn;->c:Lacc;

    .line 2204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 2205
    const/4 v0, 0x0

    iput-object v0, p0, Labn;->e:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 2219
    :goto_0
    invoke-interface {p1}, Lacc;->i()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Labn;->J:Landroid/view/accessibility/AccessibilityManager;

    .line 2220
    return-void

    .line 2207
    :cond_0
    new-instance v0, Labu;

    invoke-direct {v0, p0}, Labu;-><init>(Labn;)V

    iput-object v0, p0, Labn;->e:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    goto :goto_0
.end method

.method static a(IIIF)I
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 8108
    int-to-float v0, p2

    int-to-float v1, p2

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8114
    int-to-float v1, p2

    mul-float/2addr v1, p3

    int-to-float v2, p1

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 8116
    sub-int v0, p0, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 7824
    if-nez p0, :cond_0

    .line 7825
    const-string p0, ""

    .line 7827
    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(FF)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6662
    iget-object v1, p0, Labn;->s:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labt;

    .line 6663
    if-nez v2, :cond_0

    .line 6664
    invoke-interface {v0}, Labt;->d()Z

    move-result v2

    .line 6666
    :cond_0
    if-nez v1, :cond_5

    .line 6667
    invoke-interface {v0}, Labt;->e()Z

    move-result v0

    :goto_1
    move v1, v0

    .line 6669
    goto :goto_0

    .line 6671
    :cond_1
    if-eqz v2, :cond_3

    .line 6672
    if-eqz v1, :cond_2

    .line 6673
    sget v0, Lace;->d:I

    .line 6679
    :goto_2
    return v0

    .line 6675
    :cond_2
    sget v0, Lace;->b:I

    goto :goto_2

    .line 6676
    :cond_3
    if-eqz v1, :cond_4

    .line 6677
    sget v0, Lace;->c:I

    goto :goto_2

    .line 6679
    :cond_4
    sget v0, Lace;->a:I

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public a()Lacc;
    .locals 1

    .prologue
    .line 3228
    iget-object v0, p0, Labn;->c:Lacc;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lbg;F)Lacj;
    .locals 6

    .prologue
    .line 3224
    new-instance v0, Lacj;

    const/4 v3, 0x0

    iget-boolean v5, p0, Labn;->I:Z

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lacj;-><init>(Landroid/content/Context;Lbg;Landroid/database/Cursor;FZ)V

    return-object v0
.end method

.method public a(ILjava/lang/String;)Lfe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lfe",
            "<",
            "Laco;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5518
    packed-switch p1, :pswitch_data_0

    .line 5524
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5522
    :pswitch_0
    new-instance v0, Lacm;

    iget-object v1, p0, Labn;->c:Lacc;

    invoke-interface {v1}, Lacc;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lacm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 6636
    iput p1, p0, Labn;->h:I

    .line 6637
    invoke-virtual {p0, p1}, Labn;->e(I)V

    .line 6638
    return-void
.end method

.method public a(IFI)V
    .locals 4

    .prologue
    .line 6622
    float-to-double v0, p2

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 6623
    iget-object v0, p0, Labn;->s:Ljava/util/Map;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labt;

    .line 6624
    if-eqz v0, :cond_0

    .line 6625
    invoke-interface {v0}, Labt;->c()V

    .line 6627
    :cond_0
    iget-object v0, p0, Labn;->s:Ljava/util/Map;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labt;

    .line 6628
    if-eqz v0, :cond_1

    .line 6629
    invoke-interface {v0}, Labt;->c()V

    .line 6632
    :cond_1
    return-void
.end method

.method public a(ILabt;)V
    .locals 2

    .prologue
    .line 5461
    iget-object v0, p0, Labn;->s:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5462
    return-void
.end method

.method public a(Labm;)V
    .locals 1

    .prologue
    .line 7811
    if-nez p1, :cond_0

    .line 7816
    :goto_0
    return-void

    .line 7814
    :cond_0
    iget-object v0, p0, Labn;->y:Ljava/lang/String;

    invoke-static {v0}, Labn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labm;->a(Ljava/lang/CharSequence;)V

    .line 7815
    iget-object v0, p0, Labn;->z:Ljava/lang/String;

    invoke-static {v0}, Labn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labm;->b(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Labs;)V
    .locals 1

    .prologue
    .line 5471
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labn;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5472
    monitor-exit p0

    return-void

    .line 5471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lack;Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 7877
    iget-object v0, p0, Labn;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 7878
    invoke-virtual {p1}, Lack;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labn;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7889
    iget-object v0, p0, Labn;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7890
    iget-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 7892
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->f()Lcj;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcj;->a(I)V

    .line 7895
    :cond_0
    return-void
.end method

.method declared-synchronized a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 6615
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labn;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labs;

    .line 6616
    invoke-interface {v0, p1}, Labs;->a_(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6618
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3362
    sget v0, Labn;->b:I

    if-nez v0, :cond_0

    .line 3363
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3364
    iget-object v0, p0, Labn;->c:Lacc;

    .line 3365
    invoke-interface {v0}, Lacc;->i()Landroid/content/Context;

    move-result-object v0

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3366
    sget v4, Lacr;->b:I

    .line 3367
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3368
    sget-object v0, Lacb;->a:[I

    add-int/lit8 v4, v4, -0x1

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 3378
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Labn;->b:I

    .line 3233
    :cond_0
    :goto_0
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    .line 3234
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3235
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    sput v0, Labn;->a:I

    .line 3237
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 3239
    const-string v0, "photos_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3240
    const-string v0, "photos_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labn;->f:Ljava/lang/String;

    .line 3243
    :cond_1
    const-string v0, "enable_timer_lights_out"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Labn;->G:Z

    .line 3246
    const-string v0, "scale_up_animation"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3247
    iput-boolean v1, p0, Labn;->B:Z

    .line 3248
    const-string v0, "start_x_extra"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Labn;->C:I

    .line 3249
    const-string v0, "start_y_extra"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Labn;->D:I

    .line 3250
    const-string v0, "start_width_extra"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Labn;->E:I

    .line 3251
    const-string v0, "start_height_extra"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Labn;->F:I

    .line 3253
    :cond_2
    const-string v0, "action_bar_hidden_initially"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Labn;->J:Landroid/view/accessibility/AccessibilityManager;

    .line 3255
    invoke-static {v0}, Laen;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Labn;->H:Z

    .line 3256
    const-string v0, "display_thumbs_fullscreen"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Labn;->I:Z

    .line 3262
    const-string v0, "projection"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3263
    const-string v0, "projection"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labn;->j:[Ljava/lang/String;

    .line 3269
    :goto_2
    const-string v0, "max_scale"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Labn;->x:F

    .line 3270
    iput-object v5, p0, Labn;->i:Ljava/lang/String;

    .line 3271
    iput v6, p0, Labn;->h:I

    .line 3278
    const-string v0, "photo_index"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3279
    const-string v0, "photo_index"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Labn;->h:I

    .line 3281
    :cond_3
    const-string v0, "initial_photo_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3282
    const-string v0, "initial_photo_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labn;->g:Ljava/lang/String;

    .line 3283
    iget-object v0, p0, Labn;->g:Ljava/lang/String;

    iput-object v0, p0, Labn;->i:Ljava/lang/String;

    .line 3285
    :cond_4
    iput-boolean v1, p0, Labn;->l:Z

    .line 3287
    if-eqz p1, :cond_b

    .line 3288
    const-string v0, "com.android.ex.PhotoViewFragment.INITIAL_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labn;->g:Ljava/lang/String;

    .line 3289
    const-string v0, "com.android.ex.PhotoViewFragment.CURRENT_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labn;->i:Ljava/lang/String;

    .line 3290
    const-string v0, "com.android.ex.PhotoViewFragment.CURRENT_INDEX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labn;->h:I

    .line 3291
    const-string v0, "com.android.ex.PhotoViewFragment.FULLSCREEN"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Labn;->J:Landroid/view/accessibility/AccessibilityManager;

    .line 3292
    invoke-static {v0}, Laen;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_3
    iput-boolean v1, p0, Labn;->r:Z

    .line 3293
    const-string v0, "com.android.ex.PhotoViewFragment.ACTIONBARTITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labn;->y:Ljava/lang/String;

    .line 3294
    const-string v0, "com.android.ex.PhotoViewFragment.ACTIONBARSUBTITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labn;->z:Ljava/lang/String;

    .line 3295
    const-string v0, "com.android.ex.PhotoViewFragment.SCALEANIMATIONFINISHED"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Labn;->A:Z

    .line 3301
    :goto_4
    iget-object v0, p0, Labn;->c:Lacc;

    sget v1, Laal;->bV:I

    invoke-interface {v0, v1}, Lacc;->setContentView(I)V

    .line 3304
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->i()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Labn;->c:Lacc;

    .line 3305
    invoke-interface {v1}, Lacc;->C_()Lbg;

    move-result-object v1

    iget v3, p0, Labn;->x:F

    .line 3304
    invoke-virtual {p0, v0, v1, v3}, Labn;->a(Landroid/content/Context;Lbg;F)Lacj;

    move-result-object v0

    iput-object v0, p0, Labn;->q:Lacj;

    .line 3306
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3307
    sget v0, Laal;->bN:I

    invoke-virtual {p0, v0}, Labn;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Labn;->m:Landroid/view/View;

    .line 3308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_5

    .line 3309
    iget-object v0, p0, Labn;->m:Landroid/view/View;

    invoke-virtual {p0}, Labn;->t()Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 3311
    :cond_5
    sget v0, Laal;->bM:I

    invoke-virtual {p0, v0}, Labn;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Labn;->n:Landroid/view/View;

    .line 3312
    sget v0, Laal;->bO:I

    invoke-virtual {p0, v0}, Labn;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Labn;->p:Landroid/widget/ImageView;

    .line 3313
    sget v0, Laal;->bS:I

    invoke-virtual {p0, v0}, Labn;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/ex/photo/PhotoViewPager;

    iput-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    .line 3314
    iget-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    iget-object v3, p0, Labn;->q:Lacj;

    invoke-virtual {v0, v3}, Lcom/android/ex/photo/PhotoViewPager;->a(Lkh;)V

    .line 3315
    iget-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/PhotoViewPager;->a(Llt;)V

    .line 3316
    iget-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/PhotoViewPager;->a(Lacf;)V

    .line 3317
    iget-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    sget v3, Laal;->bH:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/ex/photo/PhotoViewPager;->d(I)V

    .line 3319
    new-instance v0, Lacd;

    .line 4175
    invoke-direct {v0, p0}, Lacd;-><init>(Labn;)V

    .line 3319
    iput-object v0, p0, Labn;->K:Lacd;

    .line 3320
    iget-boolean v0, p0, Labn;->B:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Labn;->A:Z

    if-eqz v0, :cond_c

    .line 3323
    :cond_6
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->f()Lcj;

    move-result-object v0

    const/16 v3, 0x64

    invoke-virtual {v0, v3, v5, p0}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    .line 3326
    iget-object v0, p0, Labn;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3339
    :goto_5
    sget v0, Laal;->bU:I

    .line 3340
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Labn;->M:J

    .line 3342
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->j()Labm;

    move-result-object v0

    .line 3343
    if-eqz v0, :cond_7

    .line 3344
    invoke-virtual {v0}, Labm;->a()V

    .line 3345
    invoke-virtual {v0, p0}, Labm;->a(Labn;)V

    .line 3346
    invoke-virtual {v0}, Labm;->b()V

    .line 3349
    invoke-virtual {p0, v0}, Labn;->a(Labm;)V

    .line 3352
    :cond_7
    iget-boolean v0, p0, Labn;->B:Z

    if-nez v0, :cond_d

    .line 3353
    iget-boolean v0, p0, Labn;->r:Z

    invoke-virtual {p0, v0}, Labn;->b(Z)V

    .line 3359
    :goto_6
    return-void

    .line 3371
    :pswitch_0
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x320

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Labn;->b:I

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 3255
    goto/16 :goto_1

    .line 3265
    :cond_9
    iput-object v5, p0, Labn;->j:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    move v1, v2

    .line 3292
    goto/16 :goto_3

    .line 3298
    :cond_b
    iget-boolean v0, p0, Labn;->H:Z

    iput-boolean v0, p0, Labn;->r:Z

    goto/16 :goto_4

    .line 3332
    :cond_c
    iget-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 3333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3334
    const-string v3, "image_uri"

    iget-object v4, p0, Labn;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3335
    iget-object v3, p0, Labn;->c:Lacc;

    invoke-interface {v3}, Lacc;->f()Lcj;

    move-result-object v3

    const/4 v4, 0x2

    iget-object v5, p0, Labn;->K:Lacd;

    invoke-virtual {v3, v4, v0, v5}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    goto :goto_5

    .line 3357
    :cond_d
    invoke-virtual {p0, v2}, Labn;->b(Z)V

    goto :goto_6

    .line 3368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lfe;Landroid/database/Cursor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 5530
    invoke-virtual {p1}, Lfe;->o()I

    move-result v0

    .line 5531
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 5532
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 5533
    :cond_0
    iput-boolean v7, p0, Labn;->l:Z

    .line 5534
    iget-object v0, p0, Labn;->q:Lacj;

    invoke-virtual {v0, v6}, Lacj;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 5596
    :cond_1
    :goto_0
    return-void

    .line 5536
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Labn;->k:I

    .line 5537
    iget-object v0, p0, Labn;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5540
    const-string v0, "uri"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 5542
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_4

    .line 5543
    iget-object v0, p0, Labn;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5544
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 5550
    :goto_1
    const/4 v1, -0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v1, v2

    .line 5551
    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5552
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5554
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_5

    .line 5555
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 5559
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5560
    iput v1, p0, Labn;->h:I

    .line 5569
    :cond_3
    iget-boolean v0, p0, Labn;->w:Z

    if-eqz v0, :cond_7

    .line 5570
    iput-boolean v7, p0, Labn;->u:Z

    .line 5571
    iget-object v0, p0, Labn;->q:Lacj;

    invoke-virtual {v0, v6}, Lacj;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 5546
    :cond_4
    iget-object v0, p0, Labn;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5547
    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 5557
    :cond_5
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_3

    .line 5563
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 5564
    goto :goto_2

    .line 5574
    :cond_7
    iget-boolean v0, p0, Labn;->l:Z

    .line 5575
    iput-boolean v2, p0, Labn;->l:Z

    .line 5577
    iget-object v1, p0, Labn;->q:Lacj;

    invoke-virtual {v1, p2}, Lacj;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 5578
    iget-object v1, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v1}, Lcom/android/ex/photo/PhotoViewPager;->b()Lkh;

    move-result-object v1

    if-nez v1, :cond_8

    .line 5579
    iget-object v1, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    iget-object v3, p0, Labn;->q:Lacj;

    invoke-virtual {v1, v3}, Lcom/android/ex/photo/PhotoViewPager;->a(Lkh;)V

    .line 5581
    :cond_8
    invoke-virtual {p0, p2}, Labn;->a(Landroid/database/Cursor;)V

    .line 5584
    iget v1, p0, Labn;->h:I

    if-gez v1, :cond_9

    .line 5585
    iput v2, p0, Labn;->h:I

    .line 5588
    :cond_9
    iget-object v1, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    iget v3, p0, Labn;->h:I

    invoke-virtual {v1, v3, v2}, Lcom/android/ex/photo/PhotoViewPager;->a(IZ)V

    .line 5589
    if-eqz v0, :cond_1

    .line 5590
    iget v0, p0, Labn;->h:I

    invoke-virtual {p0, v0}, Labn;->e(I)V

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1859
    if-eqz p1, :cond_0

    .line 1860
    invoke-virtual {p0}, Labn;->h()V

    .line 1864
    :goto_0
    return-void

    .line 1862
    :cond_0
    invoke-virtual {p0}, Labn;->g()V

    goto :goto_0
.end method

.method protected a(ZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 6686
    iget-object v1, p0, Labn;->J:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1}, Laen;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    move p2, v0

    move p1, v0

    .line 6693
    :cond_0
    iget-boolean v1, p0, Labn;->r:Z

    if-eq p1, v1, :cond_2

    move v1, v2

    .line 6694
    :goto_0
    iput-boolean p1, p0, Labn;->r:Z

    .line 6696
    iget-boolean v3, p0, Labn;->r:Z

    if-eqz v3, :cond_3

    .line 6697
    invoke-virtual {p0, v2}, Labn;->b(Z)V

    .line 6698
    invoke-virtual {p0}, Labn;->h()V

    .line 6706
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 6707
    iget-object v0, p0, Labn;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labt;

    .line 6708
    invoke-interface {v0}, Labt;->a()V

    goto :goto_2

    :cond_2
    move v1, v0

    .line 6693
    goto :goto_0

    .line 6700
    :cond_3
    invoke-virtual {p0, v0}, Labn;->b(Z)V

    .line 6701
    if-eqz p2, :cond_1

    .line 6702
    invoke-virtual {p0}, Labn;->g()V

    goto :goto_1

    .line 6711
    :cond_4
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 5450
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5455
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5452
    :pswitch_0
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->finish()V

    .line 5453
    const/4 v0, 0x1

    goto :goto_0

    .line 5450
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lav;)Z
    .locals 2

    .prologue
    .line 5481
    iget-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labn;->q:Lacj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labn;->q:Lacj;

    invoke-virtual {v0}, Lacj;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 5482
    :cond_0
    iget-boolean v0, p0, Labn;->r:Z

    .line 5484
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Labn;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0}, Lcom/android/ex/photo/PhotoViewPager;->c()I

    move-result v0

    iget-object v1, p0, Labn;->q:Lacj;

    invoke-virtual {v1, p1}, Lacj;->c(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4401
    iget-boolean v0, p0, Labn;->r:Z

    invoke-virtual {p0, v0, v1}, Labn;->a(ZZ)V

    .line 4403
    iput-boolean v1, p0, Labn;->w:Z

    .line 4404
    iget-boolean v0, p0, Labn;->u:Z

    if-eqz v0, :cond_0

    .line 4405
    iput-boolean v1, p0, Labn;->u:Z

    .line 4406
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->f()Lcj;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    .line 4408
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 6642
    return-void
.end method

.method public declared-synchronized b(Labs;)V
    .locals 1

    .prologue
    .line 5476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labn;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5477
    monitor-exit p0

    return-void

    .line 5476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 5440
    const-string v0, "com.android.ex.PhotoViewFragment.INITIAL_URI"

    iget-object v1, p0, Labn;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5441
    const-string v0, "com.android.ex.PhotoViewFragment.CURRENT_URI"

    iget-object v1, p0, Labn;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5442
    const-string v0, "com.android.ex.PhotoViewFragment.CURRENT_INDEX"

    iget v1, p0, Labn;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5443
    const-string v0, "com.android.ex.PhotoViewFragment.FULLSCREEN"

    iget-boolean v1, p0, Labn;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5444
    const-string v0, "com.android.ex.PhotoViewFragment.ACTIONBARTITLE"

    iget-object v1, p0, Labn;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5445
    const-string v0, "com.android.ex.PhotoViewFragment.ACTIONBARSUBTITLE"

    iget-object v1, p0, Labn;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5446
    const-string v0, "com.android.ex.PhotoViewFragment.SCALEANIMATIONFINISHED"

    iget-boolean v1, p0, Labn;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5447
    return-void
.end method

.method protected b(Z)V
    .locals 0

    .prologue
    .line 6728
    invoke-virtual {p0, p1}, Labn;->c(Z)V

    .line 6729
    return-void
.end method

.method public b(Lav;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6646
    iget-object v1, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Labn;->q:Lacj;

    if-nez v1, :cond_1

    .line 6649
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v1}, Lcom/android/ex/photo/PhotoViewPager;->c()I

    move-result v1

    iget-object v2, p0, Labn;->q:Lacj;

    invoke-virtual {v2, p1}, Lacj;->c(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 4395
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0, p1}, Lacc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 4411
    const/4 v0, 0x1

    iput-boolean v0, p0, Labn;->w:Z

    .line 4412
    return-void
.end method

.method public c(Z)V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0xb

    const/16 v5, 0x13

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8219
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8220
    if-ge v4, v7, :cond_1

    move v3, v1

    .line 8221
    :goto_0
    if-eqz p1, :cond_b

    .line 8222
    invoke-virtual {p0}, Labn;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Labn;->r()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 8229
    :cond_0
    if-gt v4, v5, :cond_3

    if-ne v4, v5, :cond_8

    .line 8287
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v2, v5, :cond_2

    .line 8288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "kitkatIsSecondary user is only callable on KitKat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v0

    .line 8220
    goto :goto_0

    .line 8290
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const v5, 0x186a0

    if-le v2, v5, :cond_7

    move v2, v1

    .line 8230
    :goto_1
    if-nez v2, :cond_8

    .line 8231
    :cond_3
    const/16 v0, 0xf06

    .line 8253
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 8254
    invoke-virtual {p0}, Labn;->p()V

    .line 8275
    :cond_5
    :goto_3
    if-lt v4, v6, :cond_6

    .line 8276
    iput v0, p0, Labn;->d:I

    .line 8277
    invoke-virtual {p0}, Labn;->s()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 8279
    :cond_6
    return-void

    :cond_7
    move v2, v0

    .line 8290
    goto :goto_1

    .line 8237
    :cond_8
    if-lt v4, v7, :cond_9

    .line 8243
    const/16 v0, 0x505

    goto :goto_2

    .line 8247
    :cond_9
    const/16 v2, 0xe

    if-lt v4, v2, :cond_a

    move v0, v1

    .line 8248
    goto :goto_2

    .line 8249
    :cond_a
    if-lt v4, v6, :cond_4

    move v0, v1

    .line 8250
    goto :goto_2

    .line 8257
    :cond_b
    if-lt v4, v5, :cond_d

    .line 8258
    const/16 v0, 0x700

    .line 8270
    :cond_c
    :goto_4
    if-eqz v3, :cond_5

    .line 8271
    invoke-virtual {p0}, Labn;->o()V

    goto :goto_3

    .line 8261
    :cond_d
    if-lt v4, v7, :cond_e

    .line 8262
    const/16 v0, 0x500

    goto :goto_4

    .line 8264
    :cond_e
    const/16 v1, 0xe

    if-ge v4, v1, :cond_c

    .line 8266
    if-lt v4, v6, :cond_c

    goto :goto_4
.end method

.method public d()V
    .locals 1

    .prologue
    .line 4417
    const/4 v0, 0x1

    iput-boolean v0, p0, Labn;->v:Z

    .line 4418
    return-void
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 5466
    iget-object v0, p0, Labn;->s:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5467
    return-void
.end method

.method public e(I)V
    .locals 6

    .prologue
    .line 6740
    iget-object v0, p0, Labn;->s:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labt;

    .line 6741
    if-eqz v0, :cond_0

    .line 6742
    invoke-interface {v0}, Labt;->b()V

    .line 6744
    :cond_0
    invoke-virtual {p0}, Labn;->k()Landroid/database/Cursor;

    move-result-object v0

    .line 6745
    iput p1, p0, Labn;->h:I

    .line 6749
    const-string v1, "uri"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 6750
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labn;->i:Ljava/lang/String;

    .line 6751
    invoke-virtual {p0}, Labn;->i()V

    .line 6752
    iget-object v0, p0, Labn;->J:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6753
    invoke-virtual {p0}, Labn;->j()Ljava/lang/String;

    move-result-object v1

    .line 6754
    if-eqz v1, :cond_1

    .line 6755
    iget-object v2, p0, Labn;->m:Landroid/view/View;

    iget-object v0, p0, Labn;->J:Landroid/view/accessibility/AccessibilityManager;

    .line 7032
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 7033
    invoke-virtual {v2, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 6760
    :cond_1
    :goto_0
    invoke-virtual {p0}, Labn;->h()V

    .line 6761
    invoke-virtual {p0}, Labn;->g()V

    .line 6762
    return-void

    .line 7037
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 7038
    if-nez v0, :cond_3

    .line 7039
    const-string v0, "accessibility"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 7043
    :cond_3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7051
    const/16 v4, 0x8

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 7052
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7053
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 7054
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 7055
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 7058
    invoke-static {v4}, Lms;->a(Landroid/view/accessibility/AccessibilityEvent;)Lnq;

    move-result-object v1

    .line 7059
    invoke-virtual {v1, v2}, Lnq;->a(Landroid/view/View;)V

    .line 7061
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_4

    .line 7062
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    .line 7065
    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const-wide/16 v6, 0xfa

    .line 4427
    iget-boolean v1, p0, Labn;->r:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Labn;->H:Z

    if-nez v1, :cond_1

    .line 4428
    invoke-virtual {p0}, Labn;->f()V

    .line 4436
    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 4430
    :cond_1
    iget-boolean v1, p0, Labn;->B:Z

    if-eqz v1, :cond_0

    .line 5004
    iget-object v1, p0, Labn;->c:Lacc;

    invoke-interface {v1}, Lacc;->getIntent()Landroid/content/Intent;

    .line 5010
    iget-object v1, p0, Labn;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 5011
    iget-object v2, p0, Labn;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 5017
    iget v3, p0, Labn;->E:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 5018
    iget v4, p0, Labn;->F:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 5019
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 5021
    iget v4, p0, Labn;->C:I

    iget v5, p0, Labn;->E:I

    invoke-static {v4, v5, v1, v3}, Labn;->a(IIIF)I

    move-result v1

    .line 5023
    iget v4, p0, Labn;->D:I

    iget v5, p0, Labn;->F:I

    invoke-static {v4, v5, v2, v3}, Labn;->a(IIIF)I

    move-result v2

    .line 5025
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5026
    const/16 v5, 0xe

    if-lt v4, v5, :cond_5

    .line 5027
    iget-object v5, p0, Labn;->n:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5028
    iget-object v5, p0, Labn;->n:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5030
    new-instance v5, Laby;

    invoke-direct {v5, p0}, Laby;-><init>(Labn;)V

    .line 5040
    iget-object v0, p0, Labn;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 5041
    iget-object v0, p0, Labn;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v1

    .line 5042
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5043
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5051
    :goto_1
    iget-object v1, p0, Labn;->g:Ljava/lang/String;

    iget-object v2, p0, Labn;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5052
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 5054
    :cond_2
    const/16 v1, 0x10

    if-lt v4, v1, :cond_4

    .line 5055
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 5059
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 5045
    :cond_3
    iget-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0}, Lcom/android/ex/photo/PhotoViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v1

    .line 5046
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5047
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    goto :goto_1

    .line 5057
    :cond_4
    iget-object v1, p0, Labn;->L:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 5061
    :cond_5
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5062
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5063
    iget-object v2, p0, Labn;->n:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5064
    iget-object v1, p0, Labn;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5066
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v9, v9, v3, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 5067
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5068
    new-instance v1, Labz;

    invoke-direct {v1, p0}, Labz;-><init>(Labn;)V

    .line 5082
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5086
    iget-object v1, p0, Labn;->p:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 5087
    iget-object v1, p0, Labn;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 5089
    :cond_6
    iget-object v1, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v1, v0}, Lcom/android/ex/photo/PhotoViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5489
    iget-boolean v0, p0, Labn;->r:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Labn;->a(ZZ)V

    .line 5490
    return-void

    .line 5489
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 4

    .prologue
    .line 6718
    iget-boolean v0, p0, Labn;->G:Z

    if-eqz v0, :cond_0

    .line 6719
    iget-object v0, p0, Labn;->L:Landroid/os/Handler;

    iget-object v1, p0, Labn;->N:Ljava/lang/Runnable;

    iget-wide v2, p0, Labn;->M:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6721
    :cond_0
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    .line 6724
    iget-object v0, p0, Labn;->L:Landroid/os/Handler;

    iget-object v1, p0, Labn;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6725
    return-void
.end method

.method public i()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7768
    iget-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0}, Lcom/android/ex/photo/PhotoViewPager;->c()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 7769
    iget v0, p0, Labn;->k:I

    if-ltz v0, :cond_1

    move v0, v1

    .line 7771
    :goto_0
    invoke-virtual {p0}, Labn;->k()Landroid/database/Cursor;

    move-result-object v4

    .line 7772
    if-eqz v4, :cond_2

    .line 7775
    const-string v5, "_display_name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 7776
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Labn;->y:Ljava/lang/String;

    .line 7781
    :goto_1
    iget-boolean v4, p0, Labn;->l:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    if-gtz v3, :cond_3

    .line 7782
    :cond_0
    iput-object v6, p0, Labn;->z:Ljava/lang/String;

    .line 7788
    :goto_2
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->j()Labm;

    move-result-object v0

    invoke-virtual {p0, v0}, Labn;->a(Labm;)V

    .line 7789
    return-void

    :cond_1
    move v0, v2

    .line 7769
    goto :goto_0

    .line 7778
    :cond_2
    iput-object v6, p0, Labn;->y:Ljava/lang/String;

    goto :goto_1

    .line 7784
    :cond_3
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Laal;->bY:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 7785
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    iget v2, p0, Labn;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    .line 7784
    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labn;->z:Ljava/lang/String;

    goto :goto_2
.end method

.method protected j()Ljava/lang/String;
    .locals 5

    .prologue
    .line 7798
    iget-object v0, p0, Labn;->y:Ljava/lang/String;

    .line 7799
    iget-object v1, p0, Labn;->z:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7800
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->bZ:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Labn;->y:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Labn;->z:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7803
    :cond_0
    return-object v0
.end method

.method public k()Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7837
    iget-object v1, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    if-nez v1, :cond_1

    .line 7850
    :cond_0
    :goto_0
    return-object v0

    .line 7841
    :cond_1
    iget-object v1, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v1}, Lcom/android/ex/photo/PhotoViewPager;->c()I

    move-result v2

    .line 7842
    iget-object v1, p0, Labn;->q:Lacj;

    invoke-virtual {v1}, Lacj;->e()Landroid/database/Cursor;

    move-result-object v1

    .line 7844
    if-eqz v1, :cond_0

    .line 7848
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object v0, v1

    .line 7850
    goto :goto_0
.end method

.method public l()Lacj;
    .locals 1

    .prologue
    .line 7908
    iget-object v0, p0, Labn;->q:Lacj;

    return-object v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 7912
    const/4 v0, 0x1

    iput-boolean v0, p0, Labn;->A:Z

    .line 7913
    iget-object v0, p0, Labn;->o:Lcom/android/ex/photo/PhotoViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 7914
    iget-boolean v0, p0, Labn;->r:Z

    invoke-virtual {p0, v0}, Labn;->b(Z)V

    .line 7915
    return-void
.end method

.method n()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xfa

    const/4 v5, 0x0

    .line 7923
    iget-object v0, p0, Labn;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 7924
    iget-object v1, p0, Labn;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 7929
    iget-object v2, p0, Labn;->p:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7935
    iget v2, p0, Labn;->E:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 7936
    iget v3, p0, Labn;->F:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 7937
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 7939
    iget v3, p0, Labn;->C:I

    iget v4, p0, Labn;->E:I

    invoke-static {v3, v4, v0, v2}, Labn;->a(IIIF)I

    move-result v0

    .line 7941
    iget v3, p0, Labn;->D:I

    iget v4, p0, Labn;->F:I

    invoke-static {v3, v4, v1, v2}, Labn;->a(IIIF)I

    move-result v1

    .line 7944
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7945
    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 7946
    iget-object v4, p0, Labn;->n:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 7947
    iget-object v4, p0, Labn;->n:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7948
    iget-object v4, p0, Labn;->n:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 7950
    iget-object v4, p0, Labn;->p:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 7951
    iget-object v4, p0, Labn;->p:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 7952
    iget-object v2, p0, Labn;->p:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 7953
    iget-object v0, p0, Labn;->p:Landroid/widget/ImageView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 7955
    new-instance v0, Labw;

    invoke-direct {v0, p0}, Labw;-><init>(Labn;)V

    .line 7961
    iget-object v1, p0, Labn;->p:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 7962
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 7963
    const/16 v2, 0x10

    if-lt v3, v2, :cond_0

    .line 7964
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 7968
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 8001
    :goto_1
    return-void

    .line 7966
    :cond_0
    iget-object v2, p0, Labn;->L:Landroid/os/Handler;

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7970
    :cond_1
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7971
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7972
    iget-object v4, p0, Labn;->n:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7973
    iget-object v3, p0, Labn;->n:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 7975
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v3, v0, v1, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 7977
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7978
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v2, v2, v5, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 7979
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7981
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 7982
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 7983
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 7984
    new-instance v0, Labx;

    invoke-direct {v0, p0}, Labx;-><init>(Labn;)V

    .line 7998
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7999
    iget-object v0, p0, Labn;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public o()V
    .locals 1

    .prologue
    .line 8156
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->j()Labm;

    move-result-object v0

    invoke-virtual {v0}, Labm;->c()V

    .line 8157
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5510
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 5511
    new-instance v0, Lacp;

    iget-object v1, p0, Labn;->c:Lacc;

    invoke-interface {v1}, Lacc;->i()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Labn;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Labn;->j:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lacp;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5513
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9064
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Labn;->a(Lfe;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Lfe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6421
    iget-boolean v0, p0, Labn;->v:Z

    .line 5601
    if-nez v0, :cond_0

    .line 5604
    iget-object v0, p0, Labn;->q:Lacj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lacj;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 5606
    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 8160
    iget-object v0, p0, Labn;->c:Lacc;

    invoke-interface {v0}, Lacc;->j()Labm;

    move-result-object v0

    invoke-virtual {v0}, Labm;->d()V

    .line 8161
    return-void
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 8164
    iget-boolean v0, p0, Labn;->B:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 8168
    iget-boolean v0, p0, Labn;->A:Z

    return v0
.end method

.method public s()Landroid/view/View;
    .locals 1

    .prologue
    .line 8172
    iget-object v0, p0, Labn;->m:Landroid/view/View;

    return-object v0
.end method

.method public t()Landroid/view/View$OnSystemUiVisibilityChangeListener;
    .locals 1

    .prologue
    .line 8297
    iget-object v0, p0, Labn;->e:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    return-object v0
.end method
