.class public Lgyt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/feedback/FeedbackOptions;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/feedback/FeedbackOptions;)V
    .locals 0

    .prologue
    .line 2162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2163
    iput-object p1, p0, Lgyt;->a:Lcom/google/android/gms/feedback/FeedbackOptions;

    .line 2164
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lgyt;->a:Lcom/google/android/gms/feedback/FeedbackOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/feedback/FeedbackOptions;->g()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    .prologue
    .line 2208
    iget-object v0, p0, Lgyt;->a:Lcom/google/android/gms/feedback/FeedbackOptions;

    return-object v0
.end method
