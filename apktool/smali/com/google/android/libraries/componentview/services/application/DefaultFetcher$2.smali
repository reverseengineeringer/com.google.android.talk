.class Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llap",
        "<",
        "Ljava/lang/Throwable;",
        "Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$2;->a:Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Llbb;
    .locals 1

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$2;->a(Ljava/lang/Throwable;)Llbb;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Throwable;)Llbb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Llbb",
            "<",
            "Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p1}, Llau;->a(Ljava/lang/Throwable;)Llbb;

    move-result-object v0

    return-object v0
.end method
