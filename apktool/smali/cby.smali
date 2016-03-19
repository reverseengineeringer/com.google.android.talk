.class public final Lcby;
.super Log;
.source "SourceFile"


# instance fields
.field final synthetic j:Lcom/google/android/apps/hangouts/fragments/HiddenContactsFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/HiddenContactsFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcby;->j:Lcom/google/android/apps/hangouts/fragments/HiddenContactsFragment;

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Log;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 225
    iput-object p2, p0, Lcby;->d:Landroid/content/Context;

    .line 226
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 3040
    new-instance v0, Lfcp;

    invoke-direct {v0, p1}, Lfcp;-><init>(Landroid/content/Context;)V

    .line 270
    iget-object v1, p0, Lcby;->j:Lcom/google/android/apps/hangouts/fragments/HiddenContactsFragment;

    .line 3042
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/HiddenContactsFragment;->f:Lfcq;

    .line 270
    invoke-virtual {v0, v1}, Lfcp;->a(Lfcq;)V

    .line 271
    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 276
    check-cast p1, Lfcp;

    .line 277
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfcp;->a(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcby;->j:Lcom/google/android/apps/hangouts/fragments/HiddenContactsFragment;

    .line 4042
    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/HiddenContactsFragment;->a:Lhpu;

    .line 280
    invoke-interface {v2}, Lhpu;->a()I

    move-result v2

    invoke-static {v2}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 278
    invoke-virtual {p1, v0, v1, v2}, Lfcp;->a(Ljava/lang/String;Ljava/lang/String;Lbfd;)V

    .line 281
    new-instance v0, Lczb;

    const/4 v1, 0x2

    .line 282
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 283
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lczb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1, v0}, Lfcp;->a(Lczb;)V

    .line 285
    return-void
.end method

.method public b(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 263
    invoke-super {p0, p1}, Log;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 264
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 235
    invoke-virtual {p0}, Lcby;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 236
    if-nez p2, :cond_0

    iget-object v0, p0, Lcby;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcby;->a()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcby;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 242
    :cond_0
    :goto_0
    return-object p2

    .line 240
    :cond_1
    invoke-super {p0, p1, p2, p3}, Log;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1246
    sget v0, Laen;->hc:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    move-object v1, v2

    .line 1247
    check-cast v1, Lfcp;

    invoke-virtual {v1}, Lfcp;->a()Lczb;

    move-result-object v1

    iget-object v1, v1, Lczb;->a:Ljava/lang/String;

    .line 1248
    iget-object v3, p0, Lcby;->j:Lcom/google/android/apps/hangouts/fragments/HiddenContactsFragment;

    .line 2042
    iget-object v3, v3, Lcom/google/android/apps/hangouts/fragments/HiddenContactsFragment;->e:Landroid/util/SparseArray;

    .line 1248
    invoke-static {v3, v1}, Laal;->a(Landroid/util/SparseArray;Ljava/lang/Object;)Z

    move-result v4

    .line 1249
    if-eqz v4, :cond_2

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->sh:I

    move v3, v1

    .line 1251
    :goto_1
    if-nez v4, :cond_3

    const/4 v1, 0x1

    .line 1252
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 1253
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    move-object p2, v2

    .line 242
    goto :goto_0

    .line 1250
    :cond_2
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->sg:I

    move v3, v1

    goto :goto_1

    .line 1251
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcby;->a()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Log;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method
