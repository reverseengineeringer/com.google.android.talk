.class public Lcom/google/android/libraries/componentview/components/base/LayoutParamsComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/core/WrapperComponent;


# instance fields
.field public a:Lcom/google/android/libraries/componentview/core/ComponentInterface;

.field private final b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/LayoutParamsComponent;->a:Lcom/google/android/libraries/componentview/core/ComponentInterface;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/LayoutParamsComponent;->a:Lcom/google/android/libraries/componentview/core/ComponentInterface;

    invoke-interface {v0}, Lcom/google/android/libraries/componentview/core/ComponentInterface;->a()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/LayoutParamsComponent;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    return-object v0
.end method

.method public c()Lcom/google/android/libraries/componentview/core/ComponentInterface;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/LayoutParamsComponent;->a:Lcom/google/android/libraries/componentview/core/ComponentInterface;

    return-object v0
.end method
