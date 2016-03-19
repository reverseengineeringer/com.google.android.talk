.class public final Lcss;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string v1, "account_name"

    iget-object v2, p0, Lcss;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "effective_gaia_id"

    iget-object v2, p0, Lcss;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcss;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcss;->a:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcss;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcss;->b:Ljava/lang/String;

    .line 31
    return-object p0
.end method
