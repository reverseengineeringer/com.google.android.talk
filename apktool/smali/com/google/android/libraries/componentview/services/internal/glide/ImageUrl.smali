.class public Lcom/google/android/libraries/componentview/services/internal/glide/ImageUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Laot;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Laot;

    invoke-direct {v0, p1}, Laot;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/glide/ImageUrl;->a:Laot;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Laot;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/glide/ImageUrl;->a:Laot;

    return-object v0
.end method
