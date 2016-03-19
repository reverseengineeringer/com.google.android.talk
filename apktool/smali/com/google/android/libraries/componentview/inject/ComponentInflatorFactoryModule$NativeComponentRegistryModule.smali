.class public Lcom/google/android/libraries/componentview/inject/ComponentInflatorFactoryModule$NativeComponentRegistryModule;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Lcom/google/android/libraries/componentview/inject/ComponentInflatorFactory;)Lcom/google/android/libraries/componentview/internal/NativeComponentRegistry;
    .locals 1
    .annotation build Lcom/google/android/libraries/componentview/inject/annotations/CardScope;
    .end annotation

    .prologue
    .line 40
    invoke-interface {p1}, Lcom/google/android/libraries/componentview/inject/ComponentInflatorFactory;->a()Lcom/google/android/libraries/componentview/inject/NativeComponentRegistrySubcomponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/componentview/inject/NativeComponentRegistrySubcomponent;->a()Lcom/google/android/libraries/componentview/internal/NativeComponentRegistry;

    move-result-object v0

    return-object v0
.end method
