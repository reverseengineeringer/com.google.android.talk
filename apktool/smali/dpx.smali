.class public Ldpx;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3731
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 3732
    iput-object p1, p0, Ldpx;->a:Ljava/lang/String;

    .line 3733
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 3

    .prologue
    .line 3741
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    .line 3742
    iget-object v1, p0, Ldpx;->a:Ljava/lang/String;

    iput-object v1, v0, Llcf;->a:Ljava/lang/String;

    .line 3744
    new-instance v1, Lkew;

    invoke-direct {v1}, Lkew;-><init>()V

    .line 3746
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lkew;->b:Ljava/lang/Integer;

    .line 3748
    iput-object v0, v1, Lkew;->a:Llcf;

    .line 3749
    return-object v1
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 3

    .prologue
    .line 3761
    const/16 v0, 0x801

    invoke-static {p1, v0}, Laal;->a(Lbfd;I)V

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 3764
    const-class v1, Ldjw;

    .line 3763
    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjw;

    .line 3765
    if-eqz v0, :cond_0

    .line 3766
    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldjw;->a(IZ)V

    .line 3768
    :cond_0
    return-void
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 3756
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3772
    const-string v0, "devices/startphonenumberverification"

    return-object v0
.end method
