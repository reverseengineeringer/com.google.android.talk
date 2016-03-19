.class public final Lchc;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0, v3, v3, v3, v3}, Lchc;->setPadding(IIII)V

    .line 34
    invoke-virtual {p0, v3}, Lchc;->setOrientation(I)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laal;->fV:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    sget v0, Laen;->da:I

    invoke-virtual {p0, v0}, Lchc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchc;->b:Landroid/widget/ImageView;

    .line 38
    sget v0, Laen;->dd:I

    invoke-virtual {p0, v0}, Lchc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lchc;->a:Landroid/view/View;

    .line 39
    sget v0, Laen;->dc:I

    invoke-virtual {p0, v0}, Lchc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchc;->c:Landroid/widget/TextView;

    .line 40
    sget v0, Laen;->db:I

    invoke-virtual {p0, v0}, Lchc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchc;->d:Landroid/widget/TextView;

    .line 41
    iput-boolean v3, p0, Lchc;->e:Z

    .line 42
    invoke-direct {p0}, Lchc;->a()V

    .line 43
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lchc;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 87
    iget-object v0, p0, Lchc;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 88
    iget-object v5, p0, Lchc;->c:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v5, p0, Lchc;->d:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v5, p0, Lchc;->a:Landroid/view/View;

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v5, p0, Lchc;->b:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lchc;->e:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    iget-boolean v0, p0, Lchc;->e:Z

    if-nez v0, :cond_4

    :goto_4
    invoke-virtual {p0, v1}, Lchc;->setVisibility(I)V

    .line 93
    return-void

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0

    :cond_1
    move v0, v2

    .line 89
    goto :goto_1

    :cond_2
    move v0, v2

    .line 90
    goto :goto_2

    :cond_3
    move v0, v1

    .line 91
    goto :goto_3

    :cond_4
    move v1, v2

    .line 92
    goto :goto_4
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 71
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lchc;->e:Z

    .line 72
    iget-object v0, p0, Lchc;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-direct {p0}, Lchc;->a()V

    .line 74
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lchc;->c:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-direct {p0}, Lchc;->a()V

    .line 53
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lchc;->d:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-direct {p0}, Lchc;->a()V

    .line 63
    return-void
.end method

.method public setClickable(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 79
    if-eqz p1, :cond_0

    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->aB:I

    :goto_0
    invoke-virtual {p0, v0}, Lchc;->setBackgroundResource(I)V

    .line 80
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lchc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->eg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v2, v0

    .line 81
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lchc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->eh:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 82
    :goto_2
    invoke-virtual {p0, v2, v0, v2, v0}, Lchc;->setPadding(IIII)V

    .line 83
    return-void

    .line 79
    :cond_0
    const v0, 0x106000d

    goto :goto_0

    :cond_1
    move v2, v1

    .line 80
    goto :goto_1

    :cond_2
    move v0, v1

    .line 81
    goto :goto_2
.end method
