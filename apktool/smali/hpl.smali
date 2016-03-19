.class public final Lhpl;
.super Lhpi;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    sget v0, Laal;->tn:I

    invoke-direct {p0, p1, v0}, Lhpi;-><init>(Landroid/content/Context;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/View;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lhpl;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpk;

    .line 63
    instance-of v1, v0, Lhpn;

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Lhpm;

    invoke-direct {v0, p2}, Lhpm;-><init>(Landroid/view/View;)V

    .line 66
    :goto_0
    return-object v0

    .line 65
    :cond_0
    instance-of v1, v0, Lhpo;

    if-eqz v1, :cond_1

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported item: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lhpl;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpk;

    .line 34
    instance-of v1, v0, Lhpn;

    if-eqz v1, :cond_4

    .line 35
    check-cast v0, Lhpn;

    .line 36
    check-cast p2, Lhpm;

    .line 1072
    iget-object v1, p2, Lhpm;->a:Landroid/widget/TextView;

    .line 37
    invoke-virtual {v0}, Lhpn;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2072
    iget-object v2, p2, Lhpm;->a:Landroid/widget/TextView;

    .line 38
    invoke-virtual {v0}, Lhpn;->e()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 39
    invoke-virtual {p0}, Lhpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laal;->tj:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 38
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 41
    invoke-virtual {v0}, Lhpn;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3072
    iget-object v1, p2, Lhpm;->b:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    :goto_1
    invoke-virtual {v0}, Lhpn;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    .line 6072
    iget-object v0, p2, Lhpm;->c:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :cond_0
    :goto_2
    return-void

    .line 40
    :cond_1
    invoke-virtual {v0}, Lhpn;->e()Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    .line 4072
    :cond_2
    iget-object v1, p2, Lhpm;->b:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {v0}, Lhpn;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5072
    iget-object v1, p2, Lhpm;->b:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 7072
    :cond_3
    iget-object v1, p2, Lhpm;->c:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {v0}, Lhpn;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8072
    iget-object v0, p2, Lhpm;->c:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 53
    :cond_4
    instance-of v1, v0, Lhpo;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported item: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lhpl;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lhpn;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    return v0
.end method
