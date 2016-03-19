.class public Ldpm;
.super Ldor;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Lczb;

.field public final b:I

.field public final j:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2104
    invoke-direct {p0, p1}, Ldor;-><init>(Ljava/lang/String;)V

    .line 2105
    const/4 v0, 0x1

    iput v0, p0, Ldpm;->b:I

    .line 2106
    const/4 v0, 0x0

    iput-object v0, p0, Ldpm;->a:Lczb;

    .line 2107
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Ldpm;->j:[I

    .line 2108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[I)V
    .locals 1

    .prologue
    .line 2112
    invoke-direct {p0, p1}, Ldor;-><init>(Ljava/lang/String;)V

    .line 2113
    iput p2, p0, Ldpm;->b:I

    .line 2114
    const/4 v0, 0x0

    iput-object v0, p0, Ldpm;->a:Lczb;

    .line 2115
    iput-object p3, p0, Ldpm;->j:[I

    .line 2116
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2140
    const-string v0, "event_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 3

    .prologue
    .line 2121
    const-string v0, "Babel_RequestWriter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    const-string v0, "Babel_RequestWriter"

    const-string v1, "replyToInviteRequest build protobuf"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2124
    :cond_0
    new-instance v0, Lkdm;

    invoke-direct {v0}, Lkdm;-><init>()V

    .line 2125
    iget-object v1, p0, Ldpm;->h:Lfak;

    invoke-static {p1, p2, p3, v1}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v1

    iput-object v1, v0, Lkdm;->requestHeader:Lkdo;

    .line 2127
    iget v1, p0, Ldpm;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkdm;->c:Ljava/lang/Integer;

    .line 2128
    iget-object v1, p0, Ldpm;->c:Ljava/lang/String;

    invoke-static {v1}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v1

    iput-object v1, v0, Lkdm;->a:Ljxw;

    .line 2129
    iget-object v1, p0, Ldpm;->j:[I

    iget-object v2, p0, Ldpm;->j:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lkdm;->d:[I

    .line 2130
    return-object v0
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 2

    .prologue
    .line 2145
    invoke-super {p0, p1, p2}, Ldor;->a(Lbfd;Ldvn;)V

    .line 2147
    iget-boolean v0, p0, Ldpm;->d:Z

    if-nez v0, :cond_0

    .line 2148
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iget-object v1, p0, Ldpm;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(ILjava/lang/String;)V

    .line 2150
    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2135
    const-string v0, "conversations/replytoinvite"

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 2154
    const/4 v0, 0x4

    return v0
.end method
