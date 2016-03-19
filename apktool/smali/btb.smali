.class public final Lbtb;
.super Lzu;
.source "SourceFile"

# interfaces
.implements Laho;
.implements Lahp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzu",
        "<",
        "Laao;",
        ">;",
        "Laho",
        "<",
        "Lbso;",
        ">;",
        "Lahp",
        "<",
        "Lbso;",
        ">;"
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field d:Lbpq;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbso;",
            ">;"
        }
    .end annotation
.end field

.field f:[I

.field private final g:Lahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lahu",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/view/View;

.field private final i:Landroid/view/View;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View;Lahw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbso;",
            ">;",
            "Landroid/view/View;",
            "Lahw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lzu;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbtb;->j:Ljava/util/Map;

    .line 82
    sget v0, Laal;->kH:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbtb;->i:Landroid/view/View;

    .line 83
    sget v0, Laal;->kA:I

    .line 84
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbtb;->h:Landroid/view/View;

    .line 86
    iput-object p1, p0, Lbtb;->c:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lbtb;->e:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lbtb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lbtb;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbso;

    .line 91
    iget-object v2, p0, Lbtb;->j:Ljava/util/Map;

    iget-object v0, v0, Lbso;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p4}, Lahw;->h()Lahu;

    move-result-object v1

    .line 1127
    sget-object v0, Lauk;->w:Lauk;

    if-nez v0, :cond_1

    .line 1128
    new-instance v0, Lauk;

    invoke-direct {v0}, Lauk;-><init>()V

    .line 1129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lauk;->c(Landroid/content/Context;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    .line 1130
    invoke-virtual {v0}, Lauk;->c()Laug;

    move-result-object v0

    check-cast v0, Lauk;

    sput-object v0, Lauk;->w:Lauk;

    .line 1132
    :cond_1
    sget-object v0, Lauk;->w:Lauk;

    .line 94
    invoke-virtual {v1, v0}, Lahu;->a(Laug;)Lahu;

    move-result-object v0

    iput-object v0, p0, Lbtb;->g:Lahu;

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbtb;->a(Z)V

    .line 1210
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1211
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1212
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1213
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1215
    iget v0, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x3c

    div-int/lit8 v0, v0, 0x64

    .line 100
    iput v0, p0, Lbtb;->k:I

    .line 102
    const-class v0, Lbpq;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpq;

    iput-object v0, p0, Lbtb;->d:Lbpq;

    .line 103
    iget-object v0, p0, Lbtb;->d:Lbpq;

    invoke-interface {v0}, Lbpq;->h()Lksf;

    move-result-object v0

    invoke-direct {p0, v0}, Lbtb;->b(Ljava/util/List;)V

    .line 104
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbkq;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkq;

    .line 299
    iget-object v4, p0, Lbtb;->e:Ljava/util/List;

    iget-object v1, p0, Lbtb;->j:Ljava/util/Map;

    iget-object v5, v0, Lbkq;->b:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2043
    invoke-static {v1, v6}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 299
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, v0, Lbkq;->c:Lbkr;

    sget-object v4, Lbkr;->b:Lbkr;

    if-eq v1, v4, :cond_1

    iget-object v1, v0, Lbkq;->c:Lbkr;

    sget-object v4, Lbkr;->c:Lbkr;

    if-ne v1, v4, :cond_2

    .line 302
    :cond_1
    iget-object v1, v0, Lbkq;->c:Lbkr;

    sget-object v4, Lbkr;->b:Lbkr;

    if-ne v1, v4, :cond_3

    .line 303
    sget-object v1, Lbsq;->b:Lbsq;

    .line 304
    :goto_1
    new-instance v4, Lbsp;

    iget-object v5, v0, Lbkq;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Lbsp;-><init>(Ljava/lang/String;Lbsq;)V

    invoke-virtual {v4}, Lbsp;->a()Lbso;

    move-result-object v1

    .line 305
    iput-boolean v7, v1, Lbso;->g:Z

    .line 306
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_2
    iget-object v1, p0, Lbtb;->e:Ljava/util/List;

    iget-object v4, p0, Lbtb;->j:Ljava/util/Map;

    iget-object v0, v0, Lbkq;->b:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3043
    invoke-static {v0, v6}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 308
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbso;

    iput-boolean v7, v0, Lbso;->g:Z

    goto :goto_0

    .line 303
    :cond_3
    sget-object v1, Lbsq;->a:Lbsq;

    goto :goto_1

    .line 312
    :cond_4
    invoke-virtual {p0, v2}, Lbtb;->a(Ljava/util/List;)V

    .line 313
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lbtb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Laao;
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laen;->hN:I

    const/4 v2, 0x0

    .line 110
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lbtb;->k:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 114
    iget-object v1, p0, Lbtb;->f:[I

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lbtc;

    invoke-direct {v2, p0, v0}, Lbtc;-><init>(Lbtb;Landroid/view/View;)V

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 127
    :cond_0
    new-instance v1, Lbtg;

    invoke-direct {v1, v0}, Lbtg;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public synthetic a(Ljava/lang/Object;)Lahu;
    .locals 5

    .prologue
    .line 60
    check-cast p1, Lbso;

    .line 4198
    new-instance v0, Lave;

    iget-object v1, p1, Lbso;->e:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lave;-><init>(Ljava/lang/String;JI)V

    .line 4199
    iget-object v1, p0, Lbtb;->g:Lahu;

    invoke-virtual {v1}, Lahu;->a()Lahu;

    move-result-object v1

    invoke-static {v0}, Lauk;->b(Laiw;)Lauk;

    move-result-object v0

    invoke-virtual {v1, v0}, Lahu;->a(Laug;)Lahu;

    move-result-object v0

    iget-object v1, p1, Lbso;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lahu;->a(Landroid/net/Uri;)Lahu;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method public a(Laao;I)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lbtb;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lbtb;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lbtb;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbso;

    .line 138
    check-cast p1, Lbtg;

    .line 139
    iget-object v1, v0, Lbso;->b:Lbsq;

    sget-object v4, Lbsq;->a:Lbsq;

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lbtg;->b(Z)V

    .line 140
    iput-object v0, p1, Lbtg;->p:Lbso;

    .line 141
    iget-object v1, v0, Lbso;->b:Lbsq;

    sget-object v4, Lbsq;->b:Lbsq;

    if-ne v1, v4, :cond_3

    .line 144
    new-instance v1, Lave;

    iget-object v4, v0, Lbso;->e:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-direct {v1, v4, v6, v7, v3}, Lave;-><init>(Ljava/lang/String;JI)V

    .line 147
    iget-object v3, p0, Lbtb;->g:Lahu;

    .line 148
    invoke-virtual {v3}, Lahu;->a()Lahu;

    move-result-object v3

    .line 149
    invoke-static {v1}, Lauk;->b(Laiw;)Lauk;

    move-result-object v1

    invoke-virtual {v3, v1}, Lahu;->a(Laug;)Lahu;

    move-result-object v1

    iget-object v3, v0, Lbso;->d:Landroid/net/Uri;

    .line 150
    invoke-virtual {v1, v3}, Lahu;->a(Landroid/net/Uri;)Lahu;

    move-result-object v1

    iget-object v3, p1, Lbtg;->r:Landroid/widget/ImageView;

    .line 151
    invoke-virtual {v1, v3}, Lahu;->a(Landroid/widget/ImageView;)Lauw;

    .line 164
    :cond_1
    :goto_1
    iget-object v3, p1, Lbtg;->q:Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;

    iget-object v1, p1, Lbtg;->q:Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;

    .line 165
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 164
    invoke-virtual {v3, v1, v0, v2}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->a(Landroid/view/View;Lbso;Z)V

    .line 167
    iget-object v0, p1, Lbtg;->q:Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;

    new-instance v1, Lbte;

    invoke-direct {v1, p0, p2}, Lbte;-><init>(Lbtb;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void

    :cond_2
    move v1, v3

    .line 139
    goto :goto_0

    .line 152
    :cond_3
    iget-object v1, v0, Lbso;->b:Lbsq;

    sget-object v3, Lbsq;->a:Lbsq;

    if-ne v1, v3, :cond_1

    .line 153
    iget-object v1, p1, Lbtg;->s:Landroid/widget/VideoView;

    iget-object v3, v0, Lbso;->d:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 154
    iget-object v1, p1, Lbtg;->s:Landroid/widget/VideoView;

    new-instance v3, Lbtd;

    invoke-direct {v3, p0, p1}, Lbtd;-><init>(Lbtb;Lbtg;)V

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 162
    iget-object v1, p0, Lbtb;->c:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lbtg;->a(Landroid/content/Context;)V

    goto :goto_1
.end method

.method a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbso;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lbtb;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lbtb;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lbtb;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbso;

    iget-wide v0, v0, Lbso;->c:J

    return-wide v0
.end method

.method public synthetic b()[I
    .locals 1

    .prologue
    .line 3205
    iget-object v0, p0, Lbtb;->f:[I

    .line 60
    return-object v0
.end method

.method public c(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lbso;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lbtb;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized c()Lksf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksf",
            "<",
            "Lbso;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    new-instance v2, Lksh;

    invoke-direct {v2}, Lksh;-><init>()V

    .line 254
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lbtb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 255
    iget-object v0, p0, Lbtb;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbso;

    .line 256
    iget-boolean v3, v0, Lbso;->g:Z

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {v2, v0}, Lksh;->c(Ljava/lang/Object;)Lksh;

    .line 254
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v2}, Lksh;->a()Lksf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()I
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    iget-object v1, p0, Lbtb;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbso;

    .line 268
    iget-boolean v0, v0, Lbso;->g:Z

    if-eqz v0, :cond_1

    .line 269
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 271
    goto :goto_0

    .line 272
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
