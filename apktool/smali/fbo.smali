.class public final Lfbo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lbhv;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/views/EasterEggView;

.field private b:Lbhs;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/animation/Animation;

.field private e:Lfcd;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/EasterEggView;Leyd;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    iput-object p1, p0, Lfbo;->a:Lcom/google/android/apps/hangouts/views/EasterEggView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lbhs;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p0, v1, v2}, Lbhs;-><init>(Leyd;Lbhv;ZLjava/lang/Object;)V

    iput-object v0, p0, Lfbo;->b:Lbhs;

    .line 116
    iput-object v2, p0, Lfbo;->c:Landroid/widget/ImageView;

    .line 117
    invoke-virtual {p1}, Lcom/google/android/apps/hangouts/views/EasterEggView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lfbo;->d:Landroid/view/animation/Animation;

    .line 118
    iget-object v0, p0, Lfbo;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 119
    invoke-virtual {p1}, Lcom/google/android/apps/hangouts/views/EasterEggView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Leit;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    iget-object v1, p0, Lfbo;->b:Lbhs;

    invoke-virtual {v0, v1}, Leit;->c(Lehx;)V

    .line 120
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lfbo;->b:Lbhs;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lfbo;->b:Lbhs;

    invoke-virtual {v0}, Lbhs;->b()V

    .line 157
    iput-object v2, p0, Lfbo;->b:Lbhs;

    .line 160
    :cond_0
    iget-object v0, p0, Lfbo;->d:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lfbo;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 162
    iput-object v2, p0, Lfbo;->d:Landroid/view/animation/Animation;

    .line 165
    :cond_1
    iget-object v0, p0, Lfbo;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lfbo;->a:Lcom/google/android/apps/hangouts/views/EasterEggView;

    iget-object v1, p0, Lfbo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/EasterEggView;->removeView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lfbo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 168
    iget-object v0, p0, Lfbo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v0, p0, Lfbo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    iput-object v2, p0, Lfbo;->c:Landroid/widget/ImageView;

    .line 173
    :cond_2
    iget-object v0, p0, Lfbo;->e:Lfcd;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lfbo;->e:Lfcd;

    invoke-virtual {v0}, Lfcd;->c()V

    .line 175
    iput-object v2, p0, Lfbo;->e:Lfcd;

    .line 177
    :cond_3
    return-void
.end method

.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lfbo;->b:Lbhs;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lfbo;->b:Lbhs;

    .line 134
    if-nez p3, :cond_0

    .line 135
    const-string v0, "Babel"

    const-string v1, "Failed to download easter egg image."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lfbo;->a:Lcom/google/android/apps/hangouts/views/EasterEggView;

    .line 1039
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/EasterEggView;->h:Ljava/util/List;

    .line 136
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1198
    :cond_0
    const-string v0, "Expected non-null"

    invoke-static {v0, p2}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lfbo;->a:Lcom/google/android/apps/hangouts/views/EasterEggView;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/EasterEggView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfbo;->c:Landroid/widget/ImageView;

    .line 145
    iget-object v0, p0, Lfbo;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 146
    new-instance v0, Lfcd;

    invoke-direct {v0, p2}, Lfcd;-><init>(Lexs;)V

    iput-object v0, p0, Lfbo;->e:Lfcd;

    .line 147
    iget-object v0, p0, Lfbo;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lfbo;->e:Lfcd;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lfbo;->e:Lfcd;

    invoke-virtual {v0}, Lfcd;->a()V

    .line 149
    iget-object v0, p0, Lfbo;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lfbo;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    iget-object v0, p0, Lfbo;->a:Lcom/google/android/apps/hangouts/views/EasterEggView;

    iget-object v1, p0, Lfbo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/EasterEggView;->addView(Landroid/view/View;)V

    .line 152
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lfbo;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lfbo;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lfbo;->a:Lcom/google/android/apps/hangouts/views/EasterEggView;

    new-instance v1, Lfbp;

    invoke-direct {v1, p0, p0}, Lfbp;-><init>(Lfbo;Lfbo;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/EasterEggView;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method
