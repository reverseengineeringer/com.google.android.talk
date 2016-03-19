.class public Ldpd;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3974
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 3975
    const-class v1, Leot;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 3976
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Leot;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3977
    invoke-virtual {p1}, Lbfd;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpd;->a:Ljava/lang/String;

    .line 3983
    :goto_0
    iput-object p2, p0, Ldpd;->b:Ljava/lang/String;

    .line 3984
    return-void

    .line 3978
    :cond_0
    invoke-virtual {p1}, Lbfd;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3979
    invoke-virtual {p1}, Lbfd;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpd;->a:Ljava/lang/String;

    goto :goto_0

    .line 3981
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Ldpd;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 3

    .prologue
    .line 3993
    new-instance v0, Lkan;

    invoke-direct {v0}, Lkan;-><init>()V

    .line 3994
    iget-object v1, p0, Ldpd;->h:Lfak;

    invoke-static {p1, p2, p3, v1}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v1

    iput-object v1, v0, Lkan;->requestHeader:Lkdo;

    .line 3997
    new-instance v1, Llcf;

    invoke-direct {v1}, Llcf;-><init>()V

    iput-object v1, v0, Lkan;->a:Llcf;

    .line 3998
    iget-object v1, v0, Lkan;->a:Llcf;

    iget-object v2, p0, Ldpd;->a:Ljava/lang/String;

    iput-object v2, v1, Llcf;->a:Ljava/lang/String;

    .line 3999
    new-instance v1, Llcf;

    invoke-direct {v1}, Llcf;-><init>()V

    iput-object v1, v0, Lkan;->b:Llcf;

    .line 4000
    iget-object v1, v0, Lkan;->a:Llcf;

    iget-object v2, p0, Ldpd;->b:Ljava/lang/String;

    iput-object v2, v1, Llcf;->a:Ljava/lang/String;

    .line 4002
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4007
    const-string v0, "conversations/getoffnetworkinviteurl"

    return-object v0
.end method
