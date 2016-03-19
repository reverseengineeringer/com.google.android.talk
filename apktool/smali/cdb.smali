.class public Lcdb;
.super Lbxv;
.source "SourceFile"

# interfaces
.implements Lbyv;
.implements Lck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbxv;",
        "Lbyv;",
        "Lck",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private aj:Lbyu;

.field private ak:Lbyu;

.field private al:Landroid/view/ViewGroup;

.field private am:Z

.field private an:Landroid/database/Cursor;

.field private final ao:Lcdd;

.field private i:Lhpu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lbxv;-><init>()V

    .line 114
    new-instance v0, Lcdd;

    .line 1084
    invoke-direct {v0, p0}, Lcdd;-><init>(Lcdb;)V

    .line 114
    iput-object v0, p0, Lcdb;->ao:Lcdd;

    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 236
    iget-boolean v0, p0, Lcdb;->am:Z

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcdb;->ak:Lbyu;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcdb;->ak:Lbyu;

    invoke-virtual {v0, v1}, Lbyu;->cancel(Z)Z

    .line 242
    iput-object v2, p0, Lcdb;->ak:Lbyu;

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcdb;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    iput-boolean v1, p0, Lcdb;->am:Z

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcdb;->getLoaderManager()Lcj;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_3

    .line 251
    invoke-virtual {v0}, Lfe;->u()V

    .line 253
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcdb;->am:Z

    goto :goto_0
.end method


# virtual methods
.method protected a(ILbzh;)V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0, p1, p2}, Lbxv;->a(ILbzh;)V

    .line 339
    iget-object v0, p0, Lcdb;->e:Labk;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcdb;->e:Labk;

    invoke-virtual {v0}, Labk;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcdb;->al:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcdb;->al:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcdb;->an:Landroid/database/Cursor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    iput-object p1, p0, Lcdb;->an:Landroid/database/Cursor;

    .line 307
    iget-object v0, p0, Lcdb;->e:Labk;

    if-eqz v0, :cond_1

    .line 310
    new-instance v0, Lbiq;

    invoke-direct {v0, p1}, Lbiq;-><init>(Landroid/database/Cursor;)V

    .line 312
    iget-object v1, p0, Lcdb;->aj:Lbyu;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcdb;->aj:Lbyu;

    invoke-virtual {v0, v1}, Lbiq;->a(Lbyu;)V

    .line 315
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcdb;->a(ILbzh;)V

    .line 318
    :cond_1
    return-void
.end method

.method public a(Leim;Lbyu;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcdb;->ak:Lbyu;

    if-eq p2, v0, :cond_1

    .line 51
    const-string v0, "Babel"

    const-string v1, "Unexpected contact lookup load state."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const-string v0, "Should not have two new items."

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcdb;->ak:Lbyu;

    .line 56
    iget-object v0, p0, Lcdb;->c:Leim;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcdb;->e:Labk;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcdb;->aj:Lbyu;

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcdb;->aj:Lbyu;

    invoke-virtual {v0}, Lbyu;->a()V

    .line 60
    :cond_2
    iput-object p2, p0, Lcdb;->aj:Lbyu;

    .line 61
    iget-object v0, p0, Lcdb;->e:Labk;

    iget-object v1, p0, Lcdb;->aj:Lbyu;

    invoke-virtual {v0, v1}, Labk;->a(Lbyu;)V

    .line 64
    invoke-virtual {p0}, Lcdb;->b()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcdb;->b()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method public a(Leim;Lfkg;Lgpx;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 262
    invoke-super {p0, p1, p2, p3}, Lbxv;->a(Leim;Lfkg;Lgpx;)V

    .line 264
    iget-object v0, p0, Lcdb;->c:Leim;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcdb;->e:Labk;

    if-eqz v0, :cond_2

    .line 269
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 270
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 271
    if-eqz p2, :cond_0

    .line 272
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    invoke-virtual {p2}, Lfkg;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    .line 273
    const-string v0, "Babel"

    const-string v1, "Lots of contacts, or low memory, or both, clearing cache."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcdb;->aj:Lbyu;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcdb;->aj:Lbyu;

    invoke-virtual {v0}, Lbyu;->a()V

    .line 276
    iput-object v4, p0, Lcdb;->aj:Lbyu;

    .line 277
    iget-object v0, p0, Lcdb;->e:Labk;

    invoke-virtual {v0, v4}, Labk;->a(Lbyu;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcdb;->ak:Lbyu;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcdb;->ak:Lbyu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbyu;->cancel(Z)Z

    .line 284
    :cond_1
    new-instance v0, Lbyu;

    invoke-direct {v0, p2, p1, p0}, Lbyu;-><init>(Lfkg;Leim;Lbyv;)V

    iput-object v0, p0, Lcdb;->ak:Lbyu;

    .line 287
    iget-object v0, p0, Lcdb;->ak:Lbyu;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lbyu;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    :cond_2
    return-void
.end method

.method protected a()[Labl;
    .locals 3

    .prologue
    .line 328
    const/4 v0, 0x1

    new-array v0, v0, [Labl;

    const/4 v1, 0x0

    new-instance v2, Labl;

    invoke-direct {v2}, Labl;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 220
    invoke-super {p0}, Lbxv;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 224
    :cond_0
    iput-boolean v0, p0, Lcdb;->am:Z

    .line 225
    invoke-direct {p0}, Lcdb;->s()V

    goto :goto_0
.end method

.method protected isEmpty()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0, p1}, Lbxv;->onAttach(Landroid/app/Activity;)V

    .line 232
    invoke-direct {p0}, Lcdb;->s()V

    .line 233
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0, p1}, Lbxv;->onAttachBinder(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcdb;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lcdb;->i:Lhpu;

    .line 121
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 197
    instance-of v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v4, :cond_2

    .line 198
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 199
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lfbd;

    .line 201
    if-ne v3, v1, :cond_1

    .line 202
    invoke-virtual {v0}, Lfbd;->d()Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcdb;->q()Lbfd;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;[Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 215
    :goto_0
    return v0

    .line 207
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 209
    invoke-virtual {v0}, Lfbd;->b()Lbzi;

    move-result-object v0

    invoke-virtual {v0}, Lbzi;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laal;->p(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x66

    .line 208
    invoke-virtual {p0, v0, v2}, Lcdb;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 211
    goto :goto_0

    :cond_2
    move v0, v2

    .line 215
    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-super {p0, p1, p2, p3}, Lbxv;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 174
    invoke-virtual {p0}, Lcdb;->b()Landroid/widget/ListView;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 177
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_1

    .line 178
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 179
    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lfbd;

    .line 180
    invoke-virtual {v0}, Lfbd;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {v0}, Lfbd;->b()Lbzi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Lfbd;->b()Lbzi;

    move-result-object v0

    invoke-virtual {v0}, Lbzi;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x2

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->o:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 186
    :cond_0
    const/4 v0, 0x1

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->fw:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 188
    :cond_1
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->fE:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 190
    :cond_2
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 3
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
    const/4 v2, 0x0

    .line 293
    invoke-virtual {p0}, Lcdb;->q()Lbfd;

    move-result-object v0

    .line 294
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcdb;->q()Lbfd;

    move-result-object v0

    invoke-static {v0, v2, v2}, Laal;->a(Lbfd;ZI)Lez;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 126
    sget v0, Laal;->gD:I

    invoke-super {p0, p1, p2, p3, v0}, Lbxv;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v1

    .line 128
    sget v0, Laen;->dO:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcdb;->al:Landroid/view/ViewGroup;

    .line 129
    iget-object v0, p0, Lcdb;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcdb;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcdb;->ao:Lcdd;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 136
    :cond_0
    sget v0, Laen;->aY:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    new-instance v2, Lcdc;

    invoke-direct {v2, p0}, Lcdc;-><init>(Lcdb;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p0}, Lcdb;->b()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcdb;->registerForContextMenu(Landroid/view/View;)V

    .line 148
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-super {p0}, Lbxv;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcdb;->ak:Lbyu;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcdb;->ak:Lbyu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbyu;->cancel(Z)Z

    .line 163
    iput-object v2, p0, Lcdb;->ak:Lbyu;

    .line 165
    :cond_0
    iget-object v0, p0, Lcdb;->aj:Lbyu;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcdb;->aj:Lbyu;

    invoke-virtual {v0}, Lbyu;->a()V

    .line 167
    iput-object v2, p0, Lcdb;->aj:Lbyu;

    .line 169
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lbxv;->onDestroyView()V

    .line 154
    iget-object v0, p0, Lcdb;->f:Landroid/view/View;

    iget-object v1, p0, Lcdb;->ao:Lcdd;

    invoke-static {v0, v1}, Laen;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 155
    return-void
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p2}, Lcdb;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Lfe;)V
    .locals 0
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
    .line 322
    return-void
.end method
