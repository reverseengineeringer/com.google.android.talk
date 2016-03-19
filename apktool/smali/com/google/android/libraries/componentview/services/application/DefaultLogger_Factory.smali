.class public final Lcom/google/android/libraries/componentview/services/application/DefaultLogger_Factory;
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


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1018
    new-instance v1, Lcom/google/android/libraries/componentview/services/application/DefaultLogger;

    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/application/DefaultLogger_Factory;->a:Lkog;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/componentview/services/application/Fetcher;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/componentview/services/application/DefaultLogger;-><init>(Lcom/google/android/libraries/componentview/services/application/Fetcher;)V

    .line 7
    return-object v1
.end method
