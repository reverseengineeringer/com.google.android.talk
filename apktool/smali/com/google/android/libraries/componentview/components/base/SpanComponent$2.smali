.class Lcom/google/android/libraries/componentview/components/base/SpanComponent$2;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;

.field final synthetic b:Lcom/google/android/libraries/componentview/components/base/SpanComponent;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/SpanComponent$2;->b:Lcom/google/android/libraries/componentview/components/base/SpanComponent;

    .line 1042
    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/base/SpanComponent;->c:Lcom/google/android/libraries/componentview/internal/NavigationHelper;

    .line 306
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/SpanComponent$2;->a:Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/SpanComponent$2;->b:Lcom/google/android/libraries/componentview/components/base/SpanComponent;

    .line 2042
    iget-object v2, v2, Lcom/google/android/libraries/componentview/components/base/SpanComponent;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 306
    iget-object v2, v2, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->a(Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;)V

    .line 307
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 299
    return-void
.end method
