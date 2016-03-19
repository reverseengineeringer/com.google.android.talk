.class public final Lcdx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;I)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcdx;->b:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    iput p2, p0, Lcdx;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iget v0, p0, Lcdx;->a:I

    iget-object v1, p0, Lcdx;->b:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    .line 1037
    iget v1, v1, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->b:I

    .line 214
    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcdx;->b:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v0

    .line 1134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 216
    iget-object v0, p0, Lcdx;->b:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 217
    iget-object v0, p0, Lcdx;->b:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    .line 2037
    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 218
    iget-object v0, p0, Lcdx;->b:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    .line 3037
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a()V

    .line 220
    :cond_0
    return-void
.end method
