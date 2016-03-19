.class public final Lfce;
.super Lfbe;
.source "SourceFile"


# instance fields
.field b:Lbdy;

.field private c:Landroid/text/SpannableStringBuilder;

.field private d:Lbfd;

.field private e:I

.field private f:Lcom/google/android/apps/hangouts/views/AvatarView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Z

.field private l:Landroid/view/ViewGroup;

.field private m:Lfct;

.field private n:Lfeg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbfd;)V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lfce;-><init>(Landroid/content/Context;Lbfd;Laxq;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbfd;Laxq;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lfce;-><init>(Landroid/content/Context;Lbfd;Laxq;Z)V

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lbfd;Laxq;Z)V
    .locals 6

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lfbe;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lfce;->c:Landroid/text/SpannableStringBuilder;

    .line 81
    iput-object p2, p0, Lfce;->d:Lbfd;

    .line 83
    if-eqz p3, :cond_0

    .line 84
    new-instance v0, Lfci;

    .line 1270
    invoke-direct {v0, p0, p3}, Lfci;-><init>(Lfce;Laxq;)V

    .line 87
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laal;->gz:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 89
    sget v0, Laen;->az:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/AvatarView;

    iput-object v0, p0, Lfce;->f:Lcom/google/android/apps/hangouts/views/AvatarView;

    .line 90
    iget-object v0, p0, Lfce;->f:Lcom/google/android/apps/hangouts/views/AvatarView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/AvatarView;->d()V

    .line 91
    sget v0, Laen;->aV:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfce;->g:Landroid/widget/ImageView;

    .line 92
    sget v0, Laen;->eq:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfce;->h:Landroid/widget/TextView;

    .line 93
    sget v0, Laen;->bA:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfce;->i:Landroid/widget/TextView;

    .line 94
    sget v0, Laen;->dh:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfce;->j:Landroid/widget/ImageView;

    .line 96
    const-class v0, Lepk;

    invoke-static {p1, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepk;

    .line 98
    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lfeg;

    iget-object v1, p0, Lfce;->i:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lfeg;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lfce;->n:Lfeg;

    .line 108
    :goto_0
    sget v0, Laen;->dM:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfce;->l:Landroid/view/ViewGroup;

    .line 109
    const-class v0, Lfeu;

    invoke-static {p1, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeu;

    .line 110
    if-eqz v0, :cond_3

    .line 111
    iget-object v1, p0, Lfce;->l:Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {p2}, Lbfd;->g()I

    move-result v2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 112
    invoke-interface {v0, v1, v2, v3}, Lfeu;->a(Landroid/view/ViewGroup;ILandroid/view/LayoutInflater;)Lfct;

    move-result-object v0

    iput-object v0, p0, Lfce;->m:Lfct;

    .line 117
    :goto_1
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Lfce;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v1

    .line 102
    const-class v2, Lino;

    invoke-virtual {v1, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liog;

    .line 103
    if-eqz p4, :cond_2

    move-object v2, p0

    .line 105
    :goto_2
    invoke-virtual {p2}, Lbfd;->g()I

    move-result v4

    iget-object v5, p0, Lfce;->i:Landroid/widget/TextView;

    invoke-interface {v0, v1, v4, v5, v2}, Lepk;->a(Liog;ILandroid/widget/TextView;Landroid/view/View;)Lfeg;

    move-result-object v0

    iput-object v0, p0, Lfce;->n:Lfeg;

    goto :goto_0

    .line 103
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 115
    :cond_3
    iget-object v0, p0, Lfce;->l:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()Lbdy;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lfce;->b:Lbdy;

    return-object v0
.end method

.method public a(Lbdy;Ljava/lang/String;ZI)V
    .locals 4

    .prologue
    .line 129
    iput-object p1, p0, Lfce;->b:Lbdy;

    .line 130
    iput p4, p0, Lfce;->e:I

    .line 131
    invoke-virtual {p1}, Lbdy;->e()Ljava/lang/String;

    move-result-object v1

    .line 133
    iput-boolean p3, p0, Lfce;->k:Z

    .line 134
    invoke-virtual {p1}, Lbdy;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lfce;->j:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lfce;->n:Lfeg;

    invoke-virtual {p1}, Lbdy;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbdy;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lfeg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lfce;->m:Lfct;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lfce;->m:Lfct;

    invoke-virtual {p1}, Lbdy;->n()Z

    move-result v2

    invoke-interface {v0, v2}, Lfct;->a(Z)V

    .line 139
    iget-object v0, p0, Lfce;->m:Lfct;

    invoke-virtual {p1}, Lbdy;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lfct;->a(Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    iget-object v0, p0, Lfce;->f:Lcom/google/android/apps/hangouts/views/AvatarView;

    invoke-virtual {p1}, Lbdy;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfce;->d:Lbfd;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Ljava/lang/String;Ljava/lang/String;Lbfd;)V

    .line 152
    if-eqz p3, :cond_1

    .line 153
    iget-object v0, p0, Lfce;->g:Landroid/widget/ImageView;

    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->bY:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    iget-object v0, p0, Lfce;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lfce;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->ao:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 156
    :cond_1
    if-eqz p2, :cond_2

    .line 157
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 160
    :cond_2
    iget-object v0, p0, Lfce;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lfce;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0, v1, v2, p2}, Lfce;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 161
    return-void

    .line 2164
    :cond_3
    invoke-virtual {p1}, Lbdy;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2165
    invoke-virtual {p1}, Lbdy;->a()Lbee;

    move-result-object v0

    invoke-virtual {v0}, Lbee;->c()Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 144
    iget-object v2, p0, Lfce;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2168
    :cond_5
    invoke-virtual {p1}, Lbdy;->c()Ljava/lang/String;

    move-result-object v0

    .line 2169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2173
    const/4 v0, 0x0

    goto :goto_1

    .line 146
    :cond_6
    iget-object v0, p0, Lfce;->i:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lfch;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 190
    if-eqz p1, :cond_0

    .line 191
    new-instance v1, Lfcf;

    invoke-direct {v1, p0, p1}, Lfcf;-><init>(Lfce;Lfch;)V

    .line 199
    new-instance v0, Lfcg;

    invoke-direct {v0, p0, p1}, Lfcg;-><init>(Lfce;Lfch;)V

    .line 209
    :goto_0
    iget-object v2, p0, Lfce;->f:Lcom/google/android/apps/hangouts/views/AvatarView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/hangouts/views/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {p0, v0}, Lfce;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 211
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    .line 243
    sget v0, Laen;->aV:I

    invoke-virtual {p0, v0}, Lfce;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 245
    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 246
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lfce;->isChecked()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 249
    :cond_0
    invoke-virtual {p0, v1, p1}, Lfce;->a(Landroid/view/View;Z)V

    .line 250
    return-void
.end method

.method public a(ZZ)V
    .locals 3

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Lfbe;->a(ZZ)V

    .line 180
    iget-boolean v0, p0, Lfce;->k:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v1, p0, Lfce;->g:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p0}, Lfce;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->an:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 181
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    return-void

    .line 182
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lfce;->e:I

    return v0
.end method

.method public k()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 254
    invoke-super {p0}, Lfbe;->k()V

    .line 256
    iget-object v0, p0, Lfce;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lfce;->n:Lfeg;

    invoke-virtual {v0}, Lfeg;->a()V

    .line 259
    iget-object v0, p0, Lfce;->g:Landroid/widget/ImageView;

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->bN:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    iget-object v0, p0, Lfce;->m:Lfct;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lfce;->m:Lfct;

    invoke-interface {v0, v2}, Lfct;->a(Z)V

    .line 263
    iget-object v0, p0, Lfce;->m:Lfct;

    invoke-interface {v0, v3}, Lfct;->a(Ljava/lang/String;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lfce;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lfce;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0, p1}, Lfbe;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 216
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 221
    iget-object v1, p0, Lfce;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfce;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lfce;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lezc;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 224
    :cond_0
    iget-object v1, p0, Lfce;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfce;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    iget-object v1, p0, Lfce;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lezc;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 228
    :cond_1
    iget-object v1, p0, Lfce;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfce;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    iget-object v1, p0, Lfce;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lezc;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 232
    :cond_2
    iget-object v1, p0, Lfce;->l:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lfce;->l:Landroid/view/ViewGroup;

    .line 233
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 234
    iget-object v1, p0, Lfce;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lezc;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 236
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 239
    :cond_4
    return-void
.end method
