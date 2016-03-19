.class public Lcom/google/android/libraries/componentview/components/base/ImageComponent;
.super Lcom/google/android/libraries/componentview/components/base/ViewComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/widget/ImageView;",
        ">",
        "Lcom/google/android/libraries/componentview/components/base/ViewComponent",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/String;

.field private f:[B

.field private g:Z

.field private final h:Lcom/google/android/libraries/componentview/services/internal/ImageLoader;


# virtual methods
.method c()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->f:[B

    if-eqz v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->h:Lcom/google/android/libraries/componentview/services/internal/ImageLoader;

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->f:[B

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Lcom/google/android/libraries/componentview/services/internal/ImageLoader;->a([BLandroid/widget/ImageView;)Llbb;

    move-result-object v0

    .line 163
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->g:Z

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->d:Llbl;

    invoke-virtual {v1, v0}, Llbl;->a(Llbb;)Z

    .line 167
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->h:Lcom/google/android/libraries/componentview/services/internal/ImageLoader;

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Lcom/google/android/libraries/componentview/services/internal/ImageLoader;->a(Ljava/lang/String;Landroid/widget/ImageView;)Llbb;

    move-result-object v0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/google/android/libraries/componentview/components/base/ViewComponent;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 1136
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->f:[B

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 173
    :goto_0
    if-eqz v0, :cond_3

    .line 180
    :cond_1
    :goto_1
    return-void

    .line 1136
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->g:Z

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/ImageComponent;->c()V

    goto :goto_1
.end method
