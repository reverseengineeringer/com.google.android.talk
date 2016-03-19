.class public Ldqh;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lmgl;)V
    .locals 1

    .prologue
    .line 4860
    invoke-direct {p0}, Ldqf;-><init>()V

    .line 4861
    if-eqz p1, :cond_0

    iget-object v0, p1, Lmgl;->b:Lmgg;

    if-eqz v0, :cond_0

    .line 4862
    iget-object v0, p1, Lmgl;->b:Lmgg;

    iget-object v0, v0, Lmgg;->a:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Ldqh;->g:Ljava/lang/String;

    .line 4863
    return-void

    .line 4862
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4867
    if-eqz p0, :cond_0

    .line 4868
    new-instance v0, Lmgq;

    invoke-direct {v0}, Lmgq;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4868
    check-cast v0, Lmgq;

    .line 4870
    if-eqz v0, :cond_0

    .line 4871
    new-instance v1, Ldqh;

    iget-object v0, v0, Lmgq;->a:Lmgl;

    invoke-direct {v1, v0}, Ldqh;-><init>(Lmgl;)V

    move-object v0, v1

    .line 4875
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4879
    iget-object v0, p0, Ldqh;->g:Ljava/lang/String;

    return-object v0
.end method
