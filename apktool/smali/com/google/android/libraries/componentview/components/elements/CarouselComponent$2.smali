.class Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/components/elements/views/CarouselView$OnScrollCallback;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

.field final synthetic c:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$2;->c:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 1034
    iput p1, v0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->k:I

    .line 120
    iget-boolean v0, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$2;->a:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$2;->c:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 2034
    iget-boolean v0, v0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->j:Z

    .line 122
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$2;->c:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 3034
    iget v0, v0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->i:I

    .line 123
    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$2;->c:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 4034
    iget-object v1, v1, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->a:Landroid/content/Context;

    .line 4093
    invoke-static {v1}, Lcom/google/android/libraries/componentview/core/Utils;->a(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 124
    if-le v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$2;->c:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 5034
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->j:Z

    .line 126
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$2;->c:Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;

    .line 6034
    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent;->e:Lcom/google/android/libraries/componentview/services/application/Logger;

    .line 126
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$2;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    .line 127
    invoke-virtual {v1}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponent$2;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    .line 129
    invoke-virtual {v3}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->g()Ljava/lang/String;

    move-result-object v3

    .line 7042
    sget-object v4, Lkxm;->b:Lkxm;

    .line 126
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/componentview/services/application/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    :cond_0
    return-void
.end method
