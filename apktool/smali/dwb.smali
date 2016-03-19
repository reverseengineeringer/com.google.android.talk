.class public final Ldwb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lihb;

.field private e:Lbfw;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Ldwb;->h:I

    .line 31
    iput-object p1, p0, Ldwb;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldwb;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const-string v1, "op"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v1, "account_id"

    iget v2, p0, Ldwb;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string v1, "conversation_name"

    iget-object v2, p0, Ldwb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "audience"

    iget-object v2, p0, Ldwb;->d:Lihb;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    const-string v1, "conversation_lookup"

    iget-object v2, p0, Ldwb;->e:Lbfw;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    const-string v1, "force_group"

    iget-boolean v2, p0, Ldwb;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    const-string v1, "transport_type"

    iget v2, p0, Ldwb;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    iget-boolean v1, p0, Ldwb;->f:Z

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "conversation_hangout"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    :cond_0
    const-string v1, "invite_token_url"

    iget-object v2, p0, Ldwb;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "opened_from_impression"

    iget v2, p0, Ldwb;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    return-object v0
.end method

.method public a(I)Ldwb;
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Ldwb;->b:I

    .line 37
    return-object p0
.end method

.method public a(Lbfw;)Ldwb;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Ldwb;->e:Lbfw;

    .line 56
    return-object p0
.end method

.method public a(Lihb;)Ldwb;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Ldwb;->d:Lihb;

    .line 49
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ldwb;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Ldwb;->i:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public a(Z)Ldwb;
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Ldwb;->f:Z

    .line 62
    return-object p0
.end method

.method public b(I)Ldwb;
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Ldwb;->h:I

    .line 74
    return-object p0
.end method

.method public b(Z)Ldwb;
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Ldwb;->g:Z

    .line 68
    return-object p0
.end method

.method public c(I)Ldwb;
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Ldwb;->j:I

    .line 87
    return-object p0
.end method
