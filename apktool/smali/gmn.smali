.class public final Lgmn;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lgmb;


# static fields
.field private static final a:I


# instance fields
.field private b:Lgme;

.field private c:Ljava/lang/String;

.field private d:Lgmr;

.field private e:Lgmp;

.field private f:I

.field private g:Landroid/view/LayoutInflater;

.field private h:I

.field private i:Landroid/content/Context;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgpt;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lgma;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget v0, Laen;->jV:I

    sput v0, Lgmn;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILgmr;Lgmp;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    iput-boolean v3, p0, Lgmn;->o:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgmn;->j:Ljava/util/ArrayList;

    .line 84
    iput-boolean v1, p0, Lgmn;->k:Z

    .line 85
    iput-boolean v1, p0, Lgmn;->l:Z

    .line 86
    iput-object p1, p0, Lgmn;->i:Landroid/content/Context;

    .line 87
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :goto_0
    iput p2, p0, Lgmn;->f:I

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lgmn;->g:Landroid/view/LayoutInflater;

    .line 89
    if-eqz p3, :cond_1

    :goto_1
    iput-object p3, p0, Lgmn;->d:Lgmr;

    .line 90
    iput-object p4, p0, Lgmn;->e:Lgmp;

    .line 92
    new-array v0, v1, [I

    sget v1, Laal;->sF:I

    aput v1, v0, v3

    .line 95
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 96
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->sG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 97
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lgmn;->h:I

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    new-instance v0, Lgma;

    invoke-direct {v0, p1, p0}, Lgma;-><init>(Landroid/content/Context;Lgmb;)V

    iput-object v0, p0, Lgmn;->n:Lgma;

    .line 101
    return-void

    .line 87
    :cond_0
    sget p2, Lgmn;->a:I

    goto :goto_0

    .line 89
    :cond_1
    new-instance p3, Lgmo;

    .line 1204
    invoke-direct {p3, p0}, Lgmo;-><init>(Lgmn;)V

    goto :goto_1
.end method

.method public static a(Ljava/util/List;Lgpt;Lgpt;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgpt;",
            ">;",
            "Lgpt;",
            "Lgpt;",
            ")",
            "Ljava/util/List",
            "<",
            "Lgpt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 414
    invoke-static {p2}, Laal;->a(Lgpt;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 415
    invoke-interface {p2}, Lgpt;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 419
    :goto_0
    invoke-static {p1}, Laal;->a(Lgpt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-interface {p1}, Lgpt;->a()Ljava/lang/String;

    move-result-object v2

    .line 424
    :cond_0
    const/4 v0, 0x0

    move v4, v3

    move v5, v3

    move v3, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 425
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpt;

    .line 426
    invoke-static {v0}, Laal;->a(Lgpt;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 427
    if-gez v5, :cond_1

    invoke-interface {v0}, Lgpt;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v3

    .line 430
    :cond_1
    if-gez v4, :cond_2

    invoke-interface {v0}, Lgpt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v3

    .line 424
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 435
    :cond_3
    if-ltz v5, :cond_4

    .line 436
    invoke-interface {p0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 438
    :cond_4
    if-gez v4, :cond_5

    if-eqz v2, :cond_5

    .line 439
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 440
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_5
    return-object p0

    :cond_6
    move-object v1, v2

    goto :goto_0
.end method

.method private b(I)Z
    .locals 2

    .prologue
    .line 1363
    iget-boolean v0, p0, Lgmn;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    .line 354
    :goto_0
    iget-boolean v1, p0, Lgmn;->l:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lgmn;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1363
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 354
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(I)Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lgmn;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgmn;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lgpt;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, p1}, Lgmn;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lgmn;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lgmn;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgmn;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lgmn;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpt;

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-boolean v0, p0, Lgmn;->k:Z

    if-eq v0, v1, :cond_0

    .line 109
    iput-boolean v1, p0, Lgmn;->k:Z

    .line 110
    invoke-virtual {p0}, Lgmn;->notifyDataSetChanged()V

    .line 112
    :cond_0
    return-void
.end method

.method public a(Lgme;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lgmn;->b:Lgme;

    .line 105
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgpt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgmn;->o:Z

    .line 330
    iput-object p1, p0, Lgmn;->j:Ljava/util/ArrayList;

    .line 331
    invoke-virtual {p0}, Lgmn;->notifyDataSetChanged()V

    .line 332
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgpt;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1308
    iget-boolean v0, p0, Lgmn;->m:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    .line 1310
    :cond_0
    iget-object v0, p0, Lgmn;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgmn;->j:Ljava/util/ArrayList;

    .line 1313
    :cond_1
    iget-object v0, p0, Lgmn;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1314
    if-eqz p1, :cond_2

    .line 1315
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpt;

    .line 1316
    iget-object v2, p0, Lgmn;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1319
    :cond_2
    invoke-virtual {p0}, Lgmn;->notifyDataSetChanged()V

    :goto_1
    return-void

    .line 1321
    :cond_3
    iput-boolean v1, p0, Lgmn;->o:Z

    .line 1322
    iget-object v0, p0, Lgmn;->n:Lgma;

    invoke-virtual {v0, p1}, Lgma;->a(Ljava/util/List;)V

    .line 1323
    invoke-virtual {p0}, Lgmn;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgmn;->m:Z

    .line 396
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 336
    iget-boolean v0, p0, Lgmn;->o:Z

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return v1

    .line 339
    :cond_0
    iget-boolean v0, p0, Lgmn;->k:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lgmn;->l:Z

    if-eqz v3, :cond_3

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lgmn;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lgmn;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_1
    add-int v1, v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 339
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lgmn;->a(I)Lgpt;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 368
    invoke-direct {p0, p1}, Lgmn;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-wide/16 v0, -0x2

    .line 377
    :goto_0
    return-wide v0

    .line 370
    :cond_0
    invoke-direct {p0, p1}, Lgmn;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v0, v2

    .line 371
    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lgmn;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgmn;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 374
    iget-object v0, p0, Lgmn;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpt;

    .line 375
    invoke-static {v0}, Laal;->a(Lgpt;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lgpt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_0

    :cond_3
    move-wide v0, v2

    .line 377
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lgmn;->o:Z

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x3

    .line 177
    :goto_0
    return v0

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Lgmn;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const/4 v0, 0x2

    goto :goto_0

    .line 174
    :cond_1
    invoke-direct {p0, p1}, Lgmn;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    invoke-virtual {p0, p1}, Lgmn;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 124
    if-nez p2, :cond_0

    .line 125
    iget-object v0, p0, Lgmn;->g:Landroid/view/LayoutInflater;

    sget v1, Laen;->jY:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 126
    check-cast v0, Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->a()V

    move-object p2, v1

    .line 150
    :cond_0
    :goto_0
    return-object p2

    .line 128
    :cond_1
    invoke-virtual {p0, p1}, Lgmn;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 130
    if-nez p2, :cond_0

    .line 131
    iget-object v0, p0, Lgmn;->g:Landroid/view/LayoutInflater;

    sget v1, Laen;->jX:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0, p1}, Lgmn;->getItemViewType(I)I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 135
    if-nez p2, :cond_0

    .line 136
    iget-object v0, p0, Lgmn;->g:Landroid/view/LayoutInflater;

    sget v1, Laen;->jW:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 139
    :cond_3
    if-nez p2, :cond_4

    .line 140
    iget-object v0, p0, Lgmn;->g:Landroid/view/LayoutInflater;

    iget v1, p0, Lgmn;->f:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 142
    :cond_4
    invoke-virtual {p0, p1}, Lgmn;->a(I)Lgpt;

    move-result-object v1

    .line 144
    iget-object v0, p0, Lgmn;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v1}, Laal;->a(Lgpt;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    iget-object v0, p0, Lgmn;->c:Ljava/lang/String;

    invoke-interface {v1}, Lgpt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    :cond_5
    iget-object v2, p0, Lgmn;->b:Lgme;

    iget-object v0, p0, Lgmn;->d:Lgmr;

    iget-object v3, p0, Lgmn;->e:Lgmp;

    iget v4, p0, Lgmn;->h:I

    .line 1260
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    .line 1261
    invoke-interface {v0, p2}, Lgmr;->a(Landroid/view/View;)Lgmq;

    move-result-object v0

    .line 1262
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1267
    :goto_1
    iget-object v5, v0, Lgmq;->e:Landroid/widget/ImageView;

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    invoke-static {v1}, Laal;->a(Lgpt;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1268
    iget-object v5, v0, Lgmq;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1269
    invoke-interface {v1}, Lgpt;->T_()Ljava/lang/String;

    move-result-object v5

    .line 1270
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1271
    iget-object v5, v0, Lgmq;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Lgme;->a(Landroid/widget/ImageView;)V

    .line 1272
    iget-object v5, v0, Lgmq;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v5, v1, v7}, Lgme;->a(Landroid/widget/ImageView;Lgpt;I)V

    .line 1280
    :cond_6
    :goto_2
    iget-object v2, v0, Lgmq;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    invoke-static {v1}, Laal;->a(Lgpt;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1281
    iget-object v2, v0, Lgmq;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1282
    iget-object v2, v0, Lgmq;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1283
    iget-object v2, v0, Lgmq;->d:Landroid/widget/TextView;

    invoke-interface {v1}, Lgpt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v2, v0, Lgmq;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lgmn;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfii;->s:I

    new-array v6, v7, [Ljava/lang/Object;

    .line 1285
    invoke-interface {v1}, Lgpt;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1284
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1287
    :cond_7
    if-eqz v3, :cond_0

    .line 1288
    invoke-virtual {v3, v0, v1}, Lgmp;->a(Lgmq;Lgpt;)V

    goto/16 :goto_0

    .line 1264
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgmq;

    goto :goto_1

    .line 1274
    :cond_9
    iget-object v5, v0, Lgmq;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Lgme;->a(Landroid/widget/ImageView;)V

    .line 1276
    iget-object v2, v0, Lgmq;->e:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lgme;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lgmn;->o:Z

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
