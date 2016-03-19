.class public final Lcpj;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field final a:Lcpa;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcpg;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;


# direct methods
.method constructor <init>(Lcpa;ILcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;)V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcpj;->b:Ljava/util/ArrayList;

    .line 106
    iput-object p1, p0, Lcpj;->a:Lcpa;

    .line 107
    iput p2, p0, Lcpj;->c:I

    .line 108
    iput-object p3, p0, Lcpj;->d:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    .line 113
    invoke-virtual {p1}, Lcpa;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcpj;->a(Landroid/database/Cursor;)V

    .line 115
    iget-object v0, p0, Lcpj;->a:Lcpa;

    new-instance v1, Lcpk;

    invoke-direct {v1, p0}, Lcpk;-><init>(Lcpj;)V

    invoke-virtual {v0, v1}, Lcpa;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 128
    return-void
.end method


# virtual methods
.method a(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 202
    iget-object v0, p0, Lcpj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcpj;->b:Ljava/util/ArrayList;

    new-instance v1, Lcpg;

    sget v2, Laen;->iQ:I

    sget v3, Laal;->mM:I

    invoke-direct {v1, v2, v3, v4}, Lcpg;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    :cond_0
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 214
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcpj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 218
    :cond_1
    iget-object v0, p0, Lcpj;->b:Ljava/util/ArrayList;

    new-instance v1, Lcpg;

    sget v2, Laen;->iY:I

    sget v3, Laal;->mQ:I

    .line 222
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcpg;-><init>(III)V

    .line 218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_2
    :goto_0
    return-void

    .line 225
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcpj;->a:Lcpa;

    invoke-virtual {v0}, Lcpa;->getCount()I

    move-result v0

    iget-object v1, p0, Lcpj;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcpj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpg;

    .line 143
    iget v2, v0, Lcpg;->a:I

    if-ne v2, p1, :cond_1

    .line 149
    :goto_1
    return-object v0

    .line 145
    :cond_1
    iget v0, v0, Lcpg;->a:I

    if-ge v0, p1, :cond_0

    .line 146
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcpj;->a:Lcpa;

    invoke-virtual {v0, p1}, Lcpa;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcpj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpg;

    .line 172
    iget v2, v0, Lcpg;->a:I

    if-ne v2, p1, :cond_1

    .line 173
    const-wide/16 v0, -0x1

    .line 178
    :goto_1
    return-wide v0

    .line 174
    :cond_1
    iget v0, v0, Lcpg;->a:I

    if-ge v0, p1, :cond_0

    .line 175
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcpj;->a:Lcpa;

    invoke-virtual {v0, p1}, Lcpa;->getItemId(I)J

    move-result-wide v0

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcpj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpg;

    .line 160
    iget v2, v0, Lcpg;->a:I

    if-ne v2, p1, :cond_1

    .line 161
    iget-object v0, p0, Lcpj;->a:Lcpa;

    invoke-virtual {v0}, Lcpa;->getViewTypeCount()I

    move-result v0

    .line 166
    :goto_1
    return v0

    .line 162
    :cond_1
    iget v0, v0, Lcpg;->a:I

    if-ge v0, p1, :cond_0

    .line 163
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcpj;->a:Lcpa;

    invoke-virtual {v0, p1}, Lcpa;->getItemViewType(I)I

    move-result v0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcpj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpg;

    .line 185
    iget v2, v0, Lcpg;->a:I

    if-ne v2, p1, :cond_1

    .line 186
    iget-object v1, p0, Lcpj;->d:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    iget-object v1, v1, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->d:Lcpc;

    invoke-virtual {v0, p3, v1}, Lcpg;->a(Landroid/view/ViewGroup;Lcpc;)Landroid/view/View;

    move-result-object v0

    .line 191
    :goto_1
    return-object v0

    .line 187
    :cond_1
    iget v0, v0, Lcpg;->a:I

    if-ge v0, p1, :cond_0

    .line 188
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcpj;->a:Lcpa;

    invoke-virtual {v0, p1, p2, p3}, Lcpa;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcpj;->a:Lcpa;

    invoke-virtual {v0}, Lcpa;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcpj;->a:Lcpa;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method
