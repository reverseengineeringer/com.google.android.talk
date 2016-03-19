.class public final Lelh;
.super Liiq;
.source "SourceFile"

# interfaces
.implements Lijx;


# instance fields
.field private final f:Lijw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Liiq;-><init>()V

    .line 21
    new-instance v0, Lijw;

    iget-object v1, p0, Lelh;->c:Linz;

    invoke-direct {v0, p0, v1}, Lijw;-><init>(Liiq;Liog;)V

    iput-object v0, p0, Lelh;->f:Lijw;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lelh;->f:Lijw;

    new-instance v1, Lelk;

    invoke-direct {v1}, Lelk;-><init>()V

    invoke-virtual {v0, v1}, Lijw;->a(Lav;)V

    .line 38
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lelh;->a:Lill;

    const-class v2, Lcom/google/android/apps/hangouts/settings/AccountSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    iget-object v1, p0, Lelh;->f:Lijw;

    new-instance v2, Licm;

    invoke-direct {v2}, Licm;-><init>()V

    .line 42
    invoke-virtual {v2}, Licm;->a()Licm;

    move-result-object v2

    .line 43
    invoke-virtual {v2, v0}, Licm;->a(Landroid/content/Intent;)Licm;

    move-result-object v0

    new-instance v2, Lhzs;

    invoke-direct {v2}, Lhzs;-><init>()V

    const-string v3, "logged_in"

    .line 46
    invoke-virtual {v2, v3}, Lhzs;->a(Ljava/lang/String;)Lhzs;

    move-result-object v2

    const-string v3, "sms_only"

    .line 47
    invoke-virtual {v2, v3}, Lhzs;->b(Ljava/lang/String;)Lhzs;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Licm;->a(Lhzq;)Licm;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Licm;->b()Lav;

    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Lijw;->a(Lav;)V

    .line 49
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 26
    invoke-super {p0, p1}, Liiq;->a(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lelh;->b:Lilh;

    const-class v1, Lika;

    iget-object v2, p0, Lelh;->f:Lijw;

    invoke-virtual {v0, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 28
    return-void
.end method
