.class Lcom/google/android/libraries/componentview/components/base/SpanComponent$1;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/libraries/componentview/components/base/SpanComponent;


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/high16 v8, 0x437f0000    # 255.0f

    .line 110
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/SpanComponent$1;->b:Lcom/google/android/libraries/componentview/components/base/SpanComponent;

    .line 1042
    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/base/SpanComponent;->a:Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;

    .line 110
    if-eqz v0, :cond_7

    .line 111
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/SpanComponent$1;->b:Lcom/google/android/libraries/componentview/components/base/SpanComponent;

    .line 2042
    iget-object v3, v0, Lcom/google/android/libraries/componentview/components/base/SpanComponent;->a:Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;

    .line 111
    iget-object v4, p0, Lcom/google/android/libraries/componentview/components/base/SpanComponent$1;->a:Landroid/content/Context;

    .line 3222
    iget-object v0, v3, Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Color;

    if-eqz v0, :cond_0

    .line 3223
    iget-object v0, v3, Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;->b:Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Color;

    .line 4188
    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Color;->g()F

    move-result v5

    mul-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 4189
    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Color;->d()F

    move-result v6

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 4190
    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Color;->e()F

    move-result v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 4191
    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Color;->f()F

    move-result v0

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4187
    invoke-static {v5, v6, v7, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 3223
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 3226
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3227
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 3230
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 3233
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;->e()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3234
    or-int/lit8 v0, v0, 0x2

    .line 3236
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;->g()Ljava/lang/String;

    move-result-object v5

    .line 5119
    if-eqz v5, :cond_3

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v2, v1

    .line 3236
    :cond_4
    if-nez v2, :cond_8

    .line 3237
    invoke-virtual {v3}, Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3242
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;->h()F

    move-result v0

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_6

    .line 3243
    invoke-virtual {v3}, Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;->h()F

    move-result v0

    .line 7079
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 6100
    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3243
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3246
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;->i()F

    move-result v0

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_7

    .line 3247
    invoke-virtual {v3}, Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;->i()F

    move-result v0

    .line 7093
    invoke-static {v4}, Lcom/google/android/libraries/componentview/core/Utils;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3247
    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 113
    :cond_7
    return-void

    .line 3238
    :cond_8
    if-eqz v0, :cond_5

    .line 3239
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_0
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/componentview/components/base/SpanComponent$1;->updateDrawState(Landroid/text/TextPaint;)V

    .line 118
    return-void
.end method
