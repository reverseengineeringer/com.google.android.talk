.class public final Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/inject/DefaultComponentViewFactory;


# instance fields
.field a:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Lcom/google/android/libraries/componentview/inject/NativeComponentRegistrySubcomponent;
    .locals 1

    .prologue
    .line 610
    new-instance v0, Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory$NativeComponentRegistrySubcomponentImpl;

    .line 1827
    invoke-direct {v0, p0}, Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory$NativeComponentRegistrySubcomponentImpl;-><init>(Lcom/google/android/libraries/componentview/inject/DaggerDefaultComponentViewFactory;)V

    .line 610
    return-object v0
.end method
