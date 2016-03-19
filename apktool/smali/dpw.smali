.class public Ldpw;
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
    .line 3595
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 3596
    iput-object p1, p0, Ldpw;->a:Ljava/lang/String;

    .line 3597
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3632
    const-string v0, "ui_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4205
    sget-boolean v0, Ldoo;->e:Z

    .line 3601
    if-eqz v0, :cond_0

    .line 3602
    const-string v0, "SetStatusMessageRequest.buildProtobuf: statusMessage="

    iget-object v1, p0, Ldpw;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3605
    :cond_0
    :goto_0
    new-instance v0, Lkfd;

    invoke-direct {v0}, Lkfd;-><init>()V

    .line 3607
    iget-object v1, p0, Ldpw;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3608
    new-instance v1, Lmel;

    invoke-direct {v1}, Lmel;-><init>()V

    .line 3609
    iget-object v2, p0, Ldpw;->a:Ljava/lang/String;

    iput-object v2, v1, Lmel;->b:Ljava/lang/String;

    .line 3610
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lmel;->a:Ljava/lang/Integer;

    .line 3612
    new-instance v2, Ljxi;

    invoke-direct {v2}, Ljxi;-><init>()V

    .line 3613
    new-array v3, v5, [Lmel;

    aput-object v1, v3, v4

    iput-object v3, v2, Ljxi;->a:[Lmel;

    .line 3615
    new-array v1, v5, [Ljxi;

    aput-object v2, v1, v4

    iput-object v1, v0, Lkfd;->a:[Ljxi;

    .line 3618
    :cond_1
    new-instance v1, Lken;

    invoke-direct {v1}, Lken;-><init>()V

    .line 3619
    iput-object v0, v1, Lken;->f:Lkfd;

    .line 3620
    iget-object v0, p0, Ldpw;->h:Lfak;

    invoke-static {p1, p2, p3, v0}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v1, Lken;->requestHeader:Lkdo;

    .line 3622
    return-object v1

    .line 3602
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcwi;)Z
    .locals 2

    .prologue
    .line 3637
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3638
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 3643
    iget-object v0, p0, Ldpw;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3627
    const-string v0, "presence/setpresence"

    return-object v0
.end method
