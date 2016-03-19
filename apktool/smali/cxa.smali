.class public final Lcxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/notifications/DndDialogActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/notifications/DndDialogActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcxa;->a:Lcom/google/android/apps/hangouts/notifications/DndDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcxa;->a:Lcom/google/android/apps/hangouts/notifications/DndDialogActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/notifications/DndDialogActivity;->finish()V

    .line 59
    return-void
.end method
