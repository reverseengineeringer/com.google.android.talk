.class public Ldnj;
.super Ldnh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ldnh;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "ui_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lizb;

    invoke-direct {v0}, Lizb;-><init>()V

    .line 88
    new-instance v1, Liyh;

    invoke-direct {v1}, Liyh;-><init>()V

    .line 90
    iput-object v0, v1, Liyh;->a:Lizb;

    .line 91
    return-object v1
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 4

    .prologue
    .line 101
    const-string v1, "Babel"

    const-string v2, "GetChatAclSettingsOperation failed for "

    .line 102
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

    .line 101
    :goto_0
    invoke-static {v1, v0, p2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "getchatacls"

    return-object v0
.end method
