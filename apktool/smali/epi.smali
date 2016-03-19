.class public final Lepi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V
    .locals 0

    .prologue
    .line 6225
    iput-object p1, p0, Lepi;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 3233
    iget-object v0, p0, Lepi;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 4139
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    .line 3233
    if-eqz v0, :cond_0

    .line 3234
    iget-object v0, p0, Lepi;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 5139
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    .line 3234
    const/4 v1, 0x0

    iget-object v2, p0, Lepi;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 6139
    iget-boolean v2, v2, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->n:Z

    .line 3234
    invoke-interface {v0, v1, v2}, Lbwp;->a(FZ)V

    .line 3236
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/libraries/quantum/snackbar/Snackbar;)V
    .locals 3

    .prologue
    .line 1228
    iget-object v0, p0, Lepi;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 2139
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->q:Lbwp;

    .line 1228
    invoke-virtual {p1}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lepi;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 3139
    iget-boolean v2, v2, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->n:Z

    .line 1228
    invoke-interface {v0, v1, v2}, Lbwp;->a(FZ)V

    .line 1229
    return-void
.end method
