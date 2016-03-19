.class public Lcom/google/android/apps/hangouts/phone/BusinessHelpAndFeedbackActivity;
.super Lcom/google/android/apps/hangouts/phone/HelpAndFeedbackActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/HelpAndFeedbackActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    const-string v0, "https://support.google.com/business/?hl=%locale%"

    const-string v1, "hangouts_business"

    invoke-static {v0, v1}, Laal;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
