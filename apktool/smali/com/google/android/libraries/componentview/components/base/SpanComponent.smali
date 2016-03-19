.class public Lcom/google/android/libraries/componentview/components/base/SpanComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/core/ComponentInterface;


# instance fields
.field a:Lcom/google/android/libraries/componentview/components/base/api/nano/SpanProto$SpanArgs;

.field final b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

.field final c:Lcom/google/android/libraries/componentview/internal/NavigationHelper;


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/SpanComponent;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    return-object v0
.end method
