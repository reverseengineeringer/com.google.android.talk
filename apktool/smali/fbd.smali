.class public final Lfbd;
.super Lfbe;
.source "SourceFile"


# static fields
.field private static final b:Z


# instance fields
.field private final c:Landroid/widget/LinearLayout;

.field private final d:I

.field private final e:Landroid/widget/TextView;

.field private final f:Lcom/google/android/apps/hangouts/views/AvatarView;

.field private final g:Landroid/view/View;

.field private final h:Lcom/google/android/apps/hangouts/views/ContactDetailItemView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;

.field private final k:Lbfd;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:I

.field private t:Lbzq;

.field private u:Lbzi;

.field private v:Ljava/lang/String;

.field private final w:Landroid/text/SpannableStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lezi;->u:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lfbd;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbfd;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lfbd;-><init>(Landroid/content/Context;Lbfd;B)V

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lbfd;B)V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfbe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lfbd;->w:Landroid/text/SpannableStringBuilder;

    .line 82
    iput-object p2, p0, Lfbd;->k:Lbfd;

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laal;->fa:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 85
    sget v0, Laen;->dY:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfbd;->c:Landroid/widget/LinearLayout;

    .line 86
    iget-object v0, p0, Lfbd;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lfbd;->d:I

    .line 87
    sget v0, Laen;->eq:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfbd;->e:Landroid/widget/TextView;

    .line 88
    sget v0, Laen;->az:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/AvatarView;

    iput-object v0, p0, Lfbd;->f:Lcom/google/android/apps/hangouts/views/AvatarView;

    .line 89
    sget v0, Laen;->aE:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfbd;->g:Landroid/view/View;

    .line 91
    sget v0, Laen;->ba:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/ContactDetailItemView;

    iput-object v0, p0, Lfbd;->h:Lcom/google/android/apps/hangouts/views/ContactDetailItemView;

    .line 92
    sget v0, Laen;->gL:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfbd;->i:Landroid/widget/TextView;

    .line 93
    sget v0, Laen;->fh:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfbd;->j:Landroid/widget/TextView;

    .line 94
    return-void
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lfbd;->s:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lbzq;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lfbd;->t:Lbzq;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lfbd;->v:Ljava/lang/String;

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfbd;->v:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILbzq;Lbzi;I)V
    .locals 10

    .prologue
    .line 140
    iput-object p1, p0, Lfbd;->l:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lfbd;->m:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lfbd;->n:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lfbd;->o:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p7

    iput-object v0, p0, Lfbd;->t:Lbzq;

    .line 145
    iput p5, p0, Lfbd;->q:I

    .line 146
    move/from16 v0, p6

    iput v0, p0, Lfbd;->r:I

    .line 147
    const/4 v2, 0x0

    iput-object v2, p0, Lfbd;->p:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p8

    iput-object v0, p0, Lfbd;->u:Lbzi;

    .line 149
    move/from16 v0, p9

    iput v0, p0, Lfbd;->s:I

    .line 1176
    sget-boolean v2, Lfbd;->b:Z

    if-eqz v2, :cond_0

    .line 1177
    const-string v2, "Redrawing call contact item: mName="

    iget-object v3, p0, Lfbd;->m:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1180
    :cond_0
    :goto_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lfbd;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1181
    iget-object v2, p0, Lfbd;->e:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1182
    iget-object v2, p0, Lfbd;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lfbd;->m:Ljava/lang/String;

    iget-object v4, p0, Lfbd;->w:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lfbd;->v:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4, v5}, Lfbd;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 1187
    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lfbd;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1190
    iget-object v2, p0, Lfbd;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lfbd;->c:Landroid/widget/LinearLayout;

    .line 1191
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lfbd;->d:I

    iget-object v5, p0, Lfbd;->c:Landroid/widget/LinearLayout;

    .line 1193
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lfbd;->c:Landroid/widget/LinearLayout;

    .line 1194
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    .line 1190
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1195
    iget-object v2, p0, Lfbd;->f:Lcom/google/android/apps/hangouts/views/AvatarView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/hangouts/views/AvatarView;->setVisibility(I)V

    .line 1196
    iget-object v2, p0, Lfbd;->f:Lcom/google/android/apps/hangouts/views/AvatarView;

    iget-object v3, p0, Lfbd;->o:Ljava/lang/String;

    iget-object v4, p0, Lfbd;->m:Ljava/lang/String;

    iget-object v5, p0, Lfbd;->k:Lbfd;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Ljava/lang/String;Ljava/lang/String;Lbfd;)V

    .line 1197
    iget-object v3, p0, Lfbd;->f:Lcom/google/android/apps/hangouts/views/AvatarView;

    iget v2, p0, Lfbd;->q:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 1198
    const/4 v2, 0x3

    .line 1197
    :goto_2
    invoke-virtual {v3, v2}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(I)V

    .line 1199
    iget-object v2, p0, Lfbd;->g:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    :goto_3
    const/4 v2, 0x0

    .line 1217
    iget v3, p0, Lfbd;->q:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lfbd;->p:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1220
    new-instance v2, Lbzr;

    iget-object v3, p0, Lfbd;->p:Ljava/lang/String;

    invoke-direct {v2, v3}, Lbzr;-><init>(Ljava/lang/String;)V

    .line 1243
    :cond_1
    :goto_4
    iget-object v3, p0, Lfbd;->h:Lcom/google/android/apps/hangouts/views/ContactDetailItemView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/google/android/apps/hangouts/views/ContactDetailItemView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    if-eqz v2, :cond_2

    .line 1245
    iget-object v3, p0, Lfbd;->h:Lcom/google/android/apps/hangouts/views/ContactDetailItemView;

    iget-object v4, p0, Lfbd;->v:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/apps/hangouts/views/ContactDetailItemView;->a(Lbzs;Ljava/lang/String;)V

    .line 1248
    :cond_2
    iget-object v2, p0, Lfbd;->j:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1249
    iget-object v2, p0, Lfbd;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1250
    iget-object v2, p0, Lfbd;->u:Lbzi;

    if-eqz v2, :cond_b

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lfbd;->a(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1251
    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->aD:I

    .line 1254
    iget-object v3, p0, Lfbd;->u:Lbzi;

    invoke-virtual {v3}, Lbzi;->c()J

    move-result-wide v4

    .line 1255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1256
    const/4 v3, 0x0

    invoke-static {v4, v5, v6, v7, v3}, Laal;->b(JJZ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1257
    const/4 v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Laal;->b(JJZ)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1259
    iget-object v5, p0, Lfbd;->u:Lbzi;

    invoke-virtual {v5}, Lbzi;->d()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1279
    const-string v4, "Babel"

    const-string v5, "unsupported call type!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1283
    :goto_5
    iget-object v4, p0, Lfbd;->i:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1284
    iget-object v4, p0, Lfbd;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v3, p0, Lfbd;->i:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1286
    iget-object v2, p0, Lfbd;->u:Lbzi;

    invoke-virtual {v2}, Lbzi;->f()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lfbd;->u:Lbzi;

    invoke-virtual {v2}, Lbzi;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1287
    iget-object v2, p0, Lfbd;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfbd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->bv:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lfbd;->u:Lbzi;

    invoke-virtual {v7}, Lbzi;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    iget-object v2, p0, Lfbd;->j:Landroid/widget/TextView;

    .line 1289
    invoke-virtual {p0}, Lfbd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->bw:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lfbd;->u:Lbzi;

    .line 1290
    invoke-virtual {v7}, Lbzi;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1288
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1298
    :cond_3
    :goto_6
    invoke-virtual {p0}, Lfbd;->invalidate()V

    .line 152
    return-void

    .line 1177
    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1184
    :cond_5
    iget-object v2, p0, Lfbd;->e:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1198
    :cond_6
    const/4 v2, 0x2

    goto/16 :goto_2

    .line 1205
    :cond_7
    iget-object v2, p0, Lfbd;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lfbd;->c:Landroid/widget/LinearLayout;

    .line 1206
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lfbd;->c:Landroid/widget/LinearLayout;

    .line 1208
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lfbd;->c:Landroid/widget/LinearLayout;

    .line 1209
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    .line 1205
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1210
    iget-object v2, p0, Lfbd;->g:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    iget-object v2, p0, Lfbd;->f:Lcom/google/android/apps/hangouts/views/AvatarView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/apps/hangouts/views/AvatarView;->setVisibility(I)V

    .line 1212
    iget-object v2, p0, Lfbd;->f:Lcom/google/android/apps/hangouts/views/AvatarView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Ljava/lang/String;Ljava/lang/String;Lbfd;)V

    goto/16 :goto_3

    .line 1221
    :cond_8
    iget-object v3, p0, Lfbd;->t:Lbzq;

    if-eqz v3, :cond_1

    .line 1222
    iget-object v3, p0, Lfbd;->t:Lbzq;

    invoke-virtual {v3}, Lbzq;->e()Lbzv;

    move-result-object v3

    .line 1223
    if-eqz v3, :cond_a

    .line 1224
    invoke-virtual {p0}, Lfbd;->i()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1229
    iget-object v3, v3, Lbzv;->a:Ljava/lang/String;

    invoke-static {v3}, Lezm;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1230
    invoke-static {v3}, Lezm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1231
    if-eqz v3, :cond_1

    .line 1232
    new-instance v4, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    new-instance v2, Lbzr;

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbzr;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    move-object v2, v3

    .line 1236
    goto/16 :goto_4

    .line 1239
    :cond_a
    const-string v3, "Babel"

    iget-object v4, p0, Lfbd;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2d

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Call contact item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t have phone number!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1261
    :pswitch_0
    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->aD:I

    .line 1262
    iget-object v5, p0, Lfbd;->i:Landroid/widget/TextView;

    .line 1263
    invoke-virtual {p0}, Lfbd;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/apps/hangouts/hangout/StressMode;->bm:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1262
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1267
    :pswitch_1
    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->aF:I

    .line 1268
    iget-object v5, p0, Lfbd;->i:Landroid/widget/TextView;

    .line 1269
    invoke-virtual {p0}, Lfbd;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/apps/hangouts/hangout/StressMode;->bo:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1268
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1273
    :pswitch_2
    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->aE:I

    .line 1274
    iget-object v5, p0, Lfbd;->i:Landroid/widget/TextView;

    .line 1275
    invoke-virtual {p0}, Lfbd;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/apps/hangouts/hangout/StressMode;->bn:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1274
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1293
    :cond_b
    iget-object v2, p0, Lfbd;->i:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1294
    iget-object v2, p0, Lfbd;->i:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    iget-object v2, p0, Lfbd;->i:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_6

    .line 1259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()Lbzi;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lfbd;->u:Lbzi;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lfbd;->l:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lfbd;->u:Lbzi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfbd;->u:Lbzi;

    invoke-virtual {v0}, Lbzi;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lfbd;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfbd;->m:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lfbd;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lfbd;->o:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lfbd;->q:I

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lfbd;->r:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x10

    .line 172
    invoke-direct {p0, v0}, Lfbd;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
