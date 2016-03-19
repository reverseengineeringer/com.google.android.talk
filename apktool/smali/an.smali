.class public final Lan;
.super Lbz;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final a:Z


# instance fields
.field final b:Lbh;

.field c:Lorg/chromium/net/CronetEngine$Builder$Pkp;

.field d:Lorg/chromium/net/CronetEngine$Builder$Pkp;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:Ljava/lang/String;

.field o:Z

.field p:I

.field q:I

.field r:Ljava/lang/CharSequence;

.field s:I

.field t:Ljava/lang/CharSequence;

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lan;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lbh;)V
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Lbz;-><init>()V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lan;->m:Z

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Lan;->p:I

    .line 354
    iput-object p1, p0, Lan;->b:Lbh;

    .line 355
    return-void
.end method

.method private a(Z)I
    .locals 2

    .prologue
    .line 621
    iget-boolean v0, p0, Lan;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    sget-boolean v0, Lbh;->a:Z

    if-eqz v0, :cond_1

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Commit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    new-instance v0, Lht;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Lht;-><init>(Ljava/lang/String;)V

    .line 625
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 626
    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Lan;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 628
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lan;->o:Z

    .line 629
    iget-boolean v0, p0, Lan;->l:Z

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Lan;->b:Lbh;

    invoke-virtual {v0, p0}, Lbh;->a(Lan;)I

    move-result v0

    iput v0, p0, Lan;->p:I

    .line 634
    :goto_0
    iget-object v0, p0, Lan;->b:Lbh;

    invoke-virtual {v0, p0, p1}, Lbh;->a(Ljava/lang/Runnable;Z)V

    .line 635
    iget v0, p0, Lan;->p:I

    return v0

    .line 632
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lan;->p:I

    goto :goto_0
.end method

.method static synthetic a(Lan;Lien;ZLav;)Lhq;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 9341
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    .line 9342
    invoke-virtual {p3}, Lav;->getView()Landroid/view/View;

    move-result-object v1

    .line 9343
    if-eqz v1, :cond_0

    .line 9344
    iget-object v2, p0, Lan;->u:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 9345
    invoke-static {v0, v1}, Laal;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 9346
    if-eqz p2, :cond_2

    .line 9347
    iget-object v1, p0, Lan;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Lan;->v:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Lan;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lhq;)Lhq;

    move-result-object v0

    .line 9290
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 9291
    iget-object v1, p3, Lav;->ai:Lem;

    if-eqz v1, :cond_1

    .line 9292
    iget-object v1, p3, Lav;->ai:Lem;

    .line 9295
    :cond_1
    invoke-direct {p0, p1, v0, v3}, Lan;->a(Lien;Lhq;Z)V

    .line 188
    :goto_1
    return-object v0

    .line 9350
    :cond_2
    iget-object v1, p0, Lan;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lhq;->a(Ljava/util/Collection;)Z

    goto :goto_0

    .line 9297
    :cond_3
    iget-object v1, p3, Lav;->ah:Lem;

    if-eqz v1, :cond_4

    .line 9298
    iget-object v1, p3, Lav;->ah:Lem;

    .line 9301
    :cond_4
    invoke-static {p1, v0, v3}, Lan;->b(Lien;Lhq;Z)V

    goto :goto_1
.end method

.method private a(Lien;Lav;Z)Lhq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lien;",
            "Lav;",
            "Z)",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1090
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    .line 1091
    iget-object v1, p0, Lan;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1092
    invoke-virtual {p2}, Lav;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Laal;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1093
    if-eqz p3, :cond_2

    .line 1094
    iget-object v1, p0, Lan;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lhq;->a(Ljava/util/Collection;)Z

    .line 1101
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 1102
    iget-object v1, p2, Lav;->ah:Lem;

    if-eqz v1, :cond_1

    .line 1103
    iget-object v1, p2, Lav;->ah:Lem;

    .line 1106
    :cond_1
    invoke-direct {p0, p1, v0, v3}, Lan;->a(Lien;Lhq;Z)V

    .line 1115
    :goto_1
    return-object v0

    .line 1096
    :cond_2
    iget-object v1, p0, Lan;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Lan;->v:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Lan;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lhq;)Lhq;

    move-result-object v0

    goto :goto_0

    .line 1108
    :cond_3
    iget-object v1, p2, Lav;->ai:Lem;

    if-eqz v1, :cond_4

    .line 1109
    iget-object v1, p2, Lav;->ai:Lem;

    .line 1112
    :cond_4
    invoke-static {p1, v0, v3}, Lan;->b(Lien;Lhq;Z)V

    goto :goto_1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lhq;)Lhq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1316
    invoke-virtual {p2}, Lhq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    :goto_0
    return-object p2

    .line 1319
    :cond_0
    new-instance v1, Lhq;

    invoke-direct {v1}, Lhq;-><init>()V

    .line 1320
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1321
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1322
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1323
    if-eqz v0, :cond_1

    .line 1324
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object p2, v1

    .line 1327
    goto :goto_0
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lien;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;Z)",
            "Lien;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1019
    new-instance v2, Lien;

    invoke-direct {v2, p0}, Lien;-><init>(Lan;)V

    .line 1024
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lan;->b:Lbh;

    iget-object v1, v1, Lbh;->o:Lbf;

    invoke-virtual {v1}, Lbf;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lien;->f:Landroid/view/View;

    move v6, v7

    move v8, v7

    .line 1028
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1029
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1030
    invoke-direct/range {v0 .. v5}, Lan;->a(ILien;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    .line 1028
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    .line 1037
    :cond_0
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1038
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1039
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lan;->a(ILien;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v9

    .line 1037
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1046
    :cond_2
    if-nez v8, :cond_3

    .line 1047
    const/4 v2, 0x0

    .line 1050
    :cond_3
    return-object v2

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;Lav;Ljava/util/ArrayList;Lhq;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lav;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1081
    if-eqz p0, :cond_1

    .line 1082
    invoke-virtual {p1}, Lav;->getView()Landroid/view/View;

    move-result-object v0

    .line 2045
    if-eqz p0, :cond_1

    .line 2046
    invoke-static {p2, v0}, Laal;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 2047
    if-eqz p3, :cond_0

    .line 2048
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2050
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2051
    const/4 p0, 0x0

    .line 1085
    :cond_1
    :goto_0
    return-object p0

    .line 2053
    :cond_2
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    .line 2054
    check-cast v0, Landroid/transition/Transition;

    invoke-static {v0, p2}, Laal;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private a(ILav;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lan;->b:Lbh;

    iput-object v0, p2, Lav;->C:Lbh;

    .line 416
    if-eqz p3, :cond_1

    .line 417
    iget-object v0, p2, Lav;->I:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lav;->I:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lav;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iput-object p3, p2, Lav;->I:Ljava/lang/String;

    .line 425
    :cond_1
    if-eqz p1, :cond_3

    .line 426
    iget v0, p2, Lav;->G:I

    if-eqz v0, :cond_2

    iget v0, p2, Lav;->G:I

    if-eq v0, p1, :cond_2

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change container ID of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lav;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_2
    iput p1, p2, Lav;->G:I

    iput p1, p2, Lav;->H:I

    .line 434
    :cond_3
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;

    invoke-direct {v0}, Lorg/chromium/net/CronetEngine$Builder$Pkp;-><init>()V

    .line 435
    iput p4, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    .line 436
    iput-object p2, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 437
    invoke-virtual {p0, v0}, Lan;->a(Lorg/chromium/net/CronetEngine$Builder$Pkp;)V

    .line 438
    return-void
.end method

.method static synthetic a(Lan;Lhq;Lien;)V
    .locals 2

    .prologue
    .line 10273
    iget-object v0, p0, Lan;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lhq;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10275
    iget-object v0, p0, Lan;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 10277
    if-eqz v0, :cond_0

    .line 10278
    iget-object v1, p2, Lien;->e:Lce;

    iput-object v0, v1, Lce;->a:Landroid/view/View;

    .line 188
    :cond_0
    return-void
.end method

.method static synthetic a(Lan;Lien;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lan;->a(Lien;ILjava/lang/Object;)V

    return-void
.end method

.method private static a(Landroid/util/SparseArray;Lav;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;",
            "Lav;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    if-eqz p1, :cond_0

    .line 747
    iget v0, p1, Lav;->H:I

    .line 748
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lav;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lav;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lav;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 750
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 753
    :cond_0
    return-void
.end method

.method static synthetic a(Lav;Lav;ZLhq;)V
    .locals 2

    .prologue
    .line 11262
    if-eqz p2, :cond_1

    iget-object v0, p1, Lav;->ah:Lem;

    .line 11265
    :goto_0
    if-eqz v0, :cond_0

    .line 11266
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lhq;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11267
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lhq;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    :cond_0
    return-void

    .line 11262
    :cond_1
    iget-object v0, p0, Lav;->ah:Lem;

    goto :goto_0
.end method

.method private static a(Lhq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1393
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1394
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lhq;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1395
    invoke-virtual {p0, v0}, Lhq;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1396
    invoke-virtual {p0, v0, p2}, Lhq;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1402
    :cond_0
    :goto_1
    return-void

    .line 1394
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1400
    :cond_2
    invoke-virtual {p0, p1, p2}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private a(Lien;ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1370
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v0, v0, Lbh;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    .line 1371
    :goto_0
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v0, v0, Lbh;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1372
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v0, v0, Lbh;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav;

    .line 1373
    iget-object v3, v0, Lav;->S:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lav;->R:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget v3, v0, Lav;->H:I

    if-ne v3, p2, :cond_0

    .line 1375
    iget-boolean v3, v0, Lav;->J:Z

    if-eqz v3, :cond_1

    .line 1376
    iget-object v3, p1, Lien;->d:Ljava/util/ArrayList;

    iget-object v4, v0, Lav;->S:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1377
    iget-object v3, v0, Lav;->S:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Laal;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1379
    iget-object v3, p1, Lien;->d:Ljava/util/ArrayList;

    iget-object v0, v0, Lav;->S:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1382
    :cond_1
    iget-object v3, v0, Lav;->S:Landroid/view/View;

    invoke-static {p3, v3, v2}, Laal;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1384
    iget-object v3, p1, Lien;->d:Ljava/util/ArrayList;

    iget-object v0, v0, Lav;->S:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1389
    :cond_2
    return-void
.end method

.method private a(Lien;Lhq;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lien;",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1417
    iget-object v1, p0, Lan;->v:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v2, v0

    :goto_0
    move v3, v0

    .line 1418
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1419
    iget-object v0, p0, Lan;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1420
    iget-object v1, p0, Lan;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1421
    invoke-virtual {p2, v1}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1422
    if-eqz v1, :cond_0

    .line 8033
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 1424
    if-eqz p3, :cond_2

    .line 1425
    iget-object v4, p1, Lien;->c:Lhq;

    invoke-static {v4, v0, v1}, Lan;->a(Lhq;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1417
    :cond_1
    iget-object v1, p0, Lan;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 1427
    :cond_2
    iget-object v4, p1, Lien;->c:Lhq;

    invoke-static {v4, v1, v0}, Lan;->a(Lhq;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1431
    :cond_3
    return-void
.end method

.method private static a(Lien;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lien;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1406
    if-eqz p1, :cond_0

    .line 1407
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1408
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1409
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1410
    iget-object v3, p0, Lien;->c:Lhq;

    invoke-static {v3, v0, v1}, Lan;->a(Lhq;Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1413
    :cond_0
    return-void
.end method

.method private a(ILien;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lien;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1132
    move-object/from16 v0, p0

    iget-object v3, v0, Lan;->b:Lbh;

    iget-object v3, v3, Lbh;->p:Lbe;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lbe;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1133
    if-nez v5, :cond_0

    .line 1134
    const/4 v3, 0x0

    .line 1226
    :goto_0
    return v3

    .line 1136
    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lav;

    .line 1137
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lav;

    .line 3054
    if-nez v10, :cond_2

    .line 3055
    const/16 v16, 0x0

    .line 3071
    :goto_1
    if-eqz v10, :cond_1

    if-nez v11, :cond_4

    .line 3072
    :cond_1
    const/4 v6, 0x0

    .line 4062
    :goto_2
    if-nez v11, :cond_8

    .line 4063
    const/4 v3, 0x0

    move-object v12, v3

    .line 1143
    :goto_3
    const/4 v3, 0x0

    .line 1144
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    if-eqz v6, :cond_22

    .line 1146
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v11, v2}, Lan;->a(Lien;Lav;Z)Lhq;

    move-result-object v13

    .line 1147
    invoke-virtual {v13}, Lhq;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1148
    const/4 v6, 0x0

    .line 1149
    const/4 v3, 0x0

    move-object/from16 v18, v3

    move-object/from16 v17, v6

    .line 1164
    :goto_4
    if-nez v16, :cond_d

    if-nez v17, :cond_d

    if-nez v12, :cond_d

    .line 1166
    const/4 v3, 0x0

    goto :goto_0

    .line 3057
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v10}, Lav;->getReenterTransition()Ljava/lang/Object;

    move-result-object v3

    :goto_5
    invoke-static {v3}, Laal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Lav;->getEnterTransition()Ljava/lang/Object;

    move-result-object v3

    goto :goto_5

    .line 3074
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v11}, Lav;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v3

    .line 3083
    :goto_6
    if-nez v3, :cond_6

    .line 3084
    const/4 v6, 0x0

    goto :goto_2

    .line 3074
    :cond_5
    invoke-virtual {v10}, Lav;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    .line 3086
    :cond_6
    check-cast v3, Landroid/transition/Transition;

    .line 3087
    if-nez v3, :cond_7

    .line 3088
    const/4 v6, 0x0

    goto :goto_2

    .line 3090
    :cond_7
    new-instance v6, Landroid/transition/TransitionSet;

    invoke-direct {v6}, Landroid/transition/TransitionSet;-><init>()V

    .line 3091
    invoke-virtual {v6, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_2

    .line 4065
    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {v11}, Lav;->getReturnTransition()Ljava/lang/Object;

    move-result-object v3

    :goto_7
    invoke-static {v3}, Laal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    goto :goto_3

    :cond_9
    invoke-virtual {v11}, Lav;->getExitTransition()Ljava/lang/Object;

    move-result-object v3

    goto :goto_7

    .line 1152
    :cond_a
    if-eqz p3, :cond_c

    iget-object v3, v11, Lav;->ah:Lem;

    .line 1155
    :goto_8
    if-eqz v3, :cond_b

    .line 1156
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v13}, Lhq;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1157
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v13}, Lhq;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4233
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v14

    new-instance v3, Lao;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v3 .. v11}, Lao;-><init>(Lan;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Lien;ZLav;Lav;)V

    invoke-virtual {v14, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    move-object/from16 v18, v13

    move-object/from16 v17, v6

    goto :goto_4

    .line 1152
    :cond_c
    iget-object v3, v10, Lav;->ah:Lem;

    goto :goto_8

    .line 1169
    :cond_d
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    move-object/from16 v0, p2

    iget-object v3, v0, Lien;->f:Landroid/view/View;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v12, v11, v0, v1, v3}, Lan;->a(Ljava/lang/Object;Lav;Ljava/util/ArrayList;Lhq;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v6

    .line 1174
    move-object/from16 v0, p0

    iget-object v3, v0, Lan;->v:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    if-eqz v18, :cond_f

    .line 1175
    move-object/from16 v0, p0

    iget-object v3, v0, Lan;->v:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1176
    if-eqz v3, :cond_f

    .line 1177
    if-eqz v6, :cond_e

    .line 1178
    invoke-static {v6, v3}, Laal;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1180
    :cond_e
    if-eqz v17, :cond_f

    .line 1181
    move-object/from16 v0, v17

    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1187
    :cond_f
    new-instance v12, Lcf;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v10}, Lcf;-><init>(Lan;Lav;)V

    .line 1195
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    new-instance v14, Lhq;

    invoke-direct {v14}, Lhq;-><init>()V

    .line 1198
    const/4 v3, 0x1

    .line 1199
    if-eqz v10, :cond_21

    .line 1200
    if-eqz p3, :cond_18

    invoke-virtual {v10}, Lav;->getAllowReturnTransitionOverlap()Z

    move-result v3

    :goto_9
    move v9, v3

    .line 5162
    :goto_a
    const/4 v10, 0x1

    move-object/from16 v3, v16

    .line 5163
    check-cast v3, Landroid/transition/Transition;

    move-object v4, v6

    .line 5164
    check-cast v4, Landroid/transition/Transition;

    move-object/from16 v8, v17

    .line 5165
    check-cast v8, Landroid/transition/Transition;

    .line 5167
    if-eqz v3, :cond_20

    if-eqz v4, :cond_20

    .line 5176
    :goto_b
    if-eqz v9, :cond_19

    .line 5178
    new-instance v9, Landroid/transition/TransitionSet;

    invoke-direct {v9}, Landroid/transition/TransitionSet;-><init>()V

    .line 5179
    if-eqz v3, :cond_10

    .line 5180
    invoke-virtual {v9, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 5182
    :cond_10
    if-eqz v4, :cond_11

    .line 5183
    invoke-virtual {v9, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 5185
    :cond_11
    if-eqz v8, :cond_12

    .line 5186
    invoke-virtual {v9, v8}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_12
    move-object v4, v9

    .line 1206
    :goto_c
    if-eqz v4, :cond_17

    .line 1207
    move-object/from16 v0, p2

    iget-object v11, v0, Lien;->f:Landroid/view/View;

    move-object/from16 v0, p2

    iget-object v3, v0, Lien;->e:Lce;

    move-object/from16 v0, p2

    iget-object v13, v0, Lien;->c:Lhq;

    .line 6112
    if-nez v16, :cond_13

    if-eqz v17, :cond_16

    :cond_13
    move-object/from16 v10, v16

    .line 6113
    check-cast v10, Landroid/transition/Transition;

    .line 6114
    if-eqz v10, :cond_14

    .line 6115
    invoke-virtual {v10, v11}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 6117
    :cond_14
    if-eqz v17, :cond_15

    .line 6118
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v11, v1, v7}, Laal;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 6123
    :cond_15
    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v18

    new-instance v8, Lcb;

    move-object v9, v5

    invoke-direct/range {v8 .. v15}, Lcb;-><init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Lcf;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 6281
    if-eqz v10, :cond_16

    .line 6282
    new-instance v8, Lcc;

    invoke-direct {v8, v3}, Lcc;-><init>(Lce;)V

    invoke-virtual {v10, v8}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 6359
    :cond_16
    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v8, Lap;

    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, p2

    move/from16 v12, p1

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Lap;-><init>(Lan;Landroid/view/View;Lien;ILjava/lang/Object;)V

    invoke-virtual {v3, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1215
    move-object/from16 v0, p2

    iget-object v3, v0, Lien;->f:Landroid/view/View;

    const/4 v8, 0x1

    invoke-static {v4, v3, v8}, Laal;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1217
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lan;->a(Lien;ILjava/lang/Object;)V

    move-object v3, v4

    .line 7066
    check-cast v3, Landroid/transition/Transition;

    .line 7067
    invoke-static {v5, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1221
    move-object/from16 v0, p2

    iget-object v0, v0, Lien;->f:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lien;->d:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v18, v16

    .line 7347
    check-cast v18, Landroid/transition/Transition;

    move-object/from16 v20, v6

    .line 7348
    check-cast v20, Landroid/transition/Transition;

    move-object/from16 v22, v17

    .line 7349
    check-cast v22, Landroid/transition/Transition;

    move-object/from16 v26, v4

    .line 7350
    check-cast v26, Landroid/transition/Transition;

    .line 7351
    if-eqz v26, :cond_17

    .line 7352
    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v16, Lcd;

    move-object/from16 v17, v5

    move-object/from16 v19, v15

    move-object/from16 v23, v7

    move-object/from16 v24, v14

    invoke-direct/range {v16 .. v27}, Lcd;-><init>(Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1226
    :cond_17
    if-eqz v4, :cond_1f

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1200
    :cond_18
    invoke-virtual {v10}, Lav;->getAllowEnterTransitionOverlap()Z

    move-result v3

    goto/16 :goto_9

    .line 5192
    :cond_19
    const/4 v9, 0x0

    .line 5193
    if-eqz v4, :cond_1c

    if-eqz v3, :cond_1c

    .line 5194
    new-instance v9, Landroid/transition/TransitionSet;

    invoke-direct {v9}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v9, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v3

    .line 5203
    :cond_1a
    :goto_d
    if-eqz v8, :cond_1e

    .line 5204
    new-instance v4, Landroid/transition/TransitionSet;

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    .line 5205
    if-eqz v3, :cond_1b

    .line 5206
    invoke-virtual {v4, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 5208
    :cond_1b
    invoke-virtual {v4, v8}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto/16 :goto_c

    .line 5198
    :cond_1c
    if-eqz v4, :cond_1d

    move-object v3, v4

    .line 5199
    goto :goto_d

    .line 5200
    :cond_1d
    if-nez v3, :cond_1a

    move-object v3, v9

    goto :goto_d

    :cond_1e
    move-object v4, v3

    .line 5211
    goto/16 :goto_c

    .line 1226
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_20
    move v9, v10

    goto/16 :goto_b

    :cond_21
    move v9, v3

    goto/16 :goto_a

    :cond_22
    move-object/from16 v18, v3

    move-object/from16 v17, v6

    goto/16 :goto_4
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v0, v0, Lbh;->p:Lbe;

    invoke-virtual {v0}, Lbe;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 820
    :cond_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Lan;->c:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v3, v0

    .line 779
    :goto_0
    if-eqz v3, :cond_0

    .line 780
    iget v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    packed-switch v0, :pswitch_data_0

    .line 818
    :goto_1
    iget-object v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->e:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v3, v0

    goto :goto_0

    .line 782
    :pswitch_0
    iget-object v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p2, v0}, Lan;->b(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 785
    :pswitch_1
    iget-object v1, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 786
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v0, v0, Lbh;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 787
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_2
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v0, v0, Lbh;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 788
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v0, v0, Lbh;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav;

    .line 789
    if-eqz v2, :cond_2

    iget v4, v0, Lav;->H:I

    iget v5, v2, Lav;->H:I

    if-ne v4, v5, :cond_3

    .line 790
    :cond_2
    if-ne v0, v2, :cond_4

    .line 791
    const/4 v2, 0x0

    .line 787
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 793
    :cond_4
    invoke-static {p1, v0}, Lan;->a(Landroid/util/SparseArray;Lav;)V

    goto :goto_3

    :cond_5
    move-object v2, v1

    .line 798
    :cond_6
    invoke-static {p2, v2}, Lan;->b(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 802
    :pswitch_2
    iget-object v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p1, v0}, Lan;->a(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 805
    :pswitch_3
    iget-object v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p1, v0}, Lan;->a(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 808
    :pswitch_4
    iget-object v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p2, v0}, Lan;->b(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 811
    :pswitch_5
    iget-object v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p1, v0}, Lan;->a(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 814
    :pswitch_6
    iget-object v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p2, v0}, Lan;->b(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static b(Landroid/util/SparseArray;Lav;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;",
            "Lav;",
            ")V"
        }
    .end annotation

    .prologue
    .line 756
    if-eqz p1, :cond_0

    .line 757
    iget v0, p1, Lav;->H:I

    .line 758
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 762
    :cond_0
    return-void
.end method

.method private static b(Lien;Lhq;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lien;",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1435
    invoke-virtual {p1}, Lhq;->size()I

    move-result v3

    .line 1436
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1437
    invoke-virtual {p1, v2}, Lhq;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1438
    invoke-virtual {p1, v2}, Lhq;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 9033
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 1439
    if-eqz p2, :cond_0

    .line 1440
    iget-object v4, p0, Lien;->c:Lhq;

    invoke-static {v4, v0, v1}, Lan;->a(Lhq;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1442
    :cond_0
    iget-object v4, p0, Lien;->c:Lhq;

    invoke-static {v4, v1, v0}, Lan;->a(Lhq;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1445
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lbz;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    iput v0, p0, Lan;->j:I

    .line 513
    return-object p0
.end method

.method public a(II)Lbz;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1504
    iput p1, p0, Lan;->f:I

    .line 1505
    iput p2, p0, Lan;->g:I

    .line 1506
    iput v0, p0, Lan;->h:I

    .line 1507
    iput v0, p0, Lan;->i:I

    .line 499
    return-object p0
.end method

.method public a(ILav;)Lbz;
    .locals 2

    .prologue
    .line 404
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lan;->a(ILav;Ljava/lang/String;I)V

    .line 405
    return-object p0
.end method

.method public a(ILav;Ljava/lang/String;)Lbz;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lan;->a(ILav;Ljava/lang/String;I)V

    .line 410
    return-object p0
.end method

.method public a(Lav;)Lbz;
    .locals 2

    .prologue
    .line 454
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;

    invoke-direct {v0}, Lorg/chromium/net/CronetEngine$Builder$Pkp;-><init>()V

    .line 455
    const/4 v1, 0x3

    iput v1, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    .line 456
    iput-object p1, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 457
    invoke-virtual {p0, v0}, Lan;->a(Lorg/chromium/net/CronetEngine$Builder$Pkp;)V

    .line 459
    return-object p0
.end method

.method public a(Lav;Ljava/lang/String;)Lbz;
    .locals 2

    .prologue
    .line 399
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lan;->a(ILav;Ljava/lang/String;I)V

    .line 400
    return-object p0
.end method

.method public a(ZLien;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lien;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lien;",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;)",
            "Lien;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 873
    sget-boolean v0, Lbh;->a:Z

    if-eqz v0, :cond_0

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "popFromBackStack: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 875
    new-instance v0, Lht;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Lht;-><init>(Ljava/lang/String;)V

    .line 876
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 877
    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Lan;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 880
    :cond_0
    sget-boolean v0, Lan;->a:Z

    if-eqz v0, :cond_2

    .line 881
    if-nez p2, :cond_3

    .line 882
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    :cond_1
    invoke-direct {p0, p3, p4, v9}, Lan;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lien;

    move-result-object p2

    .line 890
    :cond_2
    :goto_0
    invoke-virtual {p0, v8}, Lan;->a(I)V

    .line 892
    if-eqz p2, :cond_4

    move v6, v2

    .line 893
    :goto_1
    if-eqz p2, :cond_5

    move v1, v2

    .line 894
    :goto_2
    iget-object v0, p0, Lan;->d:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v5, v0

    .line 895
    :goto_3
    if-eqz v5, :cond_a

    .line 896
    if-eqz p2, :cond_6

    move v4, v2

    .line 897
    :goto_4
    if-eqz p2, :cond_7

    move v0, v2

    .line 898
    :goto_5
    iget v3, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    packed-switch v3, :pswitch_data_0

    .line 950
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_3
    if-nez p1, :cond_2

    .line 886
    iget-object v0, p0, Lan;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lan;->u:Ljava/util/ArrayList;

    invoke-static {p2, v0, v1}, Lan;->a(Lien;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 892
    :cond_4
    iget v0, p0, Lan;->k:I

    move v6, v0

    goto :goto_1

    .line 893
    :cond_5
    iget v0, p0, Lan;->j:I

    move v1, v0

    goto :goto_2

    .line 896
    :cond_6
    iget v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->k:I

    move v4, v0

    goto :goto_4

    .line 897
    :cond_7
    iget v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->l:I

    goto :goto_5

    .line 900
    :pswitch_0
    iget-object v3, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 901
    iput v0, v3, Lav;->Q:I

    .line 902
    iget-object v0, p0, Lan;->b:Lbh;

    invoke-static {v1}, Lbh;->d(I)I

    move-result v4

    invoke-virtual {v0, v3, v4, v6}, Lbh;->a(Lav;II)V

    .line 954
    :cond_8
    :goto_6
    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->f:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v5, v0

    .line 955
    goto :goto_3

    .line 906
    :pswitch_1
    iget-object v3, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 907
    if-eqz v3, :cond_9

    .line 908
    iput v0, v3, Lav;->Q:I

    .line 909
    iget-object v0, p0, Lan;->b:Lbh;

    invoke-static {v1}, Lbh;->d(I)I

    move-result v7

    invoke-virtual {v0, v3, v7, v6}, Lbh;->a(Lav;II)V

    .line 912
    :cond_9
    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    move v3, v2

    .line 913
    :goto_7
    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 914
    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav;

    .line 915
    iput v4, v0, Lav;->Q:I

    .line 916
    iget-object v7, p0, Lan;->b:Lbh;

    invoke-virtual {v7, v0, v2}, Lbh;->a(Lav;Z)V

    .line 913
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 921
    :pswitch_2
    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 922
    iput v4, v0, Lav;->Q:I

    .line 923
    iget-object v3, p0, Lan;->b:Lbh;

    invoke-virtual {v3, v0, v2}, Lbh;->a(Lav;Z)V

    goto :goto_6

    .line 926
    :pswitch_3
    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 927
    iput v4, v0, Lav;->Q:I

    .line 928
    iget-object v3, p0, Lan;->b:Lbh;

    invoke-static {v1}, Lbh;->d(I)I

    move-result v4

    invoke-virtual {v3, v0, v4, v6}, Lbh;->c(Lav;II)V

    goto :goto_6

    .line 932
    :pswitch_4
    iget-object v3, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 933
    iput v0, v3, Lav;->Q:I

    .line 934
    iget-object v0, p0, Lan;->b:Lbh;

    invoke-static {v1}, Lbh;->d(I)I

    move-result v4

    invoke-virtual {v0, v3, v4, v6}, Lbh;->b(Lav;II)V

    goto :goto_6

    .line 938
    :pswitch_5
    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 939
    iput v4, v0, Lav;->Q:I

    .line 940
    iget-object v3, p0, Lan;->b:Lbh;

    invoke-static {v1}, Lbh;->d(I)I

    move-result v4

    invoke-virtual {v3, v0, v4, v6}, Lbh;->e(Lav;II)V

    goto :goto_6

    .line 944
    :pswitch_6
    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 945
    iput v4, v0, Lav;->Q:I

    .line 946
    iget-object v3, p0, Lan;->b:Lbh;

    invoke-static {v1}, Lbh;->d(I)I

    move-result v4

    invoke-virtual {v3, v0, v4, v6}, Lbh;->d(Lav;II)V

    goto :goto_6

    .line 957
    :cond_a
    if-eqz p1, :cond_b

    .line 958
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v2, p0, Lan;->b:Lbh;

    iget v2, v2, Lbh;->n:I

    invoke-static {v1}, Lbh;->d(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v6, v9}, Lbh;->a(IIIZ)V

    .line 960
    const/4 p2, 0x0

    .line 963
    :cond_b
    iget v0, p0, Lan;->p:I

    if-ltz v0, :cond_c

    .line 964
    iget-object v0, p0, Lan;->b:Lbh;

    iget v1, p0, Lan;->p:I

    invoke-virtual {v0, v1}, Lbh;->c(I)V

    .line 965
    iput v8, p0, Lan;->p:I

    .line 967
    :cond_c
    return-object p2

    .line 898
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method a(I)V
    .locals 5

    .prologue
    .line 588
    iget-boolean v0, p0, Lan;->l:Z

    if-nez v0, :cond_1

    .line 610
    :cond_0
    return-void

    .line 591
    :cond_1
    sget-boolean v0, Lbh;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bump nesting in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    :cond_2
    iget-object v0, p0, Lan;->c:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v2, v0

    .line 594
    :goto_0
    if-eqz v2, :cond_0

    .line 595
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    iget v1, v0, Lav;->B:I

    add-int/2addr v1, p1

    iput v1, v0, Lav;->B:I

    .line 597
    sget-boolean v0, Lbh;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bump nesting of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    iget v1, v1, Lav;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    :cond_3
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 601
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 602
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav;

    .line 603
    iget v3, v0, Lav;->B:I

    add-int/2addr v3, p1

    iput v3, v0, Lav;->B:I

    .line 604
    sget-boolean v3, Lbh;->a:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bump nesting of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lav;->B:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 601
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 608
    :cond_5
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->e:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v2, v0

    goto :goto_0
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lav;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v0, v0, Lbh;->p:Lbe;

    invoke-virtual {v0}, Lbe;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    :cond_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lan;->c:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v2, v0

    .line 837
    :goto_0
    if-eqz v2, :cond_0

    .line 838
    iget v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    packed-switch v0, :pswitch_data_0

    .line 867
    :goto_1
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->e:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v2, v0

    goto :goto_0

    .line 840
    :pswitch_0
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p1, v0}, Lan;->a(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 843
    :pswitch_1
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 844
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 845
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav;

    invoke-static {p2, v0}, Lan;->b(Landroid/util/SparseArray;Lav;)V

    .line 844
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 848
    :cond_2
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p1, v0}, Lan;->a(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 851
    :pswitch_2
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p2, v0}, Lan;->b(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 854
    :pswitch_3
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p2, v0}, Lan;->b(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 857
    :pswitch_4
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p1, v0}, Lan;->a(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 860
    :pswitch_5
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p2, v0}, Lan;->b(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 863
    :pswitch_6
    iget-object v0, v2, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-static {p1, v0}, Lan;->a(Landroid/util/SparseArray;Lav;)V

    goto :goto_1

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lan;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 258
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 261
    if-eqz p3, :cond_8

    .line 262
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lan;->n:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lan;->p:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 264
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lan;->o:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 265
    iget v0, p0, Lan;->j:I

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Lan;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lan;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget v0, p0, Lan;->f:I

    if-nez v0, :cond_1

    iget v0, p0, Lan;->g:I

    if-eqz v0, :cond_2

    .line 272
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Lan;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget v0, p0, Lan;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :cond_2
    iget v0, p0, Lan;->h:I

    if-nez v0, :cond_3

    iget v0, p0, Lan;->i:I

    if-eqz v0, :cond_4

    .line 278
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget v0, p0, Lan;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget v0, p0, Lan;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    :cond_4
    iget v0, p0, Lan;->q:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lan;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 284
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v0, p0, Lan;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lan;->r:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 289
    :cond_6
    iget v0, p0, Lan;->s:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lan;->t:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 290
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget v0, p0, Lan;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lan;->t:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 297
    :cond_8
    iget-object v0, p0, Lan;->c:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    if-eqz v0, :cond_10

    .line 298
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    iget-object v0, p0, Lan;->c:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move v2, v1

    move-object v3, v0

    .line 302
    :goto_0
    if-eqz v3, :cond_10

    .line 304
    iget v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    packed-switch v0, :pswitch_data_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "cmd="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 316
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 318
    if-eqz p3, :cond_c

    .line 319
    iget v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->i:I

    if-nez v0, :cond_9

    iget v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->j:I

    if-eqz v0, :cond_a

    .line 320
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    :cond_a
    iget v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->k:I

    if-nez v0, :cond_b

    iget v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->l:I

    if-eqz v0, :cond_c

    .line 326
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    iget v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    iget v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_c
    iget-object v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    .line 333
    :goto_2
    iget-object v5, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 334
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-object v5, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 336
    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    :goto_3
    iget-object v5, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    .line 306
    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    .line 307
    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    .line 308
    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    .line 309
    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    .line 310
    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    .line 311
    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    .line 312
    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    .line 338
    :cond_d
    if-nez v0, :cond_e

    .line 339
    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    :cond_e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 342
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 347
    :cond_f
    iget-object v3, v3, Lorg/chromium/net/CronetEngine$Builder$Pkp;->e:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    .line 348
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 349
    goto/16 :goto_0

    .line 351
    :cond_10
    return-void

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method a(Lorg/chromium/net/CronetEngine$Builder$Pkp;)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lan;->c:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    if-nez v0, :cond_0

    .line 385
    iput-object p1, p0, Lan;->d:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    iput-object p1, p0, Lan;->c:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    .line 391
    :goto_0
    iget v0, p0, Lan;->f:I

    iput v0, p1, Lorg/chromium/net/CronetEngine$Builder$Pkp;->i:I

    .line 392
    iget v0, p0, Lan;->g:I

    iput v0, p1, Lorg/chromium/net/CronetEngine$Builder$Pkp;->j:I

    .line 393
    iget v0, p0, Lan;->h:I

    iput v0, p1, Lorg/chromium/net/CronetEngine$Builder$Pkp;->k:I

    .line 394
    iget v0, p0, Lan;->i:I

    iput v0, p1, Lorg/chromium/net/CronetEngine$Builder$Pkp;->l:I

    .line 395
    iget v0, p0, Lan;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lan;->e:I

    .line 396
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lan;->d:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    iput-object v0, p1, Lorg/chromium/net/CronetEngine$Builder$Pkp;->f:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    .line 388
    iget-object v0, p0, Lan;->d:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    iput-object p1, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->e:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    .line 389
    iput-object p1, p0, Lan;->d:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lan;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(ILav;)Lbz;
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lan;->b(ILav;Ljava/lang/String;)Lbz;

    move-result-object v0

    return-object v0
.end method

.method public b(ILav;Ljava/lang/String;)Lbz;
    .locals 2

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lan;->a(ILav;Ljava/lang/String;I)V

    .line 450
    return-object p0
.end method

.method public b(Lav;)Lbz;
    .locals 2

    .prologue
    .line 463
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;

    invoke-direct {v0}, Lorg/chromium/net/CronetEngine$Builder$Pkp;-><init>()V

    .line 464
    const/4 v1, 0x4

    iput v1, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    .line 465
    iput-object p1, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 466
    invoke-virtual {p0, v0}, Lan;->a(Lorg/chromium/net/CronetEngine$Builder$Pkp;)V

    .line 468
    return-object p0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lan;->a(Z)I

    move-result v0

    return v0
.end method

.method public c(Lav;)Lbz;
    .locals 2

    .prologue
    .line 472
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;

    invoke-direct {v0}, Lorg/chromium/net/CronetEngine$Builder$Pkp;-><init>()V

    .line 473
    const/4 v1, 0x5

    iput v1, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    .line 474
    iput-object p1, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 475
    invoke-virtual {p0, v0}, Lan;->a(Lorg/chromium/net/CronetEngine$Builder$Pkp;)V

    .line 477
    return-object p0
.end method

.method public d(Lav;)Lbz;
    .locals 2

    .prologue
    .line 481
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;

    invoke-direct {v0}, Lorg/chromium/net/CronetEngine$Builder$Pkp;-><init>()V

    .line 482
    const/4 v1, 0x6

    iput v1, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    .line 483
    iput-object p1, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 484
    invoke-virtual {p0, v0}, Lan;->a(Lorg/chromium/net/CronetEngine$Builder$Pkp;)V

    .line 486
    return-object p0
.end method

.method public e(Lav;)Lbz;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;

    invoke-direct {v0}, Lorg/chromium/net/CronetEngine$Builder$Pkp;-><init>()V

    .line 491
    const/4 v1, 0x7

    iput v1, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    .line 492
    iput-object p1, v0, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 493
    invoke-virtual {p0, v0}, Lan;->a(Lorg/chromium/net/CronetEngine$Builder$Pkp;)V

    .line 495
    return-object p0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 639
    sget-boolean v0, Lbh;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Run: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 641
    :cond_0
    iget-boolean v0, p0, Lan;->l:Z

    if-eqz v0, :cond_1

    .line 642
    iget v0, p0, Lan;->p:I

    if-gez v0, :cond_1

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_1
    invoke-virtual {p0, v14}, Lan;->a(I)V

    .line 652
    sget-boolean v0, Lan;->a:Z

    if-eqz v0, :cond_10

    .line 653
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 654
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 656
    invoke-direct {p0, v0, v1}, Lan;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 658
    invoke-direct {p0, v0, v1, v2}, Lan;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lien;

    move-result-object v0

    move-object v10, v0

    .line 661
    :goto_0
    if-eqz v10, :cond_2

    move v9, v2

    .line 662
    :goto_1
    if-eqz v10, :cond_3

    move v1, v2

    .line 663
    :goto_2
    iget-object v0, p0, Lan;->c:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v8, v0

    .line 664
    :goto_3
    if-eqz v8, :cond_e

    .line 665
    if-eqz v10, :cond_4

    move v7, v2

    .line 666
    :goto_4
    if-eqz v10, :cond_5

    move v3, v2

    .line 667
    :goto_5
    iget v0, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    packed-switch v0, :pswitch_data_0

    .line 731
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_2
    iget v0, p0, Lan;->k:I

    move v9, v0

    goto :goto_1

    .line 662
    :cond_3
    iget v0, p0, Lan;->j:I

    move v1, v0

    goto :goto_2

    .line 665
    :cond_4
    iget v0, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->i:I

    move v7, v0

    goto :goto_4

    .line 666
    :cond_5
    iget v0, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->j:I

    move v3, v0

    goto :goto_5

    .line 669
    :pswitch_0
    iget-object v0, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 670
    iput v7, v0, Lav;->Q:I

    .line 671
    iget-object v3, p0, Lan;->b:Lbh;

    invoke-virtual {v3, v0, v2}, Lbh;->a(Lav;Z)V

    .line 735
    :cond_6
    :goto_6
    iget-object v0, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->e:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v8, v0

    .line 736
    goto :goto_3

    .line 674
    :pswitch_1
    iget-object v0, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 675
    iget v11, v0, Lav;->H:I

    .line 676
    iget-object v4, p0, Lan;->b:Lbh;

    iget-object v4, v4, Lbh;->g:Ljava/util/ArrayList;

    if-eqz v4, :cond_c

    move v4, v2

    move-object v5, v0

    .line 677
    :goto_7
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v0, v0, Lbh;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_d

    .line 678
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v0, v0, Lbh;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav;

    .line 679
    sget-boolean v12, Lbh;->a:Z

    if-eqz v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "OP_REPLACE: adding="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " old="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 681
    :cond_7
    iget v12, v0, Lav;->H:I

    if-ne v12, v11, :cond_8

    .line 682
    if-ne v0, v5, :cond_9

    .line 683
    iput-object v6, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    move-object v5, v6

    .line 677
    :cond_8
    :goto_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    .line 685
    :cond_9
    iget-object v12, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    if-nez v12, :cond_a

    .line 686
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    .line 688
    :cond_a
    iget-object v12, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iput v3, v0, Lav;->Q:I

    .line 690
    iget-boolean v12, p0, Lan;->l:Z

    if-eqz v12, :cond_b

    .line 691
    iget v12, v0, Lav;->B:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Lav;->B:I

    .line 692
    sget-boolean v12, Lbh;->a:Z

    if-eqz v12, :cond_b

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Bump nesting of "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Lav;->B:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 695
    :cond_b
    iget-object v12, p0, Lan;->b:Lbh;

    invoke-virtual {v12, v0, v1, v9}, Lbh;->a(Lav;II)V

    goto :goto_8

    :cond_c
    move-object v5, v0

    .line 700
    :cond_d
    if-eqz v5, :cond_6

    .line 701
    iput v7, v5, Lav;->Q:I

    .line 702
    iget-object v0, p0, Lan;->b:Lbh;

    invoke-virtual {v0, v5, v2}, Lbh;->a(Lav;Z)V

    goto/16 :goto_6

    .line 706
    :pswitch_2
    iget-object v0, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 707
    iput v3, v0, Lav;->Q:I

    .line 708
    iget-object v3, p0, Lan;->b:Lbh;

    invoke-virtual {v3, v0, v1, v9}, Lbh;->a(Lav;II)V

    goto/16 :goto_6

    .line 711
    :pswitch_3
    iget-object v0, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 712
    iput v3, v0, Lav;->Q:I

    .line 713
    iget-object v3, p0, Lan;->b:Lbh;

    invoke-virtual {v3, v0, v1, v9}, Lbh;->b(Lav;II)V

    goto/16 :goto_6

    .line 716
    :pswitch_4
    iget-object v0, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 717
    iput v7, v0, Lav;->Q:I

    .line 718
    iget-object v3, p0, Lan;->b:Lbh;

    invoke-virtual {v3, v0, v1, v9}, Lbh;->c(Lav;II)V

    goto/16 :goto_6

    .line 721
    :pswitch_5
    iget-object v0, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 722
    iput v3, v0, Lav;->Q:I

    .line 723
    iget-object v3, p0, Lan;->b:Lbh;

    invoke-virtual {v3, v0, v1, v9}, Lbh;->d(Lav;II)V

    goto/16 :goto_6

    .line 726
    :pswitch_6
    iget-object v0, v8, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 727
    iput v7, v0, Lav;->Q:I

    .line 728
    iget-object v3, p0, Lan;->b:Lbh;

    invoke-virtual {v3, v0, v1, v9}, Lbh;->e(Lav;II)V

    goto/16 :goto_6

    .line 738
    :cond_e
    iget-object v0, p0, Lan;->b:Lbh;

    iget-object v2, p0, Lan;->b:Lbh;

    iget v2, v2, Lbh;->n:I

    invoke-virtual {v0, v2, v1, v9, v14}, Lbh;->a(IIIZ)V

    .line 740
    iget-boolean v0, p0, Lan;->l:Z

    if-eqz v0, :cond_f

    .line 741
    iget-object v0, p0, Lan;->b:Lbh;

    invoke-virtual {v0, p0}, Lbh;->b(Lan;)V

    .line 743
    :cond_f
    return-void

    :cond_10
    move-object v10, v6

    goto/16 :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v1, p0, Lan;->p:I

    if-ltz v1, :cond_0

    .line 245
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget v1, p0, Lan;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    iget-object v1, p0, Lan;->n:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 249
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Lan;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
