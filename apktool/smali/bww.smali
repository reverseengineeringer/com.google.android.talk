.class public final Lbww;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbwy;


# direct methods
.method constructor <init>(Lbwy;)V
    .locals 0

    .prologue
    .line 29265
    iput-object p1, p0, Lbww;->a:Lbwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2077
    sget v0, Lbwy;->a:I

    .line 1268
    if-ne p1, v0, :cond_3

    .line 1269
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 3077
    invoke-virtual {v0}, Lbwy;->l()Lbfd;

    move-result-object v0

    .line 1269
    const/16 v1, 0x9c1

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 1271
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 4077
    iget-object v0, v0, Lbwy;->i:Landroid/widget/FrameLayout;

    .line 1271
    sget v1, Laen;->hZ:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1274
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 5077
    iget-object v0, v0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    .line 1274
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->setVisibility(I)V

    .line 1276
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 6077
    iget-object v0, v0, Lbwy;->n:Lbwo;

    .line 1276
    instance-of v0, v0, Lczm;

    if-eqz v0, :cond_1

    .line 7077
    sget v0, Lbwy;->b:I

    .line 1284
    :goto_0
    iget-object v1, p0, Lbww;->a:Lbwy;

    .line 11077
    iget-object v1, v1, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    .line 1284
    invoke-virtual {v1, v4}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->setVisibility(I)V

    .line 1285
    iget-object v1, p0, Lbww;->a:Lbwy;

    .line 12077
    iget-object v1, v1, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    .line 13077
    invoke-static {v0}, Lbwy;->b(I)I

    move-result v2

    .line 1286
    sget v3, Lbwx;->a:I

    .line 1285
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(III)Landroid/animation/Animator;

    .line 1287
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 14077
    iget-object v0, v0, Lbwy;->l:Landroid/app/Dialog;

    .line 1287
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1289
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 15708
    invoke-static {}, Lbwy;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15710
    const/16 v1, 0xff

    invoke-virtual {v0, v4, v1}, Lbwy;->a(II)V

    .line 15713
    new-instance v1, Lbxo;

    invoke-direct {v1}, Lbxo;-><init>()V

    invoke-virtual {v0, v1}, Lbwy;->a(Lbws;)V

    .line 1305
    :cond_0
    :goto_1
    return-void

    .line 1278
    :cond_1
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 8077
    iget-object v0, v0, Lbwy;->n:Lbwo;

    .line 1278
    instance-of v0, v0, Lczo;

    if-eqz v0, :cond_2

    .line 9077
    sget v0, Lbwy;->c:I

    goto :goto_0

    .line 1281
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lbww;->a:Lbwy;

    .line 10077
    iget-object v1, v1, Lbwy;->n:Lbwo;

    .line 1281
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected primary action type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 16077
    :cond_3
    sget v0, Lbwy;->b:I

    .line 1290
    if-eq p1, v0, :cond_4

    .line 17077
    sget v0, Lbwy;->c:I

    .line 1290
    if-ne p1, v0, :cond_5

    .line 1293
    :cond_4
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 18077
    iget-object v0, v0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    .line 1293
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbww;->a:Lbwy;

    .line 19077
    iget-object v1, v1, Lbwy;->n:Lbwo;

    .line 20513
    invoke-interface {v1, v0}, Lbwo;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 21077
    :cond_5
    sget v0, Lbwy;->d:I

    .line 1294
    if-ne p1, v0, :cond_6

    .line 1295
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 22077
    invoke-virtual {v0}, Lbwy;->l()Lbfd;

    move-result-object v0

    .line 1295
    const/16 v1, 0x9c2

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 1297
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 23077
    iget-object v0, v0, Lbwy;->y:Ljava/util/List;

    .line 1297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 1298
    iget-object v2, p0, Lbww;->a:Lbwy;

    .line 24077
    iget-object v2, v2, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    .line 1298
    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_2

    .line 25077
    :cond_6
    sget v0, Lbwy;->e:I

    .line 1300
    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 26077
    iget-object v0, v0, Lbwy;->z:Landroid/view/View$OnClickListener;

    .line 1300
    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 27077
    invoke-virtual {v0}, Lbwy;->l()Lbfd;

    move-result-object v0

    .line 1301
    const/16 v1, 0x9c3

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 1303
    iget-object v0, p0, Lbww;->a:Lbwy;

    .line 28077
    iget-object v0, v0, Lbwy;->z:Landroid/view/View$OnClickListener;

    .line 1303
    iget-object v1, p0, Lbww;->a:Lbwy;

    .line 29077
    iget-object v1, v1, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    .line 1303
    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_1
.end method
