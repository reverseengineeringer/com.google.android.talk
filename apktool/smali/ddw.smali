.class public final Lddw;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lddw;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1469
    iget-object v0, p0, Lddw;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 2139
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->A:Lilh;

    .line 1469
    const-class v1, Lbzz;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzz;

    invoke-interface {v0}, Lbzz;->b()V

    .line 1470
    const/4 v0, 0x0

    .line 466
    return-object v0
.end method
