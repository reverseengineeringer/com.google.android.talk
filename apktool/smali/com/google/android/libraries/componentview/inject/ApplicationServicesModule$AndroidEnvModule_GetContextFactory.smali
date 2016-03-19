.class public final Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$AndroidEnvModule_GetContextFactory;
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
.field private final a:Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$AndroidEnvModule;


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$AndroidEnvModule_GetContextFactory;->a:Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$AndroidEnvModule;

    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$AndroidEnvModule;->a()Landroid/content/Context;

    move-result-object v0

    .line 1021
    if-nez v0, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    return-object v0
.end method
