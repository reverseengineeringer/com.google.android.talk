.class public Lcom/google/android/libraries/componentview/internal/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/libraries/componentview/services/application/Logger;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/componentview/services/application/BuildInfo;Lcom/google/android/libraries/componentview/services/application/Logger;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "null"

    iput-object v0, p0, Lcom/google/android/libraries/componentview/internal/L;->b:Ljava/lang/String;

    .line 65
    invoke-interface {p1}, Lcom/google/android/libraries/componentview/services/application/BuildInfo;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/internal/L;->a:Z

    .line 66
    iput-object p2, p0, Lcom/google/android/libraries/componentview/internal/L;->c:Lcom/google/android/libraries/componentview/services/application/Logger;

    .line 67
    iput-object p3, p0, Lcom/google/android/libraries/componentview/internal/L;->d:Landroid/content/Context;

    .line 68
    return-void
.end method
