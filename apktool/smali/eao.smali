.class public final Leao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;)V
    .locals 0

    .prologue
    .line 2331
    iput-object p1, p0, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1335
    iget-object v0, p0, Leao;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;

    .line 2292
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity$RecordingService;->a:Landroid/os/Handler;

    .line 1335
    new-instance v1, Ldfm;

    invoke-direct {v1, p0, p1}, Ldfm;-><init>(Leao;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1360
    return-void
.end method
