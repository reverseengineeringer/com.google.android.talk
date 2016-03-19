.class public Lcom/google/android/apps/hangouts/views/FixedParticipantsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final a:D

.field private static final b:D


# instance fields
.field private final c:Landroid/widget/LinearLayout;

.field private final d:Landroid/widget/LinearLayout;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->a:D

    .line 32
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->b:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lawl;->B:[I

    .line 46
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 48
    :try_start_0
    sget v0, Lawl;->D:I

    const/16 v2, 0x24

    .line 49
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->e:I

    .line 51
    sget v0, Lawl;->F:I

    const/16 v2, 0x24

    .line 52
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->f:I

    .line 54
    sget v0, Lawl;->E:I

    const/16 v2, 0xc

    .line 55
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 62
    sget v1, Laal;->fH:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    sget v0, Laen;->cg:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->c:Landroid/widget/LinearLayout;

    .line 64
    sget v0, Laen;->ch:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->d:Landroid/widget/LinearLayout;

    .line 65
    sget v0, Laen;->ci:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->h:Landroid/widget/TextView;

    .line 66
    return-void

    .line 58
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public a(Lbfd;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfd;",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->a()V

    .line 71
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 76
    const/4 v0, 0x4

    if-le v5, v0, :cond_4

    .line 78
    const/4 v0, 0x3

    move v4, v0

    .line 81
    :goto_1
    const/4 v0, 0x3

    if-le v5, v0, :cond_5

    const/4 v0, 0x2

    move v1, v0

    .line 83
    :goto_2
    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v4, :cond_e

    .line 84
    new-instance v6, Lcom/google/android/apps/hangouts/views/AvatarView;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/android/apps/hangouts/views/AvatarView;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 87
    iget-object v2, v0, Lcyx;->a:Lczd;

    .line 1164
    sget-object v7, Lfca;->a:[I

    invoke-virtual {v2}, Lczd;->ordinal()I

    move-result v2

    aget v2, v7, v2

    packed-switch v2, :pswitch_data_0

    .line 1172
    const/4 v2, 0x0

    .line 87
    :goto_4
    invoke-virtual {v6, v2}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(I)V

    .line 88
    const/4 v2, 0x1

    if-ne v4, v2, :cond_2

    .line 89
    const/4 v2, 0x4

    invoke-virtual {v6, v2}, Lcom/google/android/apps/hangouts/views/AvatarView;->b(I)V

    .line 91
    :cond_2
    iget-object v2, v0, Lcyx;->a:Lczd;

    sget-object v7, Lczd;->d:Lczd;

    if-ne v2, v7, :cond_6

    .line 92
    invoke-virtual {v0}, Lcyx;->g()Z

    move-result v2

    .line 2134
    const-string v7, "Expected condition to be true"

    invoke-static {v7, v2}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 93
    invoke-virtual {v0}, Lcyx;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2, p1}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Ljava/lang/String;ZLbfd;)V

    .line 3132
    :goto_5
    const/4 v0, 0x1

    if-ne v5, v0, :cond_7

    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->f:I

    .line 3133
    :goto_6
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3134
    const/4 v0, 0x4

    if-ge v5, v0, :cond_3

    const/4 v0, 0x1

    if-eq v5, v0, :cond_3

    if-nez v3, :cond_8

    const/4 v0, 0x2

    if-ne v5, v0, :cond_8

    .line 3137
    :cond_3
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 97
    :goto_7
    invoke-virtual {v6, v2}, Lcom/google/android/apps/hangouts/views/AvatarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    if-ge v3, v1, :cond_d

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    :goto_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_4
    move v4, v5

    .line 79
    goto :goto_1

    .line 81
    :cond_5
    const/4 v0, 0x1

    move v1, v0

    goto :goto_2

    .line 1166
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_4

    .line 1168
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_4

    .line 95
    :cond_6
    iget-object v0, v0, Lcyx;->b:Lczb;

    invoke-virtual {v6, v0, p1}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Lczb;Lbfd;)V

    goto :goto_5

    .line 3132
    :cond_7
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->e:I

    goto :goto_6

    .line 3142
    :cond_8
    const/4 v0, 0x3

    if-ne v5, v0, :cond_9

    if-nez v3, :cond_9

    .line 3144
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->e:I

    div-int/lit8 v0, v0, 0x2

    const/4 v7, 0x0

    iget v8, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->e:I

    div-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_7

    .line 3145
    :cond_9
    const/4 v0, 0x3

    if-ne v5, v0, :cond_b

    const/4 v0, 0x1

    if-eq v3, v0, :cond_a

    const/4 v0, 0x2

    if-ne v3, v0, :cond_b

    .line 3147
    :cond_a
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->e:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v8, v0

    sget-wide v10, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->b:D

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 3148
    const/4 v7, 0x0

    iget v8, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->e:I

    sub-int v0, v8, v0

    mul-int/lit8 v0, v0, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_7

    .line 3153
    :cond_b
    const/4 v0, 0x2

    if-ne v5, v0, :cond_c

    const/4 v0, 0x1

    if-ne v3, v0, :cond_c

    .line 3155
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->e:I

    int-to-double v8, v0

    sget-wide v10, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->a:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 3156
    iget v7, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->e:I

    sub-int/2addr v7, v0

    mul-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_7

    .line 3158
    :cond_c
    const-string v0, "Incorrect avatar margin layout being calculated"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 102
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 107
    :cond_e
    const/4 v0, 0x4

    if-le v5, v0, :cond_f

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->h:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->e:I

    iget v3, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->e:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->h:Landroid/widget/TextView;

    add-int/lit8 v1, v5, -0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    :cond_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    .line 118
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 119
    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lcyx;->e:Ljava/lang/String;

    aput-object v0, v3, v1

    move v1, v2

    .line 120
    goto :goto_9

    .line 121
    :cond_10
    invoke-static {v3, v4}, Laal;->a([Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
