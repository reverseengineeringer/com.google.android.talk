.class Lcom/google/android/talk/FeatureManager$SetFeaturesTask$1;
.super Ljava/lang/Object;
.source "FeatureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/FeatureManager$SetFeaturesTask;


# direct methods
.method constructor <init>(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$1;->this$0:Lcom/google/android/talk/FeatureManager$SetFeaturesTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$1;->this$0:Lcom/google/android/talk/FeatureManager$SetFeaturesTask;

    invoke-virtual {v0}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->doInBackground()V

    .line 231
    return-void
.end method
