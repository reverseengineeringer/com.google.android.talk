.class public final Lcdy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcdy;->a:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcdy;->a:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    .line 1037
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->b(Z)V

    .line 274
    iget-object v0, p0, Lcdy;->a:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    iget-object v1, p0, Lcdy;->a:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    .line 2037
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->c:Ljava/lang/CharSequence;

    .line 274
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcdy;->a:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    iget-object v1, p0, Lcdy;->a:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    .line 3037
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a:Landroid/view/accessibility/AccessibilityManager;

    .line 276
    iget-object v2, p0, Lcdy;->a:Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;

    .line 4037
    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->c:Ljava/lang/CharSequence;

    .line 275
    invoke-static {v0, v1, v2}, Lezc;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;)V

    .line 277
    return-void
.end method
