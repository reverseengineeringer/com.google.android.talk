.class final Lfaf;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lfac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfae;


# direct methods
.method public constructor <init>(Lfae;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lfac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lfaf;->a:Lfae;

    .line 98
    sget v0, Laen;->jU:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 105
    if-nez p2, :cond_0

    .line 106
    invoke-virtual {p0}, Lfaf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laen;->jU:I

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 107
    sget v0, Lfii;->r:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    sget v0, Lfii;->q:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 109
    sget v0, Lfii;->o:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/hangouts/views/AvatarView;

    .line 110
    sget v0, Lfii;->p:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 111
    new-instance v0, Lfag;

    move-object v1, p0

    .line 1082
    invoke-direct/range {v0 .. v5}, Lfag;-><init>(Lfaf;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/apps/hangouts/views/AvatarView;Landroid/widget/ImageView;)V

    .line 112
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 118
    :goto_0
    invoke-virtual {p0, p1}, Lfaf;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfac;

    .line 121
    iget-object v2, v1, Lfag;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lfac;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, v0, Lfac;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    iget-object v2, v1, Lfag;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lfac;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, v1, Lfag;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_1
    iget-boolean v2, v0, Lfac;->d:Z

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, v1, Lfag;->c:Lcom/google/android/apps/hangouts/views/AvatarView;

    iget-object v3, v0, Lfac;->c:Ljava/lang/String;

    iget-object v4, v0, Lfac;->a:Ljava/lang/String;

    iget-object v0, p0, Lfaf;->a:Lfae;

    .line 2033
    iget-object v0, v0, Lfae;->an:Lilh;

    .line 134
    const-class v5, Lhpu;

    invoke-virtual {v0, v5}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 133
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Ljava/lang/String;Ljava/lang/String;Lbfd;)V

    .line 135
    iget-object v0, v1, Lfag;->c:Lcom/google/android/apps/hangouts/views/AvatarView;

    invoke-virtual {v0, v7}, Lcom/google/android/apps/hangouts/views/AvatarView;->setVisibility(I)V

    .line 136
    iget-object v0, v1, Lfag;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :goto_2
    return-object p2

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfag;

    move-object v1, v0

    goto :goto_0

    .line 128
    :cond_1
    iget-object v2, v1, Lfag;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 137
    :cond_2
    iget v2, v0, Lfac;->e:I

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lfaf;->a:Lfae;

    invoke-virtual {v2}, Lfae;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Lfac;->e:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    iget-object v2, p0, Lfaf;->a:Lfae;

    invoke-virtual {v2}, Lfae;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->rY:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 140
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 142
    iget-object v2, v1, Lfag;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v0, v1, Lfag;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, v1, Lfag;->c:Lcom/google/android/apps/hangouts/views/AvatarView;

    invoke-virtual {v0, v6}, Lcom/google/android/apps/hangouts/views/AvatarView;->setVisibility(I)V

    goto :goto_2

    .line 146
    :cond_3
    iget-object v0, v1, Lfag;->c:Lcom/google/android/apps/hangouts/views/AvatarView;

    invoke-virtual {v0, v6}, Lcom/google/android/apps/hangouts/views/AvatarView;->setVisibility(I)V

    .line 147
    iget-object v0, v1, Lfag;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
