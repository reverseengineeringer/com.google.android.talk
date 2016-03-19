.class public final Lbtz;
.super Lfcu;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lfcv;

.field d:Lcom/google/android/apps/hangouts/views/MessageListItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/apps/hangouts/views/MessageListItemView;Lfcv;)V
    .locals 7

    .prologue
    .line 38
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lfcu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1063
    const-string v1, "file://"

    .line 1064
    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1065
    :goto_0
    const-string v1, "file://"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p0, p4}, Lbtz;->a(Ljava/lang/String;)V

    .line 1066
    iput-object p8, p0, Lbtz;->b:Ljava/lang/String;

    .line 1067
    iput-boolean p3, p0, Lbtz;->i:Z

    .line 1068
    move-object/from16 v0, p11

    iput-object v0, p0, Lbtz;->c:Lfcv;

    .line 1069
    move-object/from16 v0, p10

    iput-object v0, p0, Lbtz;->d:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 1073
    invoke-virtual {p0}, Lbtz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->kU:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1074
    iget-object v2, p0, Lbtz;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setMaxWidth(I)V

    .line 1075
    iget-object v2, p0, Lbtz;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->setMaxHeight(I)V

    .line 1076
    if-lez p6, :cond_2

    if-lez p7, :cond_2

    .line 1077
    iget-object v1, p0, Lbtz;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v1, p6, p7}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a(II)V

    .line 1083
    :goto_2
    new-instance v1, Lbua;

    invoke-direct {v1, p0}, Lbua;-><init>(Lbtz;)V

    invoke-virtual {p0, v1}, Lbtz;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    invoke-virtual {p0}, Lbtz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-static {v1, v0}, Lbus;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1094
    invoke-virtual {p0, v1}, Lbtz;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1097
    new-instance v1, Leyd;

    iget-object v2, p0, Lbtz;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Leyd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lbtz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->kX:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1099
    invoke-virtual {v1, v2}, Leyd;->a(I)Leyd;

    move-result-object v3

    .line 1101
    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Leyd;->b(Ljava/lang/String;)V

    .line 1103
    new-instance v1, Lbit;

    const/4 v6, 0x0

    move v2, p2

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lbit;-><init>(ILeyd;Ljava/lang/String;Lbhv;Ljava/lang/Object;)V

    iput-object v1, p0, Lbtz;->g:Lbhs;

    .line 1112
    invoke-virtual {p0}, Lbtz;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Leit;

    invoke-static {v1, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leit;

    iget-object v2, p0, Lbtz;->g:Lbhs;

    iget-boolean v3, p0, Lbtz;->i:Z

    .line 1113
    invoke-virtual {v1, v2, v3}, Leit;->a(Lehx;Z)Z

    move-result v1

    .line 1115
    if-eqz v1, :cond_3

    .line 1117
    const/4 v1, 0x0

    iput-object v1, p0, Lbtz;->g:Lbhs;

    :goto_3
    return-void

    .line 1064
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1
    move-object p4, p5

    .line 1065
    goto/16 :goto_1

    .line 1080
    :cond_2
    iget-object v2, p0, Lbtz;->h:Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;

    invoke-virtual {v2, v1, v1}, Lcom/google/android/apps/hangouts/views/FixedAspectRatioImageView;->a(II)V

    goto :goto_2

    .line 1120
    :cond_3
    invoke-virtual {p0}, Lbtz;->e()V

    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lbtz;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtz;->a:Ljava/lang/String;

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    iput-object p1, p0, Lbtz;->a:Ljava/lang/String;

    .line 134
    :cond_1
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method
