.class public final Ldib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Ldib;->a:Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Ldib;->a:Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;

    .line 1033
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;->o:Lbfd;

    .line 87
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iget-object v1, p0, Ldib;->a:Lcom/google/android/apps/hangouts/phone/GoogleVoiceTermsOfServiceActivity;

    new-instance v2, Ldic;

    invoke-direct {v2, p0}, Ldic;-><init>(Ldib;)V

    .line 1235
    new-instance v3, Ldxs;

    invoke-direct {v3, v1, v0, v2}, Ldxs;-><init>(Landroid/content/Context;ILdxv;)V

    new-instance v0, Lbyk;

    .line 1237
    invoke-virtual {v1}, Lba;->C_()Lbg;

    move-result-object v1

    invoke-direct {v0, v1}, Lbyk;-><init>(Lbg;)V

    .line 1235
    invoke-static {v3, v0}, Lbyi;->a(Lbyn;Lbym;)Lbyi;

    move-result-object v0

    .line 1237
    invoke-virtual {v0}, Lbyi;->a()V

    .line 111
    return-void
.end method
