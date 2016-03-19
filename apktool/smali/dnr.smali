.class public Ldnr;
.super Ldnh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ldnh;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "ui_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 4

    .prologue
    const/16 v3, 0x32

    .line 205
    new-instance v0, Lizc;

    invoke-direct {v0}, Lizc;-><init>()V

    .line 206
    new-instance v1, Liyz;

    invoke-direct {v1}, Liyz;-><init>()V

    .line 207
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Liyz;->e:Ljava/lang/Integer;

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Liyz;->f:Ljava/lang/Integer;

    .line 209
    iput-object v1, v0, Lizc;->a:Liyz;

    .line 211
    new-instance v1, Liyt;

    invoke-direct {v1}, Liyt;-><init>()V

    .line 213
    iput-object v0, v1, Liyt;->a:Lizc;

    .line 214
    return-object v1
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 4

    .prologue
    .line 224
    const-string v1, "Babel"

    const-string v2, "SetChatAclsHappyStateRequest failed for "

    .line 225
    invoke-virtual {p1}, Lbfd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    invoke-static {v1, v0, p2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const-string v0, "setchatacls"

    return-object v0
.end method
