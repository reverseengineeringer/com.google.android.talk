.class Lgwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgwc;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)Lgwd;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-static {p1, p2}, Lgan;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    sget-object v1, Lgan;->b:Lgap;

    .line 2000
    const-string v1, "Context must not be null."

    invoke-static {p1, v1}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Intent must not be null."

    invoke-static {p2, v1}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lgap;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    :goto_0
    new-instance v1, Lgwd;

    invoke-virtual {v0}, Lcom/google/android/gms/identity/accounts/api/AccountData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/identity/accounts/api/AccountData;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgwd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 24
    :cond_0
    return-object v0

    .line 2000
    :cond_1
    const-string v0, "com.google.android.gms.accounts.ACCOUNT_DATA"

    sget-object v1, Lcom/google/android/gms/identity/accounts/api/AccountData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0, v1}, Laal;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/identity/accounts/api/AccountData;

    goto :goto_0
.end method
