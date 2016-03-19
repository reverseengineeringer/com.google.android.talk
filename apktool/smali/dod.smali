.class public Ldod;
.super Ldnz;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ldnz;-><init>()V

    .line 146
    iput-object p1, p0, Ldod;->a:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lkhe;

    invoke-direct {v0}, Lkhe;-><init>()V

    .line 153
    const-string v1, "conversation"

    iput-object v1, v0, Lkhe;->a:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Ldod;->a:Ljava/lang/String;

    iput-object v1, v0, Lkhe;->b:Ljava/lang/String;

    .line 156
    new-instance v1, Lkhz;

    invoke-direct {v1}, Lkhz;-><init>()V

    .line 157
    iget-object v2, p0, Ldod;->h:Lfak;

    invoke-static {p1, p2, p3, v2}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v2

    iput-object v2, v1, Lkhz;->requestHeader:Lkdo;

    .line 159
    iput-object v0, v1, Lkhz;->a:Lkhe;

    .line 160
    return-object v1
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ldod;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i(Lbfd;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 172
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "hangouts/resolve"

    return-object v0
.end method
