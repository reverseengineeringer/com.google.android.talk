.class public final Lcom/google/android/libraries/componentview/components/base/ImageButtonComponentFactory_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkog;"
    }
.end annotation


# instance fields
.field private final a:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final c:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1033
    new-instance v0, Lcom/google/android/libraries/componentview/components/base/ImageButtonComponentFactory;

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/ImageButtonComponentFactory_Factory;->a:Lkog;

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/ImageButtonComponentFactory_Factory;->b:Lkog;

    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/base/ImageButtonComponentFactory_Factory;->c:Lkog;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/componentview/components/base/ImageButtonComponentFactory;-><init>(Lkog;Lkog;Lkog;)V

    .line 10
    return-object v0
.end method
