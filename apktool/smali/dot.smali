.class public Ldot;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 2164
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 2165
    iput p1, p0, Ldot;->a:I

    .line 2166
    const-string v0, "Babel_RequestWriter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2167
    const-string v0, "Babel_RequestWriter"

    const-string v1, "declineAllInvitesRequest constructor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2169
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2196
    const-string v0, "event_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 2174
    const-string v0, "Babel_RequestWriter"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2175
    const-string v0, "Babel_RequestWriter"

    const-string v2, "declineAllInvitesRequest build protobuf"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2177
    :cond_0
    new-instance v6, Ljyh;

    invoke-direct {v6}, Ljyh;-><init>()V

    .line 2178
    const/4 v0, 0x0

    iget-object v5, p0, Ldot;->h:Lfak;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Ldon;->a(Ljxk;ZLjava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v6, Ljyh;->requestHeader:Lkdo;

    .line 2181
    new-instance v0, Ljyi;

    invoke-direct {v0}, Ljyi;-><init>()V

    .line 2182
    iget v2, p0, Ldot;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Ljyi;->b:Ljava/lang/Integer;

    .line 2183
    new-array v1, v1, [Ljyi;

    iput-object v1, v6, Ljyh;->a:[Ljyi;

    .line 2184
    iget-object v1, v6, Ljyh;->a:[Ljyi;

    aput-object v0, v1, v7

    .line 2186
    return-object v6
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 0

    .prologue
    .line 2201
    invoke-super {p0, p1, p2}, Ldpf;->a(Lbfd;Ldvn;)V

    .line 2202
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2191
    const-string v0, "conversations/declineallinvites"

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 2206
    const/4 v0, 0x4

    return v0
.end method
