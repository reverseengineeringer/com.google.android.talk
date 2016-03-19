.class public Ldqt;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Ldnx;


# direct methods
.method private constructor <init>(Lmgl;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    .line 4819
    invoke-direct {p0}, Ldqf;-><init>()V

    .line 4820
    iget-object v1, p1, Lmgl;->a:Lmgm;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lmgl;->a:Lmgm;

    iget-object v1, v1, Lmgm;->a:Lmgk;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lmgl;->a:Lmgm;

    iget-object v1, v1, Lmgm;->a:Lmgk;

    iget-object v1, v1, Lmgk;->a:Lmgg;

    if-eqz v1, :cond_2

    .line 4823
    iget-object v1, p1, Lmgl;->a:Lmgm;

    iget-object v1, v1, Lmgm;->a:Lmgk;

    iget-object v1, v1, Lmgk;->a:Lmgg;

    iget-object v2, v1, Lmgg;->a:Ljava/lang/String;

    .line 4824
    :goto_0
    iget-object v1, p1, Lmgl;->b:Lmgg;

    if-eqz v1, :cond_3

    iget-object v0, p1, Lmgl;->b:Lmgg;

    iget-object v3, v0, Lmgg;->a:Ljava/lang/String;

    .line 4825
    :goto_1
    iget-object v0, p1, Lmgl;->c:Ljava/lang/Long;

    invoke-static {v0, v8, v9}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 4826
    cmp-long v0, v4, v8

    if-eqz v0, :cond_0

    .line 4828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v4, v0

    .line 4831
    :cond_0
    cmp-long v0, v4, v8

    if-eqz v0, :cond_1

    iget-object v0, p1, Lmgl;->d:Ljava/lang/Boolean;

    invoke-static {v0, v6}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    .line 4833
    :cond_1
    new-instance v1, Ldnx;

    invoke-direct/range {v1 .. v6}, Ldnx;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    iput-object v1, p0, Ldqt;->g:Ldnx;

    .line 4834
    return-void

    :cond_2
    move-object v2, v0

    .line 4823
    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 4824
    goto :goto_1
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4838
    if-eqz p0, :cond_0

    .line 4839
    new-instance v0, Lmgl;

    invoke-direct {v0}, Lmgl;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4840
    check-cast v0, Lmgl;

    .line 4841
    if-eqz v0, :cond_0

    .line 4842
    new-instance v1, Ldqt;

    invoke-direct {v1, v0}, Ldqt;-><init>(Lmgl;)V

    move-object v0, v1

    .line 4846
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public k()Ldnx;
    .locals 1

    .prologue
    .line 4850
    iget-object v0, p0, Ldqt;->g:Ldnx;

    return-object v0
.end method
