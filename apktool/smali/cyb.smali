.class public abstract Lcyb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I

.field private static d:Landroid/graphics/Bitmap;

.field public static final n:Z

.field public static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcyb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbeu;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field public final p:Landroid/content/Context;

.field public final q:I

.field public final r:Lexn;

.field public final s:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ldk;

.field public u:Lcy;

.field public v:Ldl;

.field public w:Lcy;

.field public final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcyd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcyb;->n:Z

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcyb;->o:Ljava/util/Set;

    .line 109
    const-class v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyb;->a:Ljava/lang/String;

    .line 113
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    sput-object v0, Lcyb;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILexn;)V
    .locals 3

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcyb;->s:Ljava/util/HashSet;

    .line 124
    new-instance v0, Ldl;

    invoke-direct {v0}, Ldl;-><init>()V

    iput-object v0, p0, Lcyb;->v:Ldl;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcyb;->h:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcyb;->i:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcyb;->x:Ljava/util/Set;

    .line 391
    iput-object p1, p0, Lcyb;->p:Landroid/content/Context;

    .line 392
    iput p2, p0, Lcyb;->q:I

    .line 393
    iput-object p3, p0, Lcyb;->r:Lexn;

    .line 395
    sget-object v1, Lcyb;->o:Ljava/util/Set;

    monitor-enter v1

    .line 397
    :try_start_0
    invoke-virtual {p0}, Lcyb;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcyb;->e()I

    move-result v2

    invoke-static {v0, v2}, Lcyb;->a(Ljava/lang/String;I)V

    .line 398
    sget-object v0, Lcyb;->o:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    new-instance v0, Lcy;

    invoke-direct {v0, p1}, Lcy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcyb;->u:Lcy;

    .line 404
    new-instance v0, Lcy;

    invoke-direct {v0, p1}, Lcy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcyb;->w:Lcy;

    .line 405
    iget-object v0, p0, Lcyb;->w:Lcy;

    invoke-virtual {p0}, Lcyb;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcy;->a(I)Lcy;

    .line 406
    iget-object v0, p0, Lcyb;->w:Lcy;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->q:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcy;->a(Ljava/lang/CharSequence;)Lcy;

    .line 407
    iget-object v0, p0, Lcyb;->w:Lcy;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->iS:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcy;->b(Ljava/lang/CharSequence;)Lcy;

    .line 408
    return-void

    .line 399
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static a(Landroid/content/Context;)Lee;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->cH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1019
    array-length v1, v0

    add-int/lit8 v1, v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 1020
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1021
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 1022
    array-length v2, v0

    const-string v3, "\ud83d\ude03"

    aput-object v3, v1, v2

    .line 1023
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    const-string v3, "\ud83d\ude1e"

    aput-object v3, v1, v2

    .line 1024
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    const-string v2, "\ud83d\udc9c"

    aput-object v2, v1, v0

    .line 282
    :goto_0
    new-instance v0, Lef;

    const-string v2, "android.intent.extra.TEXT"

    invoke-direct {v0, v2}, Lef;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->gJ:I

    .line 283
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lef;->a(Ljava/lang/CharSequence;)Lef;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v1}, Lef;->a([Ljava/lang/CharSequence;)Lef;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lef;->b()Lee;

    move-result-object v0

    return-object v0

    .line 1027
    :cond_0
    array-length v2, v0

    const-string v3, ":-)"

    aput-object v3, v1, v2

    .line 1028
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    const-string v3, ":-("

    aput-object v3, v1, v2

    .line 1029
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    const-string v2, "\u2764"

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;II)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 332
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 337
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 337
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 340
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 341
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 342
    iget-object v1, p0, Lcyb;->p:Landroid/content/Context;

    invoke-virtual {v1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 344
    :cond_1
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 346
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 347
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 348
    iget-object v1, p0, Lcyb;->p:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->gQ:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 351
    :cond_3
    invoke-virtual {p0, p4}, Lcyb;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 353
    :cond_4
    return-object v0
.end method

.method protected static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcyb;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeu;

    .line 208
    invoke-virtual {v0}, Lbeu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :cond_1
    return-void

    .line 213
    :cond_2
    new-instance v0, Lbfz;

    iget-object v1, p0, Lcyb;->p:Landroid/content/Context;

    iget v2, p0, Lcyb;->q:I

    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 215
    invoke-virtual {v0, p1}, Lbfz;->ad(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcyb;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgd;

    .line 219
    iget v2, p0, Lcyb;->q:I

    .line 221
    invoke-static {v2}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    iget-object v3, v0, Lbgd;->s:Ljava/lang/String;

    .line 220
    invoke-static {v2, v3}, Lbeu;->c(Lbfd;Ljava/lang/String;)Lbeu;

    move-result-object v2

    .line 224
    iget v0, v0, Lbgd;->c:I

    invoke-static {v0}, Laal;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcyb;->i:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v0, p0, Lcyb;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    sget-object v2, Lcyb;->o:Ljava/util/Set;

    monitor-enter v2

    .line 265
    :try_start_0
    sget-object v0, Lcyb;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyb;

    .line 266
    invoke-virtual {v0}, Lcyb;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcyb;->e()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 267
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyb;

    .line 272
    invoke-virtual {v0}, Lcyb;->n()V

    goto :goto_1

    .line 277
    :cond_2
    return-void
.end method

.method protected static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(I)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 357
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v0, p0, Lcyb;->p:Landroid/content/Context;

    sget v2, Laal;->hQ:I

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 359
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 362
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->gI:I

    .line 363
    packed-switch p1, :pswitch_data_0

    .line 380
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcyb;->p:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 382
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 381
    invoke-virtual {v2, v1, v4, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 383
    return-object v2

    .line 365
    :pswitch_1
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->gE:I

    goto :goto_0

    .line 368
    :pswitch_2
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->gU:I

    goto :goto_0

    .line 371
    :pswitch_3
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->gG:I

    goto :goto_0

    .line 374
    :pswitch_4
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->gT:I

    goto :goto_0

    .line 377
    :pswitch_5
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->kh:I

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 313
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->gS:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcyb;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 14

    .prologue
    .line 1152
    iget-object v0, p0, Lcyb;->p:Landroid/content/Context;

    const-class v1, Lekq;

    .line 1153
    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    iget v1, p0, Lcyb;->q:I

    .line 1154
    invoke-virtual {p0}, Lcyb;->o()Leku;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lekq;->b(ILeku;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1157
    invoke-virtual {p0}, Lcyb;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    sget v3, Laal;->hM:I

    .line 1159
    invoke-static {v3}, Lezc;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1155
    invoke-static {v1, v2}, Leyt;->a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 423
    iget v1, p0, Lcyb;->q:I

    .line 425
    invoke-virtual {p0}, Lcyb;->q()I

    move-result v3

    .line 426
    invoke-virtual {p0}, Lcyb;->e()I

    move-result v4

    .line 427
    invoke-virtual {p0}, Lcyb;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 423
    :goto_0
    invoke-static {v1, v3, v4, v0}, Leyr;->a(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcyb;->j:I

    .line 430
    invoke-virtual {p0}, Lcyb;->b()Landroid/content/Intent;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    iget-object v1, p0, Lcyb;->u:Lcy;

    iget-object v3, p0, Lcyb;->p:Landroid/content/Context;

    .line 1764
    iget v4, p0, Lcyb;->j:I

    add-int/lit8 v4, v4, 0x1

    .line 433
    const/high16 v5, 0x8000000

    .line 432
    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcy;->b(Landroid/app/PendingIntent;)Lcy;

    .line 2556
    :cond_0
    iget-object v0, p0, Lcyb;->r:Lexn;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcyb;->r:Lexn;

    invoke-virtual {v0}, Lexn;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2558
    :goto_1
    if-nez p1, :cond_5

    .line 2559
    iget-object v0, p0, Lcyb;->p:Landroid/content/Context;

    invoke-static {v0}, Lezc;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2561
    sget-object v0, Lcyb;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2562
    sget v3, Lcyb;->c:I

    if-nez v3, :cond_1

    .line 2563
    iget-object v3, p0, Lcyb;->p:Landroid/content/Context;

    const-string v4, "babel_notification_time_between_rings"

    const/16 v5, 0xa

    invoke-static {v3, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    sput v3, Lcyb;->c:I

    .line 2567
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3051
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 2568
    sub-long v6, v4, v6

    .line 2569
    if-eqz v0, :cond_2

    sget v0, Lcyb;->c:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-lez v0, :cond_e

    .line 2570
    :cond_2
    sget-object v0, Lcyb;->b:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2575
    :cond_3
    :goto_2
    iget-object v0, p0, Lcyb;->u:Lcy;

    invoke-virtual {v0, v2}, Lcy;->a(Landroid/net/Uri;)Lcy;

    .line 2576
    const/4 v0, 0x4

    .line 2577
    invoke-virtual {p0}, Lcyb;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2578
    const/4 v0, 0x6

    .line 2580
    :cond_4
    iget-object v1, p0, Lcyb;->u:Lcy;

    invoke-virtual {v1, v0}, Lcy;->c(I)Lcy;

    .line 441
    :cond_5
    iget-object v0, p0, Lcyb;->u:Lcy;

    .line 3585
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcyb;->b(I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 441
    invoke-virtual {v0, v1}, Lcy;->a(Landroid/app/PendingIntent;)Lcy;

    .line 442
    iget-object v0, p0, Lcyb;->u:Lcy;

    invoke-virtual {p0}, Lcyb;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcy;->d(I)Lcy;

    .line 444
    invoke-static {}, Ldvd;->e()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 447
    iget-object v0, p0, Lcyb;->p:Landroid/content/Context;

    const-class v1, Lawo;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    iget v1, p0, Lcyb;->q:I

    invoke-interface {v0, v1}, Lawo;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    iget-object v0, p0, Lcyb;->t:Ldk;

    instance-of v0, v0, Lcx;

    if-eqz v0, :cond_f

    .line 449
    iget-object v0, p0, Lcyb;->t:Ldk;

    check-cast v0, Lcx;

    invoke-virtual {v0, v1}, Lcx;->a(Ljava/lang/CharSequence;)Lcx;

    .line 455
    :cond_6
    :goto_3
    iget-object v0, p0, Lcyb;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 456
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 457
    const-string v2, "android.people"

    iget-object v0, p0, Lcyb;->s:Ljava/util/HashSet;

    iget-object v3, p0, Lcyb;->s:Ljava/util/HashSet;

    .line 458
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 457
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcyb;->u:Lcy;

    invoke-virtual {v0, v1}, Lcy;->a(Landroid/os/Bundle;)Lcy;

    .line 462
    :cond_7
    iget-object v0, p0, Lcyb;->p:Landroid/content/Context;

    invoke-static {v0}, Lcww;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 464
    sget-object v0, Lcyb;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 466
    iget-object v0, p0, Lcyb;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->cr:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcyb;->d:Landroid/graphics/Bitmap;

    .line 468
    :cond_8
    iget-object v0, p0, Lcyb;->v:Ldl;

    sget-object v1, Lcyb;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ldl;->a(Landroid/graphics/Bitmap;)Ldl;

    .line 474
    :cond_9
    iget-object v0, p0, Lcyb;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcyb;->r:Lexn;

    invoke-virtual {v0}, Lexn;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    :cond_a
    iget-object v0, p0, Lcyb;->i:Ljava/util/List;

    .line 475
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 476
    iget-object v0, p0, Lcyb;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lbeu;

    .line 478
    invoke-virtual {v12}, Lbeu;->d()Z

    move-result v0

    if-nez v0, :cond_15

    .line 479
    invoke-virtual {v12}, Lbeu;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 480
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 481
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 482
    iget-object v3, v0, Lcyx;->h:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 483
    iget-object v0, v0, Lcyx;->e:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 427
    :cond_c
    iget-object v0, p0, Lcyb;->r:Lexn;

    invoke-virtual {v0}, Lexn;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2556
    :cond_d
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_1

    .line 2572
    :cond_e
    iget-object v0, p0, Lcyb;->u:Lcy;

    invoke-virtual {v0}, Lcy;->d()Lcy;

    goto/16 :goto_2

    .line 450
    :cond_f
    iget-object v0, p0, Lcyb;->t:Ldk;

    instance-of v0, v0, Ldb;

    if-eqz v0, :cond_6

    .line 451
    iget-object v0, p0, Lcyb;->t:Ldk;

    check-cast v0, Ldb;

    invoke-virtual {v0, v1}, Ldb;->a(Ljava/lang/CharSequence;)Ldb;

    goto/16 :goto_3

    .line 486
    :cond_10
    invoke-virtual {v12}, Lbeu;->e()I

    move-result v0

    iget-object v1, p0, Lcyb;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v0, v1

    .line 487
    iget-object v0, p0, Lcyb;->h:Ljava/util/List;

    iget-object v3, p0, Lcyb;->p:Landroid/content/Context;

    const-class v4, Lhpz;

    .line 491
    invoke-static {v3, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpz;

    iget v4, p0, Lcyb;->q:I

    invoke-interface {v3, v4}, Lhpz;->a(I)Lhqb;

    move-result-object v3

    const-string v4, "account_name"

    invoke-interface {v3, v4}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-static {}, Lbfq;->a()I

    move-result v4

    const/4 v5, 0x0

    new-instance v6, Lcye;

    .line 3625
    invoke-direct {v6, p0}, Lcye;-><init>(Lcyb;)V

    .line 492
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 4543
    iget-object v7, p0, Lcyb;->p:Landroid/content/Context;

    const-class v10, Leot;

    invoke-static {v7, v10}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leot;

    invoke-interface {v7}, Leot;->d()Z

    move-result v7

    if-nez v7, :cond_17

    .line 4544
    invoke-virtual {p0}, Lcyb;->s()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 4545
    sget-object v10, Lbeo;->c:Lbeo;

    .line 495
    :goto_5
    const/4 v11, 0x0

    move-object v7, p0

    .line 487
    invoke-static/range {v0 .. v11}, Lbem;->a(Ljava/util/List;ILjava/util/List;Ljava/lang/String;ILjava/lang/String;Lbhv;Ljava/lang/Object;Ljava/lang/String;ZLbeo;Z)Lbhs;

    move-result-object v3

    .line 496
    if-eqz v3, :cond_12

    .line 499
    invoke-virtual {v12}, Lbeu;->e()I

    move-result v0

    const/4 v4, 0x1

    if-gt v0, v4, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-le v0, v4, :cond_18

    :cond_11
    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v3, v0}, Lbhs;->a(Z)V

    .line 503
    :cond_12
    iget-object v0, p0, Lcyb;->p:Landroid/content/Context;

    const-class v4, Leit;

    invoke-static {v0, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Leit;

    .line 505
    invoke-virtual {v13, v3}, Leit;->c(Lehx;)V

    .line 507
    iget-object v0, p0, Lcyb;->p:Landroid/content/Context;

    invoke-static {v0}, Lcww;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 508
    iget-object v0, p0, Lcyb;->h:Ljava/util/List;

    iget-object v3, p0, Lcyb;->p:Landroid/content/Context;

    const-class v4, Lhpz;

    .line 512
    invoke-static {v3, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpz;

    iget v4, p0, Lcyb;->q:I

    invoke-interface {v3, v4}, Lhpz;->a(I)Lhqb;

    move-result-object v3

    const-string v4, "account_name"

    invoke-interface {v3, v4}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5183
    sget v4, Lbfq;->c:I

    if-nez v4, :cond_13

    .line 6036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 5186
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->eH:I

    .line 5187
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lbfq;->c:I

    .line 5189
    :cond_13
    sget v4, Lbfq;->c:I

    .line 513
    const/4 v5, 0x0

    new-instance v6, Lcyf;

    .line 6647
    invoke-direct {v6, p0}, Lcyf;-><init>(Lcyb;)V

    .line 513
    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Lbeo;->a:Lbeo;

    const/4 v11, 0x0

    move-object v7, p0

    .line 508
    invoke-static/range {v0 .. v11}, Lbem;->a(Ljava/util/List;ILjava/util/List;Ljava/lang/String;ILjava/lang/String;Lbhv;Ljava/lang/Object;Ljava/lang/String;ZLbeo;Z)Lbhs;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_14

    .line 518
    invoke-virtual {v12}, Lbeu;->e()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_19

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v1, v0}, Lbhs;->a(Z)V

    .line 520
    :cond_14
    invoke-virtual {v13, v1}, Leit;->c(Lehx;)V

    .line 526
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyb;->e:Z

    .line 527
    invoke-virtual {p0}, Lcyb;->u()V

    .line 530
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcyc;

    invoke-direct {v1, p0}, Lcyc;-><init>(Lcyb;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 539
    return-void

    .line 4546
    :cond_16
    invoke-virtual {p0}, Lcyb;->r()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 4547
    sget-object v10, Lbeo;->b:Lbeo;

    goto/16 :goto_5

    .line 4550
    :cond_17
    sget-object v10, Lbeo;->a:Lbeo;

    goto/16 :goto_5

    .line 499
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 518
    :cond_19
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract a()Z
.end method

.method protected final b(I)Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 589
    invoke-virtual {p0}, Lcyb;->g()Landroid/content/Intent;

    move-result-object v1

    .line 590
    if-lez p1, :cond_0

    .line 591
    const-string v0, "opened_from_impression"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    :cond_0
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    const-string v0, "prepareNotification notification"

    invoke-static {v0, v1}, Lewz;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 596
    iget-object v0, p0, Lcyb;->p:Landroid/content/Context;

    invoke-static {v0}, Leo;->a(Landroid/content/Context;)Leo;

    move-result-object v0

    .line 598
    invoke-virtual {v0, v1}, Leo;->b(Landroid/content/Intent;)Leo;

    move-result-object v2

    .line 601
    invoke-virtual {v2}, Leo;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 602
    invoke-virtual {v2, v0}, Leo;->a(I)Landroid/content/Intent;

    move-result-object v3

    .line 603
    sget-object v4, Lcyb;->a:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 604
    const-string v0, "com.google.android.apps.hangouts.phone.conversationlist"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    :cond_1
    const-string v0, "account_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 611
    const-string v0, "account_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 612
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Leo;->a()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 613
    invoke-virtual {v2, v0}, Leo;->a(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 601
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6760
    :cond_3
    iget v1, p0, Lcyb;->j:I

    .line 619
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_4

    .line 621
    const/high16 v0, 0x10000000

    .line 618
    :goto_2
    invoke-virtual {v2, v1, v0}, Leo;->a(II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 621
    :cond_4
    const/high16 v0, 0x8000000

    goto :goto_2
.end method

.method public abstract b()Landroid/content/Intent;
.end method

.method public b(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 319
    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->gR:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcyb;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcyb;->a(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcyb;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcyb;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeu;

    .line 169
    invoke-virtual {v0}, Lbeu;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 170
    iget-object v2, v0, Lcyx;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    iget-object v2, p0, Lcyb;->h:Ljava/util/List;

    iget-object v0, v0, Lcyx;->h:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcyb;->a(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcyb;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeu;

    .line 181
    invoke-virtual {v0}, Lbeu;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 183
    iget-object v1, v0, Lcyx;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    iget-object v1, p0, Lcyb;->s:Ljava/util/HashSet;

    const-string v5, "tel"

    iget-object v0, v0, Lcyx;->c:Ljava/lang/String;

    invoke-static {v5, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {v0}, Lcyx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    iget-object v1, p0, Lcyb;->p:Landroid/content/Context;

    const-class v5, Ldcj;

    invoke-static {v1, v5}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldcj;

    .line 190
    const-string v5, "android.permission.READ_CONTACTS"

    invoke-interface {v1, v5}, Ldcj;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.permission.WRITE_CONTACTS"

    .line 191
    invoke-interface {v1, v5}, Ldcj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    :cond_3
    iget-object v5, p0, Lcyb;->p:Landroid/content/Context;

    iget-object v1, p0, Lcyb;->p:Landroid/content/Context;

    const-class v6, Lhpz;

    .line 194
    invoke-static {v1, v6}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpz;

    iget v6, p0, Lcyb;->q:I

    invoke-interface {v1, v6}, Lhpz;->a(I)Lhqb;

    move-result-object v1

    const-string v6, "account_name"

    .line 195
    invoke-interface {v1, v6}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v0}, Lcyx;->b()Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-static {v5, v1, v0}, Lgng;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v5, v0, v1}, Lgng;->a(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 198
    :goto_1
    if-eqz v0, :cond_1

    .line 199
    iget-object v1, p0, Lcyb;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_4
    return-void

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method public abstract c()Z
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()Landroid/content/Intent;
.end method

.method protected h()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 691
    sget-object v0, Lcyb;->o:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Laen;->b(Z)V

    .line 693
    iget-object v0, p0, Lcyb;->u:Lcy;

    invoke-virtual {p0}, Lcyb;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcy;->a(I)Lcy;

    .line 694
    iget-object v0, p0, Lcyb;->u:Lcy;

    iget-object v1, p0, Lcyb;->t:Ldk;

    invoke-virtual {v0, v1}, Lcy;->a(Ldk;)Lcy;

    .line 695
    iget-object v0, p0, Lcyb;->u:Lcy;

    iget-object v1, p0, Lcyb;->v:Ldl;

    invoke-virtual {v0, v1}, Lcy;->a(Lda;)Lcy;

    .line 696
    iget-object v0, p0, Lcyb;->u:Lcy;

    invoke-virtual {v0, v8}, Lcy;->a(Z)Lcy;

    .line 697
    iget-object v0, p0, Lcyb;->u:Lcy;

    iget-object v1, p0, Lcyb;->w:Lcy;

    invoke-virtual {v1}, Lcy;->g()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcy;->a(Landroid/app/Notification;)Lcy;

    .line 698
    iget-object v0, p0, Lcyb;->u:Lcy;

    iget-object v1, p0, Lcyb;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->dg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcy;->e(I)Lcy;

    .line 699
    iget-object v0, p0, Lcyb;->u:Lcy;

    invoke-virtual {v0}, Lcy;->g()Landroid/app/Notification;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcyb;->p:Landroid/content/Context;

    invoke-static {v1}, Ldu;->a(Landroid/content/Context;)Ldu;

    move-result-object v1

    .line 703
    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 704
    sget-boolean v2, Lcyb;->n:Z

    if-eqz v2, :cond_0

    .line 705
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcyb;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-virtual {p0}, Lcyb;->e()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x33

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Notifier.postNotification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " [tag=]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [id=]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcyb;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcyb;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ldu;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 710
    invoke-virtual {p0}, Lcyb;->i()V

    .line 712
    iput-boolean v8, p0, Lcyb;->g:Z

    .line 713
    sget-object v0, Lcyb;->o:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 714
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 840
    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 829
    invoke-virtual {p0}, Lcyb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcyb;->p:Landroid/content/Context;

    iget v1, p0, Lcyb;->q:I

    invoke-static {v0, v1}, Lcyb;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 832
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcyb;->p:Landroid/content/Context;

    iget v1, p0, Lcyb;->q:I

    iget-object v2, p0, Lcyb;->r:Lexn;

    invoke-virtual {v2}, Lexn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcyb;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected k()V
    .locals 0

    .prologue
    .line 846
    return-void
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    return-object v0
.end method

.method protected n()V
    .locals 2

    .prologue
    .line 720
    sget-object v1, Lcyb;->o:Ljava/util/Set;

    monitor-enter v1

    .line 721
    :try_start_0
    iget-boolean v0, p0, Lcyb;->f:Z

    if-nez v0, :cond_0

    .line 722
    sget-object v0, Lcyb;->o:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 724
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyb;->f:Z

    .line 725
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected o()Leku;
    .locals 1

    .prologue
    .line 776
    sget-object v0, Leku;->b:Leku;

    return-object v0
.end method

.method protected q()I
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x3

    return v0
.end method

.method protected r()Z
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcyb;->o()Leku;

    move-result-object v0

    sget-object v1, Leku;->a:Leku;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected s()Z
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcyb;->o()Leku;

    move-result-object v0

    sget-object v1, Leku;->c:Leku;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final t()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcyb;->b(I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .locals 2

    .prologue
    .line 664
    iget-object v1, p0, Lcyb;->x:Ljava/util/Set;

    monitor-enter v1

    .line 665
    :try_start_0
    iget-object v0, p0, Lcyb;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcyb;->v()V

    .line 668
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method v()V
    .locals 2

    .prologue
    .line 676
    sget-object v1, Lcyb;->o:Ljava/util/Set;

    monitor-enter v1

    .line 677
    :try_start_0
    iget-boolean v0, p0, Lcyb;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcyb;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcyb;->g:Z

    if-nez v0, :cond_0

    .line 678
    invoke-virtual {p0}, Lcyb;->h()V

    .line 682
    :goto_0
    monitor-exit v1

    return-void

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcyb;->k()V

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected w()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcyb;->j:I

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected x()I
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcyb;->j:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
