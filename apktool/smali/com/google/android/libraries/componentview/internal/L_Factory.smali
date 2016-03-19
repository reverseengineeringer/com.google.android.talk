.class public final Lcom/google/android/libraries/componentview/internal/L_Factory;
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
    .line 1032
    new-instance v3, Lcom/google/android/libraries/componentview/internal/L;

    iget-object v0, p0, Lcom/google/android/libraries/componentview/internal/L_Factory;->a:Lkog;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/componentview/services/application/BuildInfo;

    iget-object v1, p0, Lcom/google/android/libraries/componentview/internal/L_Factory;->b:Lkog;

    invoke-interface {v1}, Lkog;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/componentview/services/application/Logger;

    iget-object v2, p0, Lcom/google/android/libraries/componentview/internal/L_Factory;->c:Lkog;

    invoke-interface {v2}, Lkog;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/libraries/componentview/internal/L;-><init>(Lcom/google/android/libraries/componentview/services/application/BuildInfo;Lcom/google/android/libraries/componentview/services/application/Logger;Landroid/content/Context;)V

    .line 10
    return-object v3
.end method
