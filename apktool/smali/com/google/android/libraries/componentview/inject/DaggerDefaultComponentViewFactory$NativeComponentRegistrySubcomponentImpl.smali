.class final Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory$NativeComponentRegistrySubcomponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/inject/NativeComponentRegistrySubcomponent;


# instance fields
.field final synthetic a:Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory$NativeComponentRegistrySubcomponentImpl;->a:Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/componentview/internal/NativeComponentRegistry;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory$NativeComponentRegistrySubcomponentImpl;->a:Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory;

    .line 1123
    iget-object v0, v0, Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory;->a:Lkog;

    .line 833
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/componentview/internal/NativeComponentRegistry;

    return-object v0
.end method
