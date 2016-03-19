.class public Lcom/google/android/apps/hangouts/help/impl/OpenSourceLicensesActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    sget v0, Laal;->ml:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/help/impl/OpenSourceLicensesActivity;->setContentView(I)V

    .line 17
    sget v0, Laal;->mk:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/help/impl/OpenSourceLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 18
    const-string v1, "file:///android_asset/licenses.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 22
    return-void
.end method
