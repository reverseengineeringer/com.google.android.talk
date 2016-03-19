.class public abstract Lfcu;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lbhv;
.implements Lcuk;


# static fields
.field public static final e:Z

.field public static f:Z

.field private static j:I


# instance fields
.field private a:Leys;

.field private b:Lfcd;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/ImageView;

.field public g:Lbhs;

.field public final h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lezi;->u:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lfcu;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    sget v0, Lfcu;->j:I

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lfcu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->dN:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lfcu;->j:I

    .line 72
    :cond_0
    invoke-virtual {p0, v3}, Lfcu;->setOrientation(I)V

    .line 73
    sget v0, Laal;->go:I

    invoke-static {p1, v0, p0}, Lfcu;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    sget v0, Laen;->dq:I

    invoke-virtual {p0, v0}, Lfcu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfcu;->c:Landroid/widget/ImageView;

    .line 75
    sget v0, Laen;->dt:I

    invoke-virtual {p0, v0}, Lfcu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    iput-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    .line 76
    sget v0, Laen;->ds:I

    invoke-virtual {p0, v0}, Lfcu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfcu;->d:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p0}, Lfcu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lfcu;->d:Landroid/widget/ImageView;

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->bk:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lfcu;->d:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {p0}, Lfcu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->hw:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    :cond_1
    invoke-virtual {p0, v3}, Lfcu;->setLongClickable(Z)V

    .line 83
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lfcu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {p0, v0}, Lfcu;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method

.method public a(Lbfd;ZLjava/lang/String;III)V
    .locals 7

    .prologue
    const/16 v2, 0x55

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 105
    if-nez p3, :cond_1

    .line 106
    invoke-virtual {p0}, Lfcu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lfcu;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    if-nez p4, :cond_2

    .line 116
    sget p4, Lfcu;->j:I

    .line 118
    :cond_2
    if-nez p5, :cond_3

    .line 119
    sget p5, Lfcu;->j:I

    .line 121
    :cond_3
    rem-int/lit16 v0, p6, 0xb4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_6

    .line 124
    iget-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v0, p5, p4}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a(II)V

    .line 126
    invoke-virtual {p0}, Lfcu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "babel_crash_on_conversation_scroll_error"

    .line 125
    invoke-static {v0, v1, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    const-string v0, "Babel_Scroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "setting MediaThumbnailAttachmentView.mImageView dimensions to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    :cond_4
    :goto_1
    iput-boolean p2, p0, Lfcu;->i:Z

    .line 1157
    new-instance v0, Leyd;

    .line 1158
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Leyd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lfcu;->j:I

    .line 1159
    invoke-virtual {v0, v1}, Leyd;->a(I)Leyd;

    move-result-object v0

    .line 1160
    invoke-virtual {v0, v6}, Leyd;->a(Z)Leyd;

    move-result-object v0

    .line 1161
    invoke-virtual {p0}, Lfcu;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Leyd;->c(Z)Leyd;

    move-result-object v0

    .line 1162
    invoke-virtual {v0, v6}, Leyd;->d(Z)Leyd;

    move-result-object v1

    .line 1163
    new-instance v0, Lbhs;

    const/4 v4, 0x1

    move-object v2, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lbhs;-><init>(Leyd;Lbhv;Ljava/lang/String;ZLjava/lang/Object;)V

    iput-object v0, p0, Lfcu;->g:Lbhs;

    .line 1171
    invoke-virtual {p0}, Lfcu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Leit;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    iget-object v1, p0, Lfcu;->g:Lbhs;

    iget-boolean v2, p0, Lfcu;->i:Z

    .line 1172
    invoke-virtual {v0, v1, v2}, Leit;->a(Lehx;Z)Z

    move-result v0

    .line 1174
    if-eqz v0, :cond_7

    .line 1176
    iput-object v3, p0, Lfcu;->g:Lbhs;

    .line 1183
    :goto_2
    invoke-virtual {p0}, Lfcu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "babel_extra_log_scrolling"

    .line 1182
    invoke-static {v0, v1, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1187
    invoke-virtual {p0}, Lfcu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "babel_crash_on_conversation_scroll_error"

    .line 1186
    invoke-static {v0, v1, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    :cond_5
    const-string v0, "Babel_Scroll"

    iget-object v1, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Image request begin, Height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 137
    :cond_6
    iget-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v0, p4, p5}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a(II)V

    .line 139
    invoke-virtual {p0}, Lfcu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "babel_crash_on_conversation_scroll_error"

    .line 138
    invoke-static {v0, v1, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    const-string v0, "Babel_Scroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "setting MediaThumbnailAttachmentView.mImageView dimensions to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1179
    :cond_7
    invoke-virtual {p0}, Lfcu;->e()V

    goto :goto_2
.end method

.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 226
    sget-boolean v0, Lfcu;->e:Z

    if-eqz v0, :cond_0

    .line 227
    if-nez p1, :cond_2

    move-object v3, v1

    .line 230
    :goto_0
    if-nez p2, :cond_3

    move-object v0, v1

    .line 232
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x50

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "MediaThumbnailView: setImageBitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gifImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " success="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " loadedFromCache="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    iget-object v0, p0, Lfcu;->g:Lbhs;

    if-eq v0, p4, :cond_4

    .line 241
    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {p1}, Leys;->b()V

    .line 300
    :cond_1
    :goto_2
    return-void

    .line 230
    :cond_2
    invoke-virtual {p1}, Leys;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 248
    :cond_4
    iput-object v1, p0, Lfcu;->g:Lbhs;

    .line 250
    if-nez p5, :cond_8

    const/4 v0, 0x1

    .line 1320
    :goto_3
    if-eqz v0, :cond_9

    .line 1321
    iget-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setAlpha(F)V

    .line 1322
    iget-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1326
    :goto_4
    iget-object v0, p0, Lfcu;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1327
    iget-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setVisibility(I)V

    .line 251
    invoke-virtual {p0}, Lfcu;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lfcu;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    :cond_5
    if-eqz p3, :cond_b

    .line 255
    invoke-virtual {p4}, Lbhs;->n()Leyg;

    move-result-object v0

    invoke-virtual {v0}, Leyg;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 257
    invoke-virtual {p4}, Lbhs;->n()Leyg;

    move-result-object v0

    invoke-virtual {v0}, Leyg;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfcu;->a(Ljava/lang/String;)V

    .line 259
    :cond_6
    if-eqz p2, :cond_a

    .line 260
    new-instance v0, Lfcd;

    invoke-direct {v0, p2}, Lfcd;-><init>(Lexs;)V

    iput-object v0, p0, Lfcu;->b:Lfcd;

    .line 261
    iget-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    iget-object v1, p0, Lfcu;->b:Lfcd;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v0, p0, Lfcu;->b:Lfcd;

    invoke-virtual {v0}, Lfcd;->a()V

    .line 268
    :goto_5
    iget-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->requestLayout()V

    .line 291
    :goto_6
    invoke-virtual {p0}, Lfcu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "babel_extra_log_scrolling"

    .line 290
    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 295
    invoke-virtual {p0}, Lfcu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "babel_crash_on_conversation_scroll_error"

    .line 294
    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_7
    const-string v0, "Babel_Scroll"

    iget-object v1, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->getHeight()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Image Update done, Height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 250
    goto/16 :goto_3

    .line 1324
    :cond_9
    iget-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v0, v7}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setAlpha(F)V

    goto/16 :goto_4

    .line 264
    :cond_a
    iget-object v0, p0, Lfcu;->a:Leys;

    .line 2188
    const-string v1, "Expected null"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    iput-object p1, p0, Lfcu;->a:Leys;

    .line 266
    iget-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    iget-object v1, p0, Lfcu;->a:Leys;

    invoke-virtual {v1}, Leys;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 270
    :cond_b
    invoke-virtual {p0}, Lfcu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lfcu;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 273
    iget-object v1, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    sget v3, Laal;->di:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setBackgroundColor(I)V

    goto :goto_6

    .line 276
    :cond_c
    iget-object v1, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    sget v3, Laal;->do:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setBackgroundColor(I)V

    .line 277
    iget-object v1, p0, Lfcu;->d:Landroid/widget/ImageView;

    sget v3, Lcom/google/android/apps/hangouts/R$drawable;->aG:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    iget-object v1, p0, Lfcu;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lfcu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 281
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 284
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->fO:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 286
    sget v3, Laal;->cQ:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    invoke-virtual {p0, v1, v2}, Lfcu;->addView(Landroid/view/View;I)V

    goto/16 :goto_6
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, Lfcu;->g:Lbhs;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lfcu;->g:Lbhs;

    invoke-virtual {v0}, Lbhs;->b()V

    .line 351
    iput-object v1, p0, Lfcu;->g:Lbhs;

    .line 353
    :cond_0
    iget-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    iget-object v0, p0, Lfcu;->a:Leys;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lfcu;->a:Leys;

    invoke-virtual {v0}, Leys;->b()V

    .line 356
    iput-object v1, p0, Lfcu;->a:Leys;

    .line 358
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfcu;->i:Z

    .line 360
    iget-object v0, p0, Lfcu;->b:Lfcd;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lfcu;->b:Lfcd;

    invoke-virtual {v0}, Lfcd;->c()V

    .line 362
    iput-object v1, p0, Lfcu;->b:Lfcd;

    .line 364
    :cond_2
    return-void
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lfcu;->b:Lfcd;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lfcu;->b:Lfcd;

    invoke-virtual {v0}, Lfcd;->a()V

    .line 342
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    sget v0, Laen;->at:I

    invoke-virtual {p0, v0}, Lfcu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 197
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public c_()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lfcu;->b:Lfcd;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lfcu;->b:Lfcd;

    invoke-virtual {v0}, Lfcd;->b()V

    .line 335
    :cond_0
    return-void
.end method

.method public d_()V
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lfcu;->i:Z

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfcu;->i:Z

    .line 210
    invoke-virtual {p0}, Lfcu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Leit;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    iget-object v1, p0, Lfcu;->g:Lbhs;

    invoke-virtual {v0, v1}, Leit;->a(Lehx;)Z

    move-result v0

    .line 212
    iget-object v1, p0, Lfcu;->g:Lbhs;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lfcu;->g:Lbhs;

    .line 217
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lfcu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcbr;

    .line 308
    invoke-static {v0}, Lfbq;->a(Lcbr;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lfcu;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v0, p0, Lfcu;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lfcu;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setVisibility(I)V

    .line 312
    return-void
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lfcu;->b:Lfcd;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lfcu;->b:Lfcd;

    invoke-virtual {v0}, Lfcd;->a()V

    .line 395
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 396
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lfcu;->b:Lfcd;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lfcu;->b:Lfcd;

    invoke-virtual {v0}, Lfcd;->b()V

    .line 387
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 388
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 401
    if-lez p4, :cond_0

    if-le p2, p4, :cond_0

    .line 402
    const/4 v0, 0x1

    sput-boolean v0, Lfcu;->f:Z

    .line 404
    :cond_0
    return-void
.end method
