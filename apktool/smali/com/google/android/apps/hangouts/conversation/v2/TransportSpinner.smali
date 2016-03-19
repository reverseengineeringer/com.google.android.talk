.class public Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;
.super Landroid/widget/Spinner;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lbrw;

.field public c:Z

.field public d:Z

.field public e:Landroid/view/View;

.field public f:Lbjb;

.field private g:Leot;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lbjc;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbjb;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ldlj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->i:Z

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->k:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->a(Ljava/util/List;)V

    .line 231
    return-void
.end method

.method public a(Lbjb;)V
    .locals 3

    .prologue
    .line 121
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b:Lbrw;

    invoke-virtual {v0}, Lbrw;->getCount()I

    move-result v1

    .line 122
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 123
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->setSelection(I)V

    .line 134
    :cond_0
    return-void

    .line 122
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->i:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->a()V

    goto :goto_0
.end method

.method public a(Lilh;)V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lbrw;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laal;->fi:I

    invoke-direct {v0, p0, v1, v2}, Lbrw;-><init>(Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b:Lbrw;

    .line 66
    const-class v0, Leot;

    invoke-virtual {p1, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->g:Leot;

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b:Lbrw;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 69
    const-class v0, Lhpu;

    invoke-virtual {p1, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->a:I

    .line 70
    const-class v0, Lbjc;

    invoke-virtual {p1, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjc;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->j:Lbjc;

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->j:Lbjc;

    new-instance v1, Lbrt;

    invoke-direct {v1, p0}, Lbrt;-><init>(Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;)V

    invoke-interface {v0, v1}, Lbjc;->a(Lbjd;)V

    .line 95
    const-class v0, Lino;

    invoke-virtual {p1, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liog;

    .line 96
    new-instance v1, Lbrv;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->a:I

    invoke-direct {v1, p0, v2, v0, v3}, Lbrv;-><init>(Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;Landroid/content/Context;Liog;I)V

    iput-object v1, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->l:Ldlj;

    .line 97
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbjb;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    iput-object p1, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->k:Ljava/util/List;

    .line 157
    iget-object v3, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->g:Leot;

    invoke-interface {v3}, Leot;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    const/4 p1, 0x0

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b:Lbrw;

    invoke-virtual {v3}, Lbrw;->clear()V

    .line 162
    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->setVisibility(I)V

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->setEnabled(Z)V

    .line 168
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v1

    move v4, v1

    move v5, v1

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 169
    iget v8, v0, Lbjb;->b:I

    .line 171
    iget-object v6, v0, Lbjb;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 172
    iget-object v6, v0, Lbjb;->i:Lbgd;

    if-eqz v6, :cond_5

    move v6, v2

    :goto_2
    or-int/2addr v5, v6

    .line 174
    :cond_3
    invoke-static {v8}, Laal;->e(I)Z

    move-result v6

    or-int/2addr v4, v6

    .line 175
    invoke-static {v8}, Laal;->h(I)Z

    move-result v6

    or-int/2addr v3, v6

    .line 177
    iget-object v6, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->h:Ljava/lang/String;

    if-nez v6, :cond_2

    invoke-static {v8}, Laal;->g(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    invoke-virtual {v0}, Lbjb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->h:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move v0, v1

    .line 164
    goto :goto_0

    :cond_5
    move v6, v1

    .line 172
    goto :goto_2

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->l:Ldlj;

    iget-object v6, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->h:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ldlj;->a(Ljava/lang/String;)V

    .line 183
    iget-object v6, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b:Lbrw;

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    move v0, v2

    .line 1343
    :goto_3
    iput-boolean v0, v6, Lbrw;->a:Z

    .line 189
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->i:Z

    if-nez v0, :cond_b

    if-eqz v5, :cond_b

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v1

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 191
    iget-object v4, v0, Lbjb;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v2

    .line 192
    :goto_5
    iget-object v5, v0, Lbjb;->i:Lbgd;

    if-eqz v5, :cond_9

    move v5, v2

    .line 193
    :goto_6
    iget-object v7, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->f:Lbjb;

    if-ne v0, v7, :cond_a

    move v0, v2

    .line 194
    :goto_7
    if-nez v0, :cond_16

    if-eqz v4, :cond_16

    if-nez v5, :cond_16

    .line 195
    add-int/lit8 v3, v3, 0x1

    move v0, v3

    :goto_8
    move v3, v0

    .line 197
    goto :goto_4

    :cond_7
    move v0, v1

    .line 183
    goto :goto_3

    :cond_8
    move v4, v1

    .line 191
    goto :goto_5

    :cond_9
    move v5, v1

    .line 192
    goto :goto_6

    :cond_a
    move v0, v1

    .line 193
    goto :goto_7

    :cond_b
    move v3, v1

    .line 199
    :cond_c
    if-le v3, v2, :cond_f

    move v3, v2

    .line 200
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 201
    if-eqz v3, :cond_e

    .line 204
    iget-object v4, v0, Lbjb;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    move v4, v2

    .line 205
    :goto_b
    iget-object v5, v0, Lbjb;->i:Lbgd;

    if-eqz v5, :cond_11

    move v5, v2

    .line 206
    :goto_c
    iget-object v6, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->f:Lbjb;

    if-ne v0, v6, :cond_12

    move v6, v2

    .line 207
    :goto_d
    if-nez v6, :cond_e

    if-eqz v4, :cond_e

    if-eqz v5, :cond_d

    .line 212
    :cond_e
    iget-object v4, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b:Lbrw;

    invoke-virtual {v4, v0, v1}, Lbrw;->insert(Ljava/lang/Object;I)V

    goto :goto_a

    :cond_f
    move v3, v1

    .line 199
    goto :goto_9

    :cond_10
    move v4, v1

    .line 204
    goto :goto_b

    :cond_11
    move v5, v1

    .line 205
    goto :goto_c

    :cond_12
    move v6, v1

    .line 206
    goto :goto_d

    .line 214
    :cond_13
    if-eqz v3, :cond_14

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b:Lbrw;

    new-instance v2, Lbru;

    invoke-direct {v2, p0}, Lbru;-><init>(Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;)V

    invoke-virtual {v0, v2, v1}, Lbrw;->insert(Ljava/lang/Object;I)V

    .line 218
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->f:Lbjb;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->a(Lbjb;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b()V

    .line 223
    :goto_e
    return-void

    .line 221
    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->setVisibility(I)V

    goto :goto_e

    :cond_16
    move v0, v3

    goto :goto_8
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->d:Z

    if-ne v0, p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->d:Z

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b:Lbrw;

    invoke-virtual {v0}, Lbrw;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->k:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 247
    iget-object v7, v0, Lbjb;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move v0, v5

    move v1, v3

    .line 252
    :goto_1
    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    :cond_0
    move v3, v1

    move v1, v0

    .line 255
    goto :goto_0

    .line 249
    :cond_1
    iget v0, v0, Lbjb;->b:I

    invoke-static {v0}, Laal;->g(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    move v1, v5

    .line 250
    goto :goto_1

    :cond_2
    move v0, v1

    move v1, v3

    .line 257
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 259
    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    .line 260
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->rQ:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2311
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->k:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->k:Ljava/util/List;

    .line 2312
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2313
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b:Lbrw;

    invoke-virtual {v3}, Lbrw;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 2314
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 266
    :goto_3
    if-eqz v0, :cond_4

    .line 267
    iget-object v3, v0, Lbjb;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 268
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->rP:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 289
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 290
    if-nez v1, :cond_a

    move-object v1, v4

    .line 302
    :cond_5
    :goto_5
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 303
    return-void

    .line 269
    :cond_6
    iget-object v3, v0, Lbjb;->h:Lcyx;

    if-eqz v3, :cond_4

    .line 272
    iget-object v3, v0, Lbjb;->i:Lbgd;

    .line 273
    if-eqz v3, :cond_7

    iget-object v4, v3, Lbgd;->o:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 274
    iget-object v0, v3, Lbgd;->o:Ljava/lang/String;

    .line 281
    :goto_6
    iget-boolean v3, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->c:Z

    if-eqz v3, :cond_9

    .line 283
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->rO:I

    .line 285
    :goto_7
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v6, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 275
    :cond_7
    iget-object v3, v0, Lbjb;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 276
    iget-object v0, v0, Lbjb;->d:Ljava/lang/String;

    goto :goto_6

    .line 278
    :cond_8
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->rM:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 284
    :cond_9
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->rR:I

    goto :goto_7

    .line 293
    :cond_a
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->rL:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    aput-object v1, v3, v5

    .line 294
    invoke-virtual {v6, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_b
    move-object v0, v4

    goto :goto_3

    :cond_c
    move-object v1, v4

    goto :goto_2

    :cond_d
    move v0, v1

    move v1, v3

    goto/16 :goto_1

    :cond_e
    move-object v1, v4

    goto :goto_5
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->j:Lbjc;

    invoke-interface {v0}, Lbjc;->c()V

    .line 102
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public setSelection(I)V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 143
    instance-of v1, v0, Lbjb;

    if-eqz v1, :cond_0

    .line 144
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 145
    iget-object v1, p0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->j:Lbjc;

    check-cast v0, Lbjb;

    invoke-interface {v1, v0}, Lbjc;->a(Lbjb;)V

    .line 152
    :cond_0
    return-void
.end method
