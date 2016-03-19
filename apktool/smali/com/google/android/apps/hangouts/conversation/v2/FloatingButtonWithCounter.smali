.class public Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

.field private b:I

.field private c:Landroid/view/View;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->b:I

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laal;->kd:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Laal;->jL:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->a:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->a:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/quantum/fab/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->a:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    new-instance v1, Lbqp;

    invoke-direct {v1, p0, p1}, Lbqp;-><init>(Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/quantum/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->c()V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Laal;->jH:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->c:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const/4 v0, 0x1

    const/high16 v1, 0x40a00000    # 5.0f

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 78
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->c:Landroid/view/View;

    .line 81
    invoke-static {}, Lezc;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v0, v0

    .line 80
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->jA:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->setTranslationY(F)V

    .line 86
    return-void

    .line 81
    :cond_0
    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    if-nez p0, :cond_0

    .line 253
    const-string v0, ""

    .line 255
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->jC:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public a(ZI)V
    .locals 12

    .prologue
    .line 131
    if-nez p1, :cond_0

    if-lez p2, :cond_4

    :cond_0
    const/4 v0, 0x1

    move v3, v0

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->c:Landroid/view/View;

    sget v1, Laal;->jF:I

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->c:Landroid/view/View;

    sget v2, Laal;->jG:I

    .line 138
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->c:Landroid/view/View;

    sget v4, Laal;->jI:I

    .line 140
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 145
    iget v4, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->b:I

    invoke-static {v4}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-static {p2}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    if-eqz v3, :cond_5

    const/4 v4, 0x0

    .line 1089
    :goto_1
    iget v6, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->d:I

    if-eq v4, v6, :cond_1

    .line 1093
    if-nez v4, :cond_6

    .line 1260
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1263
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Laal;->a(FFFF)Landroid/animation/Animator;

    move-result-object v7

    .line 1264
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1265
    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1266
    invoke-static {}, Laal;->d()Lhth;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1267
    new-instance v8, Lbqr;

    invoke-direct {v8, p0}, Lbqr;-><init>(Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1288
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v10, v11}, Laal;->a(FFFF)Landroid/animation/Animator;

    move-result-object v8

    .line 1289
    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1290
    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1291
    invoke-static {}, Laal;->d()Lhth;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1293
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v8, v9, v7

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1294
    invoke-virtual {v6, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1094
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 1099
    :goto_2
    iput v4, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->d:I

    .line 152
    :cond_1
    iget v4, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->b:I

    if-eq v4, p2, :cond_3

    .line 154
    if-eqz v2, :cond_2

    .line 155
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    :cond_2
    iget v4, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->b:I

    if-lez v4, :cond_7

    .line 160
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 161
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 163
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    .line 164
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x66

    .line 165
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 166
    invoke-static {}, Laal;->c()Lhth;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 174
    :goto_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 175
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 177
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x10

    .line 178
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x66

    .line 181
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 182
    invoke-static {}, Laal;->d()Lhth;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lbqq;

    invoke-direct {v1, p0, v2}, Lbqq;-><init>(Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;Landroid/widget/ImageView;)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 205
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->c:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 206
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 205
    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    if-lez p2, :cond_a

    .line 210
    if-nez p1, :cond_9

    .line 211
    iget-object v1, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->a:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    sget v2, Laal;->hg:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 221
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 212
    invoke-virtual {v0, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/quantum/fab/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    :goto_5
    iput p2, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->b:I

    .line 249
    return-void

    .line 131
    :cond_4
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_0

    .line 150
    :cond_5
    const/16 v4, 0x8

    goto/16 :goto_1

    .line 1300
    :cond_6
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1303
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Laal;->a(FFFF)Landroid/animation/Animator;

    move-result-object v7

    .line 1304
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1305
    const-wide/16 v8, 0x96

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1306
    invoke-static {}, Laal;->d()Lhth;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1307
    new-instance v8, Lbqs;

    invoke-direct {v8, p0}, Lbqs;-><init>(Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1325
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v10, v11}, Laal;->a(FFFF)Landroid/animation/Animator;

    move-result-object v8

    .line 1326
    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1327
    const-wide/16 v10, 0x64

    invoke-virtual {v8, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1328
    invoke-static {}, Laal;->d()Lhth;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1330
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v8, v9, v7

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1331
    invoke-virtual {v6, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1096
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 170
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_3

    .line 206
    :cond_8
    const/16 v0, 0x8

    goto/16 :goto_4

    .line 223
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->a:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    sget v2, Laal;->hh:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 233
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 224
    invoke-virtual {v0, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/quantum/fab/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 236
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->a:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->ap:I

    .line 237
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 236
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/quantum/fab/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public b()I
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->jC:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->a:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->jw:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/quantum/fab/FloatingActionButton;->b(I)V

    .line 338
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->a:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    .line 339
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->jv:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 338
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/quantum/fab/FloatingActionButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 341
    sget v0, Laal;->jM:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 342
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/conversation/v2/FloatingButtonWithCounter;->setMeasuredDimension(II)V

    .line 108
    return-void
.end method
