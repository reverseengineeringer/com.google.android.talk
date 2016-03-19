.class public Ldpp;
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
    .line 3843
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 3844
    iput-object p1, p0, Ldpp;->a:Ljava/lang/String;

    .line 3845
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 3

    .prologue
    .line 3853
    new-instance v0, Lkcp;

    invoke-direct {v0}, Lkcp;-><init>()V

    .line 3854
    iget-object v1, p0, Ldpp;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3855
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkcp;->a:Ljava/lang/Integer;

    .line 3856
    iget-object v1, p0, Ldpp;->a:Ljava/lang/String;

    iput-object v1, v0, Lkcp;->c:Ljava/lang/String;

    .line 3858
    :cond_0
    new-instance v1, Lkdy;

    invoke-direct {v1}, Lkdy;-><init>()V

    .line 3860
    iget-object v2, p0, Ldpp;->h:Lfak;

    invoke-static {p1, p2, p3, v2}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v2

    iput-object v2, v1, Lkdy;->requestHeader:Lkdo;

    .line 3862
    iput-object v0, v1, Lkdy;->a:Lkcp;

    .line 3863
    return-object v1
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 3869
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3874
    const-string v0, "devices/sendoffnetworkinvitation"

    return-object v0
.end method
