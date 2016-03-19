.class public final Lbuh;
.super Limg;
.source "SourceFile"


# static fields
.field static final a:Lezv;

.field static b:I


# instance fields
.field c:Landroid/widget/GridView;

.field d:Ljava/lang/String;

.field e:Lhpu;

.field f:Lceh;

.field g:Lcei;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "Babel_Stickers"

    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Lbuh;->a:Lezv;

    .line 59
    const/4 v0, 0x0

    sput v0, Lbuh;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Limg;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lbuh;->f:Lceh;

    invoke-interface {v0}, Lceh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbuh;->c:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbuh;->c:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lbuh;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lbuh;->f:Lceh;

    invoke-interface {v2, v1}, Lceh;->a(Landroid/view/View;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/widget/GridView;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridView;",
            "Ljava/util/ArrayList",
            "<",
            "Lbul;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0}, Lbuh;->getActivity()Lba;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lbuh;->f:Lceh;

    invoke-interface {v0}, Lceh;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lbum;

    invoke-virtual {v0}, Lbum;->a()V

    .line 421
    :cond_2
    if-eqz p2, :cond_3

    .line 422
    new-instance v0, Lbum;

    invoke-direct {v0, p0, p2}, Lbum;-><init>(Lbuh;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 424
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 377
    invoke-virtual {p0}, Lbuh;->getTargetFragment()Lav;

    move-result-object v0

    check-cast v0, Lbut;

    iget-object v4, v0, Lbut;->i:Ljava/util/List;

    .line 379
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    .line 380
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldro;

    .line 381
    const-string v1, "Recent"

    iget-object v6, v0, Ldro;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    iget-object v1, v0, Ldro;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldrp;

    .line 386
    iget-object v7, v1, Ldrp;->a:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 388
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    sub-int/2addr v2, v6

    mul-int/lit16 v2, v2, 0x3e8

    iget-object v6, v0, Ldro;->e:Ljava/util/List;

    .line 389
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v0, v0, Ldro;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sub-int v0, v6, v0

    add-int/2addr v0, v2

    .line 393
    :goto_1
    if-eq v0, v3, :cond_6

    move v2, v0

    .line 398
    :cond_2
    :goto_2
    if-ne v2, v3, :cond_5

    .line 399
    const-string v1, "Babel_Stickers"

    const-string v2, "Photo not found for log: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :cond_3
    :goto_4
    return-void

    .line 399
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 401
    :cond_5
    iget-object v0, p0, Lbuh;->binder:Lilh;

    const-class v1, Lhpu;

    .line 402
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    const/16 v1, 0x76c

    .line 401
    invoke-static {v0, v1, v2}, Laal;->a(Lbfd;II)V

    .line 405
    if-eqz p2, :cond_3

    .line 406
    iget-object v0, p0, Lbuh;->binder:Lilh;

    const-class v1, Lhpu;

    .line 407
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    const/16 v1, 0x8c0

    .line 406
    invoke-static {v0, v1, v2}, Laal;->a(Lbfd;II)V

    goto :goto_4

    :cond_6
    move v2, v0

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_2
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lbuh;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lbuh;->e:Lhpu;

    .line 81
    iget-object v0, p0, Lbuh;->binder:Lilh;

    const-class v1, Lceh;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceh;

    iput-object v0, p0, Lbuh;->f:Lceh;

    .line 82
    iget-object v0, p0, Lbuh;->binder:Lilh;

    const-class v1, Lcei;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcei;

    iput-object v0, p0, Lbuh;->g:Lcei;

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lbuh;->a:Lezv;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    invoke-super {p0, p1}, Limg;->onCreate(Landroid/os/Bundle;)V

    .line 299
    invoke-virtual {p0}, Lbuh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbuh;->d:Ljava/lang/String;

    .line 300
    sget-object v0, Lbuh;->a:Lezv;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 306
    sget v0, Laal;->lb:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lbuh;->c:Landroid/widget/GridView;

    .line 307
    iget-object v0, p0, Lbuh;->c:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbuh;->a(Landroid/widget/GridView;Ljava/util/ArrayList;)V

    .line 309
    iget-object v0, p0, Lbuh;->c:Landroid/widget/GridView;

    new-instance v1, Lbui;

    invoke-direct {v1, p0}, Lbui;-><init>(Lbuh;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 316
    iget-object v0, p0, Lbuh;->c:Landroid/widget/GridView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lbuh;->a()V

    .line 104
    invoke-super {p0}, Limg;->onDestroy()V

    .line 105
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lbuh;->c:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbuh;->c:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lbuh;->f:Lceh;

    invoke-interface {v0}, Lceh;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-direct {p0}, Lbuh;->a()V

    .line 437
    :goto_0
    iget-object v0, p0, Lbuh;->c:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lbum;

    invoke-virtual {v0}, Lbum;->clear()V

    .line 438
    iget-object v0, p0, Lbuh;->c:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbuh;->a(Landroid/widget/GridView;Ljava/util/ArrayList;)V

    .line 440
    :cond_0
    invoke-super {p0}, Limg;->onDestroyView()V

    .line 441
    return-void

    .line 434
    :cond_1
    const-string v0, "Babel_Stickers"

    const-string v1, "Clearing cache."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lbuh;->c:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lbum;

    invoke-virtual {v0}, Lbum;->a()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-virtual {p0}, Lbuh;->getTargetFragment()Lav;

    move-result-object v0

    check-cast v0, Lbut;

    iget-object v0, v0, Lbut;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lbuk;

    .line 1262
    invoke-direct {v0, p0}, Lbuk;-><init>(Lbuh;)V

    .line 361
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lbuk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 365
    :goto_0
    invoke-super {p0}, Limg;->onStart()V

    .line 366
    return-void

    .line 363
    :cond_0
    const-string v0, "Babel_Stickers"

    const-string v1, "No sticker cache at start."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
