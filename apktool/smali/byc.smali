.class public final Lbyc;
.super Log;
.source "SourceFile"


# instance fields
.field final synthetic j:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 240
    iput-object p1, p0, Lbyc;->j:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Log;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 242
    iput-object p2, p0, Lbyc;->d:Landroid/content/Context;

    .line 243
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 4039
    new-instance v0, Lfbb;

    invoke-direct {v0, p1}, Lfbb;-><init>(Landroid/content/Context;)V

    .line 297
    iget-object v1, p0, Lbyc;->j:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 4043
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->f:Lfbc;

    .line 297
    invoke-virtual {v0, v1}, Lfbb;->a(Lfbc;)V

    .line 298
    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 303
    check-cast p1, Lfbb;

    .line 306
    const/4 v0, 0x3

    .line 307
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p1, v0}, Lfbb;->a(Ljava/lang/String;)V

    .line 309
    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbyc;->j:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 5043
    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->a:Lbfd;

    .line 309
    invoke-virtual {p1, v1, v0, v2}, Lfbb;->a(Ljava/lang/String;Ljava/lang/String;Lbfd;)V

    .line 312
    new-instance v0, Lczb;

    const/4 v1, 0x2

    .line 313
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 314
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lczb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1, v0}, Lfbb;->a(Lczb;)V

    .line 316
    return-void
.end method

.method public b(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 291
    invoke-super {p0, p1}, Log;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 249
    invoke-super {p0}, Log;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 254
    invoke-virtual {p0}, Lbyc;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 255
    if-nez p2, :cond_0

    iget-object v0, p0, Lbyc;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lbyc;->a()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lbyc;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 264
    :cond_0
    :goto_0
    return-object p2

    .line 260
    :cond_1
    invoke-super {p0, p1, p2, p3}, Log;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 261
    const-class v0, Lfbb;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 262
    check-cast v0, Lfbb;

    .line 1268
    sget v2, Laen;->hb:I

    invoke-virtual {v0, v2}, Lfbb;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move v4, v5

    .line 1270
    :goto_1
    iget-object v3, p0, Lbyc;->j:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 2043
    iget-object v3, v3, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->e:Lif;

    .line 1270
    invoke-virtual {v3}, Lif;->size()I

    move-result v3

    if-ge v4, v3, :cond_6

    .line 1271
    iget-object v3, p0, Lbyc;->j:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 3043
    iget-object v3, v3, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->e:Lif;

    .line 1271
    invoke-virtual {v3, v4}, Lif;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbye;

    .line 1272
    iget-object v3, v3, Lbye;->a:Lczb;

    invoke-virtual {v0}, Lfbb;->a()Lczb;

    move-result-object v7

    invoke-virtual {v3, v7}, Lczb;->a(Lczb;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    .line 1277
    :goto_2
    if-eqz v3, :cond_5

    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->sf:I

    .line 1279
    :goto_3
    if-nez v3, :cond_2

    move v5, v6

    .line 1280
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 1281
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setClickable(Z)V

    :cond_3
    move-object p2, v1

    .line 264
    goto :goto_0

    .line 1270
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 1278
    :cond_5
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->se:I

    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lbyc;->a()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 324
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
    .line 286
    const/4 v0, 0x0

    return v0
.end method
