.class final Lelu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijg;


# instance fields
.field final synthetic a:Lelp;


# direct methods
.method constructor <init>(Lelp;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lelu;->a:Lelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lijc;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 487
    check-cast p2, Ljava/lang/Boolean;

    .line 1015
    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 488
    iget-object v3, p0, Lelu;->a:Lelp;

    .line 1051
    iget-object v3, v3, Lelp;->a:Leot;

    .line 488
    const-string v4, "use_local_apn_pref_key"

    invoke-interface {v3, v4, v2}, Leot;->a(Ljava/lang/String;Z)V

    .line 489
    iget-object v3, p0, Lelu;->a:Lelp;

    .line 2051
    iget-object v3, v3, Lelp;->context:Lill;

    .line 489
    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v3, v0}, Lenn;->a(Landroid/content/Context;Z)V

    .line 492
    iget-object v0, p0, Lelu;->a:Lelp;

    invoke-virtual {v0}, Lelp;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->finish()V

    .line 493
    return v1
.end method
