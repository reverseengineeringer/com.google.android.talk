.class public final Lcga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcga;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcga;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    .line 1035
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->a:Lchu;

    .line 156
    invoke-virtual {v0}, Lchu;->n()V

    .line 157
    iget-object v0, p0, Lcga;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcga;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    .line 2035
    iget-object v2, v2, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->a:Lchu;

    .line 160
    iget-object v3, p0, Lcga;->a:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    invoke-virtual {v3}, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lchu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v0, v1, v2}, Lezc;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method
