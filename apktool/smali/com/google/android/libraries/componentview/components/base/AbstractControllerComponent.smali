.class public Lcom/google/android/libraries/componentview/components/base/AbstractControllerComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/core/WrapperComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Llyi;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/componentview/core/WrapperComponent;"
    }
.end annotation


# instance fields
.field public final a:Llyi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

.field public c:Lcom/google/android/libraries/componentview/core/ComponentInterface;


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/AbstractControllerComponent;->c:Lcom/google/android/libraries/componentview/core/ComponentInterface;

    invoke-interface {v0}, Lcom/google/android/libraries/componentview/core/ComponentInterface;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/AbstractControllerComponent;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    return-object v0
.end method

.method public c()Lcom/google/android/libraries/componentview/core/ComponentInterface;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/AbstractControllerComponent;->c:Lcom/google/android/libraries/componentview/core/ComponentInterface;

    return-object v0
.end method
