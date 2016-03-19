.class public final Lcom/google/android/apps/hangouts/views/ConversationListItemView;
.super Lfbg;
.source "SourceFile"

# interfaces
.implements Lbhv;


# instance fields
.field private n:Lcom/google/android/apps/hangouts/views/FadeImageView;

.field private o:Lcom/google/android/apps/hangouts/views/ConversationNameView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lfbg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const/16 p1, 0x8

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    return-void
.end method

.method public a(III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->o:Lcom/google/android/apps/hangouts/views/ConversationNameView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/views/ConversationNameView;->b(I)V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->o:Lcom/google/android/apps/hangouts/views/ConversationNameView;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/hangouts/views/ConversationNameView;->a(I)V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 160
    return-void
.end method

.method protected a(ILandroid/database/Cursor;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 92
    iget v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->h:I

    if-eq v0, p1, :cond_1

    .line 93
    iput p1, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->h:I

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->l()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->h:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    move v0, v1

    .line 97
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->f(I)V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->i:I

    if-ne v0, v3, :cond_0

    move v1, v3

    .line 105
    :cond_0
    iget v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->h:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1, p2}, Lfbg;->a(ILandroid/database/Cursor;)V

    .line 132
    return-void

    :cond_2
    move v0, v2

    .line 98
    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_3

    .line 111
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ax:I

    .line 109
    :goto_2
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 114
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bd:I

    .line 113
    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 112
    :cond_3
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->aw:I

    goto :goto_2

    .line 114
    :cond_4
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->be:I

    goto :goto_3

    .line 117
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->au:I

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->be:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->av:I

    .line 125
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->bd:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-static {}, Lezc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 202
    return-void
.end method

.method public a(ZLandroid/graphics/Bitmap;ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->n:Lcom/google/android/apps/hangouts/views/FadeImageView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/hangouts/views/FadeImageView;->a(ZLandroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->o:Lcom/google/android/apps/hangouts/views/ConversationNameView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/ConversationNameView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 207
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->o:Lcom/google/android/apps/hangouts/views/ConversationNameView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/views/ConversationNameView;->a(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-static {}, Lezc;->c()Z

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 188
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 252
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method public e()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 257
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    return-void
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->t:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    return-void
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->u:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public i(I)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->v:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public j(I)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    return-void
.end method

.method public k()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->w:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public k(I)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    return-void
.end method

.method protected l()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 361
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 363
    return-void

    :cond_1
    move v0, v1

    .line 360
    goto :goto_0

    .line 361
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public l(I)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 47
    sget v0, Laen;->aA:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/FadeImageView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->n:Lcom/google/android/apps/hangouts/views/FadeImageView;

    .line 48
    sget v0, Laen;->bj:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/ConversationNameView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->o:Lcom/google/android/apps/hangouts/views/ConversationNameView;

    .line 49
    sget v0, Laen;->en:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->p:Landroid/widget/TextView;

    .line 50
    sget v0, Laen;->dr:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->q:Landroid/widget/ImageView;

    .line 51
    sget v0, Laen;->gK:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->r:Landroid/widget/TextView;

    .line 52
    sget v0, Laen;->hj:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->x:Landroid/widget/TextView;

    .line 54
    sget v0, Laen;->ct:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->s:Landroid/widget/ImageView;

    new-instance v1, Lfbf;

    invoke-direct {v1, p0}, Lfbf;-><init>(Lcom/google/android/apps/hangouts/views/ConversationListItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v0, Laen;->bn:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->t:Landroid/view/View;

    .line 79
    sget v0, Laen;->hd:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->u:Landroid/view/View;

    .line 80
    sget v0, Laen;->cd:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->v:Landroid/view/View;

    .line 81
    sget v0, Laen;->cs:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemView;->w:Landroid/widget/ImageView;

    .line 83
    invoke-super {p0}, Lfbg;->onFinishInflate()V

    .line 84
    return-void
.end method
