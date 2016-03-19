.class public Lcom/google/android/libraries/componentview/components/base/ViewComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/google/android/libraries/componentview/core/ComponentInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "Lcom/google/android/libraries/componentview/core/ComponentInterface;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

.field public c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public d:Llbl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llbl",
            "<",
            "Lcom/google/android/libraries/componentview/api/external/Readyable$ReadyInfo;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/ViewComponent;->c:Landroid/view/View;

    return-object v0
.end method

.method public final b()Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/ViewComponent;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;->b:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method
