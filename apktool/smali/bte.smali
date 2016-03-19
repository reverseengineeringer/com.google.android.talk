.class final Lbte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbtb;


# direct methods
.method constructor <init>(Lbtb;I)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lbte;->b:Lbtb;

    iput p2, p0, Lbte;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 171
    iget-object v6, p0, Lbte;->b:Lbtb;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v7, p0, Lbte;->a:I

    .line 1219
    sget v1, Laal;->kG:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;

    .line 1221
    iget-object v2, v6, Lbtb;->e:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbso;

    .line 1222
    iget-boolean v3, v2, Lbso;->g:Z

    if-nez v3, :cond_0

    .line 1276
    invoke-virtual {v6}, Lbtb;->d()I

    move-result v3

    if-lt v3, v13, :cond_1

    .line 1277
    iget-object v3, v6, Lbtb;->c:Landroid/content/Context;

    const-class v8, Lepc;

    invoke-static {v3, v8}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lepc;

    .line 1278
    new-instance v8, Lepb;

    iget-object v9, v6, Lbtb;->c:Landroid/content/Context;

    invoke-direct {v8, v9}, Lepb;-><init>(Landroid/content/Context;)V

    iget-object v9, v6, Lbtb;->c:Landroid/content/Context;

    .line 1282
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Laal;->kL:I

    new-array v11, v4, [Ljava/lang/Object;

    .line 1286
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    .line 1283
    invoke-virtual {v9, v10, v13, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1280
    invoke-virtual {v8, v9}, Lepb;->a(Ljava/lang/String;)Lepb;

    move-result-object v8

    .line 1287
    invoke-virtual {v8}, Lepb;->b()Lepa;

    move-result-object v8

    .line 1288
    invoke-virtual {v3, v8}, Lepc;->a(Lepa;)V

    move v3, v4

    .line 1224
    :goto_0
    if-nez v3, :cond_7

    .line 1228
    iget-object v3, v2, Lbso;->b:Lbsq;

    sget-object v8, Lbsq;->b:Lbsq;

    if-ne v3, v8, :cond_2

    move v3, v4

    :goto_1
    iget-object v8, v2, Lbso;->a:Ljava/lang/String;

    .line 1326
    if-eqz v3, :cond_3

    .line 1327
    iget-object v3, v6, Lbtb;->c:Landroid/content/Context;

    const-class v8, Lbvc;

    invoke-static {v3, v8}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbvc;

    invoke-virtual {v3, v7}, Lbvc;->b(I)V

    .line 1230
    :cond_0
    :goto_2
    iget-boolean v3, v2, Lbso;->g:Z

    if-nez v3, :cond_4

    move v3, v4

    :goto_3
    iput-boolean v3, v2, Lbso;->g:Z

    .line 1231
    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->a(Landroid/view/View;Lbso;Z)V

    .line 1233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    invoke-virtual {v6}, Lbtb;->c()Lksf;

    move-result-object v3

    .line 1235
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 1236
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbso;

    .line 1237
    new-instance v4, Lblb;

    invoke-direct {v4}, Lblb;-><init>()V

    .line 1238
    iget-object v1, v0, Lbso;->b:Lbsq;

    sget-object v7, Lbsq;->b:Lbsq;

    if-ne v1, v7, :cond_5

    .line 1240
    sget-object v1, Lbkr;->b:Lbkr;

    .line 1241
    :goto_5
    iput-object v1, v4, Lblb;->c:Lbkr;

    .line 1242
    iget-object v0, v0, Lbso;->a:Ljava/lang/String;

    iput-object v0, v4, Lblb;->b:Ljava/lang/String;

    .line 1243
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_1
    move v3, v5

    .line 1291
    goto :goto_0

    :cond_2
    move v3, v5

    .line 1228
    goto :goto_1

    .line 1330
    :cond_3
    new-instance v3, Lbtf;

    invoke-direct {v3, v6, v8, v7}, Lbtf;-><init>(Lbtb;Ljava/lang/String;I)V

    invoke-static {v3}, Lhbw;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    move v3, v5

    .line 1230
    goto :goto_3

    .line 1241
    :cond_5
    sget-object v1, Lbkr;->c:Lbkr;

    goto :goto_5

    .line 1246
    :cond_6
    invoke-virtual {v6, v3}, Lbtb;->a(Ljava/util/List;)V

    .line 1247
    iget-object v0, v6, Lbtb;->d:Lbpq;

    iget-object v1, v6, Lbtb;->c:Landroid/content/Context;

    new-instance v4, Lbps;

    invoke-direct {v4, v3}, Lbps;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2, v4}, Lbpq;->a(Landroid/content/Context;Ljava/util/List;Lbps;)V

    .line 172
    :cond_7
    return-void
.end method
