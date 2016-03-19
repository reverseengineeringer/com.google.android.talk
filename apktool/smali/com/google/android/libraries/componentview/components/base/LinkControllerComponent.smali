.class public Lcom/google/android/libraries/componentview/components/base/LinkControllerComponent;
.super Lcom/google/android/libraries/componentview/components/base/AbstractControllerComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/componentview/components/base/AbstractControllerComponent",
        "<",
        "Lcom/google/android/libraries/componentview/components/base/api/nano/LinkProto$LinkArgs;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/libraries/componentview/internal/NavigationHelper;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/LinkControllerComponent;->d:Lcom/google/android/libraries/componentview/internal/NavigationHelper;

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/LinkControllerComponent;->a:Llyi;

    check-cast v0, Lcom/google/android/libraries/componentview/components/base/api/nano/LinkProto$LinkArgs;

    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/base/api/nano/LinkProto$LinkArgs;->c:Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/LinkControllerComponent;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    iget-object v2, v2, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->a(Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;)V

    .line 76
    return-void
.end method
